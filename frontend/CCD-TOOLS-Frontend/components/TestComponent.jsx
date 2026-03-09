"use client"

import React from 'react'
import axios from "axios";
import { useState, useRef } from "react";
import { saveAs } from 'file-saver';
import XMLViewer from 'react-xml-viewer'
import { HL7TreeView } from './HL7TreeView'
// import Dropdown from 'react-bootstrap/Dropdown';
// import DropdownButton from 'react-bootstrap/DropdownButton';
import { hl7Samples } from '@/constants/hl7Samples';
import './index.css';

const ex = "<note><to>Tove</to><from>Jani</from><heading>Reminder</heading><body>Don't forget me this weekend!</body></note>"

const TestComponent = ({ options, url, labels, largeInput, baseUrl = "http://localhost:3000", type, hl7ToAllUrl }) => {
    const [inputOne, setInputOne] = useState('')
    const [texAreaOne, setTexAreaOne] = useState('')
    const [texAreaTwo, setTexAreaTwo] = useState('')
    const [viewer, setViewer] = useState(false)
    const [viewerTwo, setViewerTwo] = useState(false)
    const [loaderOne, setLoaderOne] = useState(false)
    const [loaderTwo, setLoaderTwo] = useState(false)
    const [searchOne, setSearchOne] = useState('')
    const [searchTwo, setSearchTwo] = useState('')
    const [selectedHl7Sample, setSelectedHl7Sample] = useState(hl7Samples[0]?.value ?? '')
    const [hl7TransformType, setHl7TransformType] = useState('sda') // 'sda' | 'sdaAndCcd'
    const [parsedSdaContent, setParsedSdaContent] = useState(null)
    const [parsedCcdContent, setParsedCcdContent] = useState(null)
    const [hl7OutputActive, setHl7OutputActive] = useState('sda') // 'sda' | 'ccd' when showing SDA+CCD output
    const inputRef = useRef(null)
    const inputTextareaRef = useRef(null)
    const outputTextareaRef = useRef(null)

    /** Parse hl7toall response: extract CDATA from <SDAContent> and <CCDContent>. */
    const parseHl7ToAllResponse = (raw) => {
        const sdaMatch = raw.match(/<SDAContent>\s*<!\[CDATA\[([\s\S]*?)\]\]>\s*<\/SDAContent>/)
        const ccdMatch = raw.match(/<CCDContent>\s*<!\[CDATA\[([\s\S]*?)\]\]>\s*<\/CCDContent>/)
        return {
            sda: sdaMatch ? sdaMatch[1].trim() : null,
            ccd: ccdMatch ? ccdMatch[1].trim() : null,
        }
    }

    const postReqest = async () => {
        if (inputOne === '' || texAreaOne === '') {
            setTexAreaTwo("Please make sure both inputs are filled before clicking submit.")
            return
        }

        //console.log("Starting post request v5:03pm");
        
        const formdata = new FormData();
        
        let data = inputOne

        if (labels.pageTitle === "CCDA to SDA Transforms Tester") {
            data = `{"TransformName": "${inputOne}"}`
        } else if (labels.pageTitle === "XPath Evaluator") {
            data = `{"XPathForEval": "${inputOne}"}`
        } 
        else if (labels.pageTitle === "XSL Template Tester") {
            data = `${inputOne}`
        }
        else if (labels.pageTitle === "FHIR to SDA Transforms Tester") {
            data = `{"TransformName": "${inputOne}"}`
        }
        else if (labels.pageTitle === "SDA to FHIR Transforms Tester") {
            data = `{"TransformName": "${inputOne}"}`
        }
        else if (labels.pageTitle === "HL7 to SDA Transforms Tester") {
            data = `{"TransformName": "${inputOne}"}`
        }

        formdata.append("CONTENT1", data);
        formdata.append("CONTENT2", texAreaOne)

        const requestOptions = {
          method: "POST",
          body: formdata,
          redirect: "follow",
          headers: {
            'x-debug': 'true'
          }
        };

        // For HL7 page with SDA + CCD use hl7ToAllUrl when provided; otherwise use url
        const effectiveUrl = (labels.pageTitle === "HL7 to SDA Transforms Tester" && hl7TransformType === 'sdaAndCcd' && hl7ToAllUrl) ? hl7ToAllUrl : url;

        // Remove any duplicate path segments and ensure trailing slash
        const cleanUrl = effectiveUrl.replace(/^\/csp\/visualizer\/service\//, '').replace(/\/$/, '');

        //For live use, uncomment the following line. 3-3-26 **********
        const fullUrl = `/csp/visualizer/service/${cleanUrl}/`;

        //For testing purposes, to request from port 62900 instead of 3000. COMMENT OUT FOR LIVE USE. 3-3-26 **********
        //const fullUrl = `http://localhost:62900/csp/visualizer/service/${cleanUrl}/`;
        
        // console.log("Request Details:");
        // console.log("Original URL:", url);
        // console.log("Clean URL:", cleanUrl);
        // console.log("Full URL:", fullUrl);
        // console.log("Request Options:", {
        //     method: requestOptions.method,
        //     headers: requestOptions.headers,
        //     body: formdata
        // });

        try {
            const response = await fetch(fullUrl, requestOptions);
            // console.log('Response Details:');
            // console.log('Status:', response.status);
            // console.log('Status Text:', response.statusText);
            // console.log('Headers:', Object.fromEntries(response.headers.entries()));
            
            const result = await response.text();
            // console.log('Response Body:', result);

            if (result === '[]') {
                setTexAreaTwo('No result found.')
                setParsedSdaContent(null)
                setParsedCcdContent(null)
            } else {
                setTexAreaTwo(result)
                if (labels.pageTitle === 'HL7 to SDA Transforms Tester' && hl7TransformType === 'sdaAndCcd') {
                    const { sda, ccd } = parseHl7ToAllResponse(result)
                    if (sda != null || ccd != null) {
                        setParsedSdaContent(sda)
                        setParsedCcdContent(ccd)
                        setHl7OutputActive('sda')
                    } else {
                        setParsedSdaContent(null)
                        setParsedCcdContent(null)
                    }
                } else {
                    setParsedSdaContent(null)
                    setParsedCcdContent(null)
                }
            }
        } catch (error) {
            console.error('Fetch error:', error);
            console.error('Error details:', {
                name: error.name,
                message: error.message,
                stack: error.stack
            });
            setTexAreaTwo('Error occurred while processing request. Check console for details.');
        }
    }

    const fileUploadAction = () => {
        inputRef.current.click()
    }

    const handleFile = async (e) => {
        const file = e?.target?.files?.[0]
        if (!file) return
        const text = await file.text()
        setTexAreaOne(text)
    }

    const download = () => {
        const timestamp = new Date().toISOString().replace(/[:.]/g, '-');
        const pageTitle = labels.pageTitle.replace(/\s+/g, '_');
        const filename = `${pageTitle}_${timestamp}.txt`;
        const blob = new Blob([getOutputDisplayValue()], { type: 'plain/text' });
        saveAs(blob, filename);
    }

    const clear = () => {
        setTexAreaOne('')
        setTexAreaTwo('')
        setParsedSdaContent(null)
        setParsedCcdContent(null)
    }

    const getOutputDisplayValue = () =>
        (labels.pageTitle === 'HL7 to SDA Transforms Tester' && hl7TransformType === 'sdaAndCcd' && (parsedSdaContent != null || parsedCcdContent != null))
            ? (hl7OutputActive === 'sda' ? (parsedSdaContent ?? '') : (parsedCcdContent ?? ''))
            : texAreaTwo

    const copy = () => {
        navigator.clipboard.writeText(getOutputDisplayValue())
    }

    const load = (opt) => {

        if ((texAreaOne === '' && opt === 1) || (texAreaTwo === '' && opt === 2)) {
            return
        }

        if (opt === 1) {
            setLoaderOne(true)
        } else if (opt === 2) {
            setLoaderTwo(true)
        }
        
        setTimeout(() => {
            if (opt === 1) {
                setLoaderOne(false)
                setViewer(!viewer)
            } else if (opt === 2) {
                setLoaderTwo(false)
                setViewerTwo(!viewerTwo)
            }
        }, 2000);
    }

    const findInTextarea = (which, direction, outputContent) => {
        const isInput = which === 1
        const ref = isInput ? inputTextareaRef : outputTextareaRef
        const content = isInput ? texAreaOne : (outputContent !== undefined ? outputContent : texAreaTwo)
        const term = (isInput ? searchOne : searchTwo).trim()
        if (!ref.current || !term) return
        const text = content
        const len = term.length
        if (!len) return
        const fromNext = ref.current.selectionEnd
        const fromPrev = ref.current.selectionStart - 1
        let idx = direction === 'next'
            ? text.indexOf(term, fromNext)
            : text.lastIndexOf(term, fromPrev)
        if (direction === 'next' && idx < 0) idx = text.indexOf(term, 0)
        if (direction === 'prev' && idx < 0) idx = text.lastIndexOf(term, text.length)
        if (idx < 0) return
        ref.current.setSelectionRange(idx, idx + len)
        ref.current.focus()
        ref.current.scrollTop = ref.current.scrollHeight * (idx / text.length) - ref.current.clientHeight / 2
    }


    const outputDisplayValue = getOutputDisplayValue()
    const showHl7OutputPills = labels.pageTitle === 'HL7 to SDA Transforms Tester' && hl7TransformType === 'sdaAndCcd' && (parsedSdaContent != null || parsedCcdContent != null)

  return (
    <div className='comp m-5'>
        <div className='m-5 '>

            <div className='m-5 comp-input flex justify-between bg-white dark:bg-gray-800 rounded-lg border border-gray-200 dark:border-gray-700 shadow-lg'>
                <h2 className='subTitle labelOne text-gray-900 dark:text-white'>{labels.inputLabelOne}</h2>
                {
                    largeInput ? (
                        <>
                        <textarea rows={5} className='border w-full h-full dark:bg-gray-700 text-gray-900 dark:text-white' placeholder={labels.exInputLabelOne} defaultValue={inputOne} onChange={(e) => setInputOne(e.target.value)} />
                        {/* <DropdownButton id="dropdown-basic-button" title="Dropdown button">
                            <Dropdown.Item href="#/action-1">Action</Dropdown.Item>
                            <Dropdown.Item href="#/action-2">Another action</Dropdown.Item>
                            <Dropdown.Item href="#/action-3">Something else</Dropdown.Item>
                        </DropdownButton> */}
                        </>
                    ) : (
                        <>
                            <input className='border w-4/5 h-8 bg-white dark:bg-gray-700 text-gray-900 dark:text-white rounded-lg p-2' type="text" name="option" list="options" placeholder={labels.exInputLabelOne} onChange={(e) => setInputOne(e.target.value)} />
                            <datalist id="options">
                                {
                                    options && options.map((item) => (
                                        <option key={item.value} value={item.value}>{item.desc}</option>
                                    ))
                                }
                            </datalist>
                        </>
                    )
                }
            </div>

            {(labels.pageTitle === "HL7 to SDA Transforms Tester") && (
            <div className="m-5 flex flex-col bg-white dark:bg-gray-800 rounded-lg border border-gray-200 dark:border-gray-700 shadow-lg px-8 py-3 w-[70vw]">
                <div className="flex justify-around">
                    <div className="flex justify-between w-full items-center gap-4">
                        <h2 className="big-col subTitle text-gray-900 dark:text-white">Sample HL7 Loader</h2>
                        <div className="flex items-center gap-2 flex-1 max-w-2xl">
                            <select
                                value={selectedHl7Sample}
                                onChange={(e) => setSelectedHl7Sample(e.target.value)}
                                className="flex-1 min-w-0 text-sm px-2 py-1.5 border border-gray-200 dark:border-gray-600 rounded-lg bg-white dark:bg-gray-700 text-gray-900 dark:text-white"
                            >
                                {hl7Samples.map((sample) => (
                                    <option key={sample.value} value={sample.value}>{sample.label}</option>
                                ))}
                            </select>
                            <button
                                type="button"
                                onClick={() => {
                                    const sample = hl7Samples.find((s) => s.value === selectedHl7Sample)
                                    if (sample) setTexAreaOne(sample.message)
                                }}
                                className="bg-emerald-600 hover:bg-emerald-700 text-white text-sm px-3 py-1.5 rounded-lg transition-colors duration-200 shrink-0"
                            >
                                Load
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            )}
            <div className='m-5 flex flex-col justify-center bg-white dark:bg-gray-800 comp-area rounded-lg border border-gray-200 dark:border-gray-700 shadow-lg'>
                <div className='flex justify-around mb-4'>
                    <div className='flex justify-between w-full'>
                        <h2 className='big-col subTitle text-gray-900 dark:text-white'>{labels.inputLabelTwo}</h2>
                        <div className='flex'>
                            <input type="file" hidden ref={inputRef} onChange={handleFile} className="border bg-slate-600 z-40" />
                            <button onClick={() => clear()} className="bg-emerald-600 hover:bg-emerald-700 text-white text-xs px-2 py-0.5 rounded-md transition-colors duration-200 ml-2">
                              Clear
                            </button>
                            <button onClick={() => copy()} className="bg-emerald-600 hover:bg-emerald-700 text-white text-xs px-2 py-0.5 rounded-md transition-colors duration-200 ml-2">Copy</button>
                            <button onClick={() => fileUploadAction()} className="bg-emerald-600 hover:bg-emerald-700 text-white text-xs px-2 py-0.5 rounded-md transition-colors duration-200 ml-2">Import</button>
                            {(labels.pageTitle === "SDA to FHIR Transforms Tester" || labels.pageTitle === "CCDA to SDA Transforms Tester" || labels.pageTitle === "XSL Template Tester") && (
                            <button onClick={() => load(1)} className="bg-emerald-600 hover:bg-emerald-700 text-white text-xs px-2 py-0.5 rounded-md transition-colors duration-200 ml-2"> {viewer ? 'Raw View' : 'XML View'}</button>
                            )}
                            {(labels.pageTitle === "HL7 to SDA Transforms Tester") && (
                            <button onClick={() => load(1)} className="bg-emerald-600 hover:bg-emerald-700 text-white text-xs px-2 py-0.5 rounded-md transition-colors duration-200 ml-2">
                              {viewer ? 'Raw View' : 'Tree View'}
                            </button>
                            )}
                        </div>
                    </div>
                    <div className='w-3/12'></div>
                    <div className='flex justify-between w-full'>
                        <h2 className='big-col subTitle text-gray-900 dark:text-white'>{labels.outputLabel}</h2>
                        <div className='flex'>

                            <button onClick={() => clear()} className="bg-emerald-600 hover:bg-emerald-700 text-white text-xs px-2 py-0.5 rounded-md transition-colors duration-200 ml-2">
                              Clear
                            </button>
                            <button onClick={() => copy()} className="bg-emerald-600 hover:bg-emerald-700 text-white text-xs px-2 py-0.5 rounded-md transition-colors duration-200 ml-2">Copy</button>
                           
                            <button onClick={() => download()} className='bg-emerald-600 hover:bg-emerald-700 text-white text-xs px-4 py-2 rounded-lg transition-colors duration-200'>Export</button>
                            {!(labels.pageTitle === "FHIR to SDA Transforms Tester" || labels.pageTitle === "SDA to FHIR Transforms Tester") && (
                            <button onClick={() => load(2)} className='bg-emerald-600 hover:bg-emerald-700 text-white text-xs px-4 py-2 rounded-lg transition-colors duration-200 ml-2'>Viewer</button>
                            )}
                       
                        </div>
                    </div>
                </div>

                <div className="flex justify-around mb-2 gap-4">
                    <div className="big-col flex items-center gap-2 flex-1">
                        {!viewer && (
                            <>
                                <input
                                    type="text"
                                    placeholder="Find in input"
                                    className="flex-1 min-w-0 text-xs px-2 py-1 border border-gray-200 dark:border-gray-600 rounded bg-white dark:bg-gray-700 text-gray-900 dark:text-white"
                                    value={searchOne}
                                    onChange={(e) => setSearchOne(e.target.value)}
                                    onKeyDown={(e) => { if (e.key === 'Enter') findInTextarea(1, 'next') }}
                                />
                                <button type="button" onClick={() => findInTextarea(1, 'prev')} className="text-xs px-2 py-1 rounded border border-gray-200 dark:border-gray-600 bg-white dark:bg-gray-700 text-gray-700 dark:text-gray-300 shrink-0">Prev</button>
                                <button type="button" onClick={() => findInTextarea(1, 'next')} className="text-xs px-2 py-1 rounded border border-gray-200 dark:border-gray-600 bg-white dark:bg-gray-700 text-gray-700 dark:text-gray-300 shrink-0">Next</button>
                            </>
                        )}
                    </div>
                    <div className="col flex-shrink-0 w-8" />
                    <div className="big-col flex items-center gap-2 flex-1">
                        {!viewerTwo && (
                            <>
                                {showHl7OutputPills && (
                                    <div className="flex rounded-lg border border-gray-200 dark:border-gray-600 bg-gray-50 dark:bg-gray-800 p-0.5 shrink-0" role="group" aria-label="Output view">
                                        <button
                                            type="button"
                                            onClick={() => setHl7OutputActive('sda')}
                                            className={`px-2.5 py-1 text-xs font-medium rounded-md transition-colors ${
                                                hl7OutputActive === 'sda'
                                                    ? 'bg-emerald-600 text-white'
                                                    : 'text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-gray-200'
                                            }`}
                                        >
                                            SDA
                                        </button>
                                        <button
                                            type="button"
                                            onClick={() => setHl7OutputActive('ccd')}
                                            className={`px-2.5 py-1 text-xs font-medium rounded-md transition-colors ${
                                                hl7OutputActive === 'ccd'
                                                    ? 'bg-emerald-600 text-white'
                                                    : 'text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-gray-200'
                                            }`}
                                        >
                                            CCD
                                        </button>
                                    </div>
                                )}
                                <input
                                    type="text"
                                    placeholder="Find in output"
                                    className="flex-1 min-w-0 text-xs px-2 py-1 border border-gray-200 dark:border-gray-600 rounded bg-white dark:bg-gray-700 text-gray-900 dark:text-white"
                                    value={searchTwo}
                                    onChange={(e) => setSearchTwo(e.target.value)}
                                    onKeyDown={(e) => { if (e.key === 'Enter') findInTextarea(2, 'next', outputDisplayValue) }}
                                />
                                <button type="button" onClick={() => findInTextarea(2, 'prev', outputDisplayValue)} className="text-xs px-2 py-1 rounded border border-gray-200 dark:border-gray-600 bg-white dark:bg-gray-700 text-gray-700 dark:text-gray-300 shrink-0">Prev</button>
                                <button type="button" onClick={() => findInTextarea(2, 'next', outputDisplayValue)} className="text-xs px-2 py-1 rounded border border-gray-200 dark:border-gray-600 bg-white dark:bg-gray-700 text-gray-700 dark:text-gray-300 shrink-0">Next</button>
                            </>
                        )}
                    </div>
                </div>

                <div className='flex'>
                    <div className='big-col relative h-full'>
                        <div className='w-full xml1'>
                            {
                                loaderOne ?
                                    <div className='flex justify-center content-center align-middle h-64'>
                                        <div className='loader'></div>
                                    </div>
                                    :
                                    (
                                        viewer ? (
                                            labels.pageTitle === 'HL7 to SDA Transforms Tester'
                                                ? <HL7TreeView message={texAreaOne}  /> 
                                                : <div className='w-full xml2 bg-white dark:bg-gray-700 rounded-lg p-4'>   
                                                    <XMLViewer collapsible xml={texAreaOne} /> 
                                                  </div>
                                        ) : (
                                            <textarea ref={inputTextareaRef} rows={15} className='border w-full h-full p-2 bg-white dark:bg-gray-700 text-gray-900 dark:text-white rounded-lg' placeholder={labels.exInputLabelTwo} value={texAreaOne} onChange={(e) => setTexAreaOne(e.target.value)} />
                                        )
                                    )
                            }
                        </div>
                    </div>
                    <div className='col relative h-full flex justify-start'>
                        <div className={`btn h-full flex ${labels.pageTitle === 'HL7 to SDA Transforms Tester' ? 'flex-col items-center gap-3' : ''}`}>
                            {(labels.pageTitle === 'HL7 to SDA Transforms Tester') && (
                                <>
                                    <span className="text-xs text-gray-600 dark:text-gray-400 text-center">Choose transform type</span>
                                    <div className="flex rounded-lg border border-gray-200 dark:border-gray-600 bg-gray-50 dark:bg-gray-800 p-0.5" role="group" aria-label="Transform output type">
                                    <button
                                        type="button"
                                        onClick={() => setHl7TransformType('sda')}
                                        className={`px-3 py-1.5 text-xs font-medium rounded-md transition-colors ${
                                            hl7TransformType === 'sda'
                                                ? 'bg-emerald-600 text-white'
                                                : 'text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-gray-200'
                                        }`}
                                    >
                                        SDA only
                                    </button>
                                    <button
                                        type="button"
                                        onClick={() => setHl7TransformType('sdaAndCcd')}
                                        className={`px-3 py-1.5 text-xs font-medium rounded-md transition-colors ${
                                            hl7TransformType === 'sdaAndCcd'
                                                ? 'bg-emerald-600 text-white'
                                                : 'text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-gray-200'
                                        }`}
                                    >
                                        SDA + CCD
                                    </button>
                                </div>
                                </>
                            )}
                            <button onClick={() => postReqest()} className="bg-emerald-600 hover:bg-emerald-700 text-white px-4 py-2 rounded-lg transition-colors duration-200 h-8 flex items-center justify-center z-50 transformBtn">Submit</button>
                        </div>
                    </div>
                    <div className='big-col relative xml1 h-full'>
                    {
                                loaderTwo ?
                                    <div className='flex justify-center content-center align-middle h-64'>
                                        <div className='loader'></div>
                                    </div>
                                    :
                                    (
                                        viewerTwo ? 
                                            <div className='w-full xml2 bg-white dark:bg-gray-700 rounded-lg p-4'>   
                                                <XMLViewer collapsible xml={outputDisplayValue} />  
                                            </div>
                                                :
                                            <textarea ref={outputTextareaRef} readOnly className='border w-full h-full p-2 bg-white dark:bg-gray-700 text-gray-900 dark:text-white rounded-lg' placeholder={labels.exOutputLabel} value={outputDisplayValue} />
                                    )
                            }
                    </div>    
                </div>
            </div>
        </div>
    </div>

  )
}

export default TestComponent