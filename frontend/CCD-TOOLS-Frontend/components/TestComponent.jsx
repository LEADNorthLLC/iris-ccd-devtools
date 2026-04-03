"use client"

import React from 'react'
import { useState, useRef, useEffect, useMemo } from "react";
import { saveAs } from 'file-saver';
import JSZip from 'jszip';
import XMLViewer from 'react-xml-viewer'
import JsonView from '@uiw/react-json-view';
import XMLSearchableContainer from './XMLSearchableContainer'
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
    const [loaderOne, setLoaderOne] = useState(false)
    /** Output pane: plain text vs XML viewer vs JSON tree (HL7 ALL + FHIR pill only for json). */
    const [outputViewMode, setOutputViewMode] = useState('raw') // 'raw' | 'xml' | 'json'
    const [searchOne, setSearchOne] = useState('')
    const [searchTwo, setSearchTwo] = useState('')
    const [selectedHl7Sample, setSelectedHl7Sample] = useState(hl7Samples[0]?.value ?? '')
    const [hl7TransformType, setHl7TransformType] = useState('sda') // 'sda' | 'sdaAndCcd'
    const [parsedSdaContent, setParsedSdaContent] = useState(null)
    const [parsedCcdContent, setParsedCcdContent] = useState(null)
    const [parsedFhirContent, setParsedFhirContent] = useState(null)
    const [hl7OutputActive, setHl7OutputActive] = useState('sda') // 'sda' | 'ccd' | 'fhir' when showing SDA+CCD+FHIR output
    const inputRef = useRef(null)
    const inputTextareaRef = useRef(null)
    const outputTextareaRef = useRef(null)

    /** Parse hl7toall response: extract CDATA from <SDAContent> or <SDAContentXML>, <CCDContent>, and <FHIRContent>. */
    const parseHl7ToAllResponse = (raw) => {
        const sdaMatch =
            raw.match(/<SDAContent>\s*<!\[CDATA\[([\s\S]*?)\]\]>\s*<\/SDAContent>/)
            || raw.match(/<SDAContentXML>\s*<!\[CDATA\[([\s\S]*?)\]\]>\s*<\/SDAContentXML>/)
        const ccdMatch = raw.match(/<CCDContent>\s*<!\[CDATA\[([\s\S]*?)\]\]>\s*<\/CCDContent>/)
        const fhirMatch = raw.match(/<FHIRContent>\s*<!\[CDATA\[([\s\S]*?)\]\]>\s*<\/FHIRContent>/)
        return {
            sda: sdaMatch ? sdaMatch[1].trim() : null,
            ccd: ccdMatch ? ccdMatch[1].trim() : null,
            fhir: fhirMatch ? fhirMatch[1].trim() : null,
        }
    }

    const prettifyXMLTextResponse = (rawText) => {
        let text = String(rawText ?? '').trim()
        if (!text) return ''

        // If response wraps the payload in CDATA, show only the CDATA contents.
        const splits = text.split(new RegExp('(\<Container.*?\<\/Container\>)')).filter(function(x) { 
            return x !== undefined;
        })
        //console.log("splits:", splits)
        if(splits.length > 1) {
            text = splits[1].trim()
        }
        // const cdataMatch = text.match(new RegExp('/<!\[CDATA\[([\s\S]*?)\]\]>/', 'g'))
        // console.log("CDATA contents:", cdataMatch)
        // if (cdataMatch?.[1]) {
        //    text = cdataMatch[1].trim()
        // }

        // Pretty-print JSON payloads when possible.
        try {
            if (text.startsWith('{') || text.startsWith('[')) {
                return JSON.stringify(JSON.parse(text), null, 2)
            }
        } catch {
            // Fallback to XML/plain text formatting below.
        }

        // Add newlines/indentation for XML-like payloads.
        if (text.startsWith('<') && text.endsWith('>')) {
            const withBreaks = text.replace(/>\s*</g, '>\n<')
            const lines = withBreaks.split('\n')
            let indentLevel = 0
            return lines
                .map((line) => {
                    const trimmed = line.trim()
                    if (!trimmed) return ''

                    if (/^<\//.test(trimmed)) {
                        indentLevel = Math.max(indentLevel - 1, 0)
                    }

                    const indented = `${'  '.repeat(indentLevel)}${trimmed}`
                    const opens = (trimmed.match(/<[^/!?][^>]*>/g) || []).length
                    const closes = (trimmed.match(/<\/[^>]+>/g) || []).length
                    const selfClosing = (trimmed.match(/<[^>]+\/>/g) || []).length
                    const commentsOrDecl = /^<(\?|!)/.test(trimmed)

                    if (!commentsOrDecl && opens > closes + selfClosing) {
                        indentLevel += opens - closes - selfClosing
                    }

                    return indented
                })
                .join('\n')
                .trim()
        }

        return text
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
            const transformName = hl7TransformType === 'sdaAndCcd' ? 'HL7ToAll' : 'HL7ToSDA'
            data = `{"TransformName": "${transformName}"}`
        }

        formdata.append("CONTENT1", data);
        // HL7 endpoints expect CONTENT2 to be JSON of the shape:
        // {"HL7Content":"MSH|^~\\&|..."}
        // Also ensure MSH-2 includes the escape sequence for subcomponent (&): ^~\&
        if (labels.pageTitle === 'HL7 to SDA Transforms Tester') {
            const extractHl7Text = (value) => {
                const trimmed = String(value ?? '').trim()
                if (!trimmed) return ''
                if (!trimmed.startsWith('{')) return trimmed
                try {
                    const parsed = JSON.parse(trimmed)
                    if (typeof parsed?.HL7Content === 'string') return parsed.HL7Content
                    if (typeof parsed?.content === 'string') return parsed.content
                    if (typeof parsed?.message === 'string') return parsed.message
                    return trimmed
                } catch {
                    return trimmed
                }
            }

            const ensureMsh2HasEscapedAmpersand = (hl7Text) => {
                const desiredEncodingChars = '^~\\&' // JS string -> actual HL7 contains ^~\&
                const text = String(hl7Text ?? '')
                // Replace encoding chars field (MSH-2) so it always contains the required ^~\&
                return text.replace(/(^\s*MSH\|)([^|]*)(\|)/m, (_match, p1, _encoding, p3) => {
                    return `${p1}${desiredEncodingChars}${p3}`
                })
            }

            const rawHl7 = extractHl7Text(texAreaOne)
            const normalizedHl7 = ensureMsh2HasEscapedAmpersand(rawHl7)
            const content2 = JSON.stringify({ HL7Content: normalizedHl7 })
            formdata.append('CONTENT2', content2)
        } else {
            formdata.append("CONTENT2", texAreaOne)
        }

        const requestOptions = {
          method: "POST",
          body: formdata,
          redirect: "follow",
          headers: {
            'x-debug': 'true'
          }
        };

        // All transform types use the same base URL; HL7-to-ALL vs HL7-to-SDA
        // is controlled by CONTENT1.TransformName (HL7ToAll vs HL7ToSDA).
        const effectiveUrl = url;

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
            
            const rawResult = await response.text();
            // console.log('Response Body:', rawResult);

            if (rawResult === '[]') {
                setTexAreaTwo('No result found.')
                setParsedSdaContent(null)
                setParsedCcdContent(null)
                setParsedFhirContent(null)
            } else {
                let processedResult = rawResult
                let tempProcessedResult = null
                //If the labels.pageTitle is SDA to FHIR, then I need to grab the CDATA contents of the FHIRContentJSONString tag
                if(labels.pageTitle === 'SDA to FHIR Transforms Tester') {
                    const fhirContentJsonString = rawResult.match(/<FHIRContentJSONString>\s*<!\[CDATA\[([\s\S]*?)\]\]>\s*<\/FHIRContentJSONString>/)
                    if(fhirContentJsonString) {
                        processedResult = fhirContentJsonString[1].trim()
                    }
                }

                if(labels.pageTitle === 'XSL Template Tester') {
                    const xslContentString = rawResult.match(/<CCDContentXML>\s*<!\[CDATA\[([\s\S]*?)\]\]>\s*<\/CCDContentXML>/)
                    if(xslContentString) {
                        processedResult = xslContentString[1].trim()
                    }
                }

                if(labels.pageTitle === 'HL7 to SDA Transforms Tester') {
                    const xslContentString =
                        rawResult.match(/<SDAContent>\s*<!\[CDATA\[([\s\S]*?)\]\]>\s*<\/SDAContent>/)
                        || rawResult.match(/<SDAContentXML>\s*<!\[CDATA\[([\s\S]*?)\]\]>\s*<\/SDAContentXML>/)
                    if(xslContentString) {
                        tempProcessedResult = xslContentString[1].trim()
                    }
                 }

                let outputText = labels.pageTitle === 'FHIR to SDA Transforms Tester'
                    || labels.pageTitle === 'CCDA to SDA Transforms Tester'
                    || labels.pageTitle === 'HL7 to SDA Transforms Tester'
                    ? prettifyXMLTextResponse(processedResult)
                    : processedResult

                //We do not want to overwrite the processedResult with the tempProcessedResult if the user jumps back and selects sda, we want to keep the original processedResult.
                //Just grab the SDAContent block from the original processedResult.
                if (tempProcessedResult) {
                    outputText = tempProcessedResult
                }
                setTexAreaTwo(outputText)
                
                if (labels.pageTitle === 'HL7 to SDA Transforms Tester' && hl7TransformType === 'sdaAndCcd') {
                    const { sda, ccd, fhir } = parseHl7ToAllResponse(processedResult)
                    if (sda != null || ccd != null || fhir != null) {
                        setParsedSdaContent(sda)
                        setParsedCcdContent(ccd)
                        setParsedFhirContent(fhir)
                        setHl7OutputActive('sda')
                    } else {
                        setParsedSdaContent(null)
                        setParsedCcdContent(null)
                        setParsedFhirContent(null)
                    }

                } else {
                    setParsedSdaContent(null)
                    setParsedCcdContent(null)
                    setParsedFhirContent(null)
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

    const download = async () => {
        const timestamp = new Date().toISOString().replace(/[:.]/g, '-');
        const pageTitle = labels.pageTitle.replace(/\s+/g, '_');

        if (
            labels.pageTitle === 'HL7 to SDA Transforms Tester' &&
            hl7TransformType === 'sdaAndCcd' &&
            (parsedSdaContent != null || parsedCcdContent != null || parsedFhirContent != null)
        ) {
            const zip = new JSZip();

            if (parsedSdaContent != null) {
                zip.file(`${pageTitle}_${timestamp}_SDA.txt`, parsedSdaContent);
            }

            if (parsedCcdContent != null) {
                zip.file(`${pageTitle}_${timestamp}_CCD.txt`, parsedCcdContent);
            }

            if (parsedFhirContent != null) {
                zip.file(`${pageTitle}_${timestamp}_FHIR.txt`, parsedFhirContent);
            }

            const zipBlob = await zip.generateAsync({ type: 'blob' });
            const zipFilename = `${pageTitle}_${timestamp}_ALL.zip`;
            saveAs(zipBlob, zipFilename);
        } else {
            const filename = `${pageTitle}_${timestamp}.txt`;
            const blob = new Blob([getOutputDisplayValue()], { type: 'plain/text' });
            saveAs(blob, filename);
        }
    }

    const clear = () => {
        setTexAreaOne('')
        setTexAreaTwo('')
        setParsedSdaContent(null)
        setParsedCcdContent(null)
        setParsedFhirContent(null)
        setOutputViewMode('raw')
    }

    const getOutputDisplayValue = () =>
        (labels.pageTitle === 'HL7 to SDA Transforms Tester' && hl7TransformType === 'sdaAndCcd' && (parsedSdaContent != null || parsedCcdContent != null || parsedFhirContent != null))
            ? (
                hl7OutputActive === 'sda'
                    ? (parsedSdaContent ?? '')
                    : hl7OutputActive === 'ccd'
                        ? (parsedCcdContent ?? '')
                        : (parsedFhirContent ?? '')
            )
            : texAreaTwo

    const copy = () => {
        navigator.clipboard.writeText(getOutputDisplayValue())
    }

    const load = (opt) => {
        if (texAreaOne === '' && opt === 1) return

        if (opt === 1) {
            setLoaderOne(true)
            setTimeout(() => {
                setLoaderOne(false)
                setViewer(!viewer)
            }, 2000)
        }
    }

    useEffect(() => {
        setOutputViewMode('raw')
    }, [hl7OutputActive])

    useEffect(() => {
        if (hl7TransformType !== 'sdaAndCcd') {
            setOutputViewMode('raw')
            setHl7OutputActive('sda')
        }
    }, [hl7TransformType])

    /** When the server/config exposes exactly one transform, select it so the user does not have to. */
    useEffect(() => {
        if (!options || options.length !== 1) return
        const sole = options[0]?.value
        if (sole == null) return
        const trimmed = String(sole).trim()
        if (!trimmed) return
        setInputOne((prev) => (prev === '' ? trimmed : prev))
    }, [options])

    const findInTextarea = (which, direction, outputContent) => {
        const isInput = which === 1
        const ref = isInput ? inputTextareaRef : outputTextareaRef
        const content = isInput ? texAreaOne : (outputContent !== undefined ? outputContent : texAreaTwo)
        const term = (isInput ? searchOne : searchTwo).trim()
        if (!ref.current || !term) return
        const text = content
        const len = term.length
        if (!len) return
        const haystack = text.toLowerCase()
        const needle = term.toLowerCase()
        const fromNext = ref.current.selectionEnd
        const fromPrev = ref.current.selectionStart - 1
        let idx = direction === 'next'
            ? haystack.indexOf(needle, fromNext)
            : haystack.lastIndexOf(needle, fromPrev)
        if (direction === 'next' && idx < 0) idx = haystack.indexOf(needle, 0)
        if (direction === 'prev' && idx < 0) idx = haystack.lastIndexOf(needle, haystack.length)
        if (idx < 0) return
        ref.current.setSelectionRange(idx, idx + len)
        ref.current.focus()
        ref.current.scrollTop = ref.current.scrollHeight * (idx / text.length) - ref.current.clientHeight / 2
    }

    const outputDisplayValue = getOutputDisplayValue()
    const showHl7OutputPills = labels.pageTitle === 'HL7 to SDA Transforms Tester'
        && hl7TransformType === 'sdaAndCcd'
        && (parsedSdaContent != null || parsedCcdContent != null || parsedFhirContent != null)

    const hideOutputStructuring =
        labels.pageTitle === 'FHIR to SDA Transforms Tester'
        || labels.pageTitle === 'SDA to FHIR Transforms Tester'
        || labels.pageTitle === 'XPath Evaluator'

    const outputJsonTreeValue = useMemo(() => {
        const s = String(outputDisplayValue ?? '').trim()
        if (!s) return null
        try {
            return JSON.parse(s)
        } catch {
            return null
        }
    }, [outputDisplayValue])

    const outputLabelWithType =
        showHl7OutputPills
            ? `${labels.outputLabel} ${hl7OutputActive.toUpperCase()}`
            : labels.outputLabel

  return (
    <div className='comp m-5'>
        <div className='m-5 '>

            <div className='m-5 comp-input flex justify-between bg-white dark:bg-gray-800 rounded-lg border border-gray-200 dark:border-gray-700 shadow-lg'>
                <h2 className='subTitle labelOne text-gray-900 dark:text-white'>{labels.inputLabelOne}</h2>
                {
                    largeInput ? (
                        <>
                        <textarea rows={5} className='border w-full h-full dark:bg-gray-700 text-gray-900 dark:text-white' placeholder={labels.exInputLabelOne} value={inputOne} onChange={(e) => setInputOne(e.target.value)} />
                        {/* <DropdownButton id="dropdown-basic-button" title="Dropdown button">
                            <Dropdown.Item href="#/action-1">Action</Dropdown.Item>
                            <Dropdown.Item href="#/action-2">Another action</Dropdown.Item>
                            <Dropdown.Item href="#/action-3">Something else</Dropdown.Item>
                        </DropdownButton> */}
                        </>
                    ) : (
                        <>
                            <input className='border w-4/5 h-8 bg-white dark:bg-gray-700 text-gray-900 dark:text-white rounded-lg p-2' type="text" name="option" list="options" placeholder={labels.exInputLabelOne} value={inputOne} onChange={(e) => setInputOne(e.target.value)} />
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

            {/* {(labels.pageTitle === "HL7 to SDA Transforms Tester") && (
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
            )} */}
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
                            {(labels.pageTitle === "FHIR to SDA Transforms Tester" || labels.pageTitle === "SDA to FHIR Transforms Tester" || labels.pageTitle === "CCDA to SDA Transforms Tester" || labels.pageTitle === "XSL Template Tester") && (
                            <button onClick={() => load(1)} className="bg-emerald-600 hover:bg-emerald-700 text-white text-xs px-2 py-0.5 rounded-md transition-colors duration-200 ml-2"> {viewer ? 'Raw' : 'XML'}</button>
                            )}
                            {(labels.pageTitle === "HL7 to SDA Transforms Tester") && (
                            <button onClick={() => load(1)} className="bg-emerald-600 hover:bg-emerald-700 text-white text-xs px-2 py-0.5 rounded-md transition-colors duration-200 ml-2">
                              {viewer ? 'Raw' : 'Tree'}
                            </button>
                            )}
                        </div>
                    </div>
                    <div className='w-3/12'></div>
                    <div className='flex justify-between w-full'>
                        <h2 className='big-col subTitle text-gray-900 dark:text-white'>{outputLabelWithType}</h2>
                        <div className='flex'>

                            <button onClick={() => clear()} className="bg-emerald-600 hover:bg-emerald-700 text-white text-xs px-2 py-0.5 rounded-md transition-colors duration-200 ml-2">
                              Clear
                            </button>
                            <button onClick={() => copy()} className="bg-emerald-600 hover:bg-emerald-700 text-white text-xs px-2 py-0.5 rounded-md transition-colors duration-200 ml-2">Copy</button>
                            <button onClick={() => download()} className='bg-emerald-600 hover:bg-emerald-700 text-white text-xs px-2 py-0.5 rounded-md transition-colors duration-200 ml-2'>Export</button>
                            {!hideOutputStructuring && (showHl7OutputPills && hl7OutputActive === 'fhir' ? (
                            <button
                                type="button"
                                onClick={() => setOutputViewMode((m) => (m === 'json' ? 'raw' : 'json'))}
                                className='bg-emerald-600 hover:bg-emerald-700 text-white text-xs px-4 py-2 rounded-lg transition-colors duration-200 ml-2'
                            >
                                {outputViewMode === 'json' ? 'Raw' : 'JSON'}
                            </button>
                            ) : (
                            <button
                                type="button"
                                onClick={() => setOutputViewMode((m) => (m === 'xml' ? 'raw' : 'xml'))}
                                className='bg-emerald-600 hover:bg-emerald-700 text-white text-xs px-4 py-2 rounded-lg transition-colors duration-200 ml-2'
                            >
                                {outputViewMode === 'xml' ? 'Raw' : 'XML'}
                            </button>
                            ))}
                       
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
                    <div className="col flex-shrink-0 w-18" />
                    <div className="big-col flex items-center gap-2 flex-1">
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
                                        <button
                                            type="button"
                                            onClick={() => setHl7OutputActive('fhir')}
                                            disabled={outputViewMode === 'xml'}
                                            className={`px-2.5 py-1 text-xs font-medium rounded-md transition-colors ${
                                                hl7OutputActive === 'fhir'
                                                    ? 'bg-emerald-600 text-white'
                                                    : 'text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-gray-200'
                                            } ${outputViewMode === 'xml' ? 'opacity-50 cursor-not-allowed hover:text-gray-600 dark:hover:text-gray-400' : ''}`}
                                        >
                                            FHIR
                                        </button>
                                    </div>
                                )}
                               
                          
                        {outputViewMode === 'raw' && (
                            <>
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
                                                : <XMLSearchableContainer xmlData={texAreaOne} /> 
                                                  
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
                                    <span className="text-xs text-gray-600 dark:text-gray-400 text-center">Choose output type</span>
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
                                        SDA
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
                                        ALL
                                    </button>
                                </div>
                                </>
                            )}
                            <button onClick={() => postReqest()} className="bg-emerald-600 hover:bg-emerald-700 text-white px-4 py-2 rounded-lg transition-colors duration-200 h-8 flex items-center justify-center z-50 transformBtn">Submit</button>
                        </div>
                    </div>
                    <div className='big-col relative xml1 h-full'>
                        {outputViewMode === 'xml' ? (
                                            <div className='w-full xml2 bg-white dark:bg-gray-700 dark:border-white border rounded-lg p-4'>
                                                <XMLViewer collapsible xml={outputDisplayValue} />
                                            </div>
                        ) : outputViewMode === 'json' ? (
                                            <div className='w-full xml2 bg-white dark:bg-gray-700 dark:border-white border rounded-lg p-4'>
                                                {outputJsonTreeValue != null ? (
                                                <JsonView value={outputJsonTreeValue} />
                                                ) : (
                                                <p className="text-sm text-red-600 dark:text-red-400">Output is not valid JSON. Switch to Raw to inspect.</p>
                                                )}
                                            </div>
                        ) : (
                                            <textarea ref={outputTextareaRef} readOnly className='border w-full h-full p-2 bg-white dark:bg-gray-700 text-gray-900 dark:text-white rounded-lg' placeholder={labels.exOutputLabel} value={outputDisplayValue} />
                        )}
                    </div>
                </div>
            </div>
        </div>
    </div>

  )
}

export default TestComponent