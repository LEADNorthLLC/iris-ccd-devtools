"use client"

import React from 'react'
import axios from "axios";
import { useState, useRef } from "react";
import { saveAs } from 'file-saver';
import XMLViewer from 'react-xml-viewer'
import Dropdown from 'react-bootstrap/Dropdown';
import DropdownButton from 'react-bootstrap/DropdownButton';
import './index.css';

const ex = "<note><to>Tove</to><from>Jani</from><heading>Reminder</heading><body>Don't forget me this weekend!</body></note>"

const TestComponent = ({ options, url, labels, largeInput, baseUrl = "http://localhost:3000", type }) => {
    const [inputOne, setInputOne] = useState('')
    const [texAreaOne, setTexAreaOne] = useState('')
    const [texAreaTwo, setTexAreaTwo] = useState('')
    const [viewer, setViewer] = useState(false)
    const [viewerTwo, setViewerTwo] = useState(false)
    const [loaderOne, setLoaderOne] = useState(false)
    const [loaderTwo, setLoaderTwo] = useState(false)
    const inputRef = useRef(null);


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

        // Remove any duplicate path segments and ensure trailing slash
        const cleanUrl = url.replace(/^\/csp\/visualizer\/service\//, '').replace(/\/$/, '');
        const fullUrl = `/csp/visualizer/service/${cleanUrl}/`;
        
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
                setTexAreaTwo('No result found')
            } else {
                setTexAreaTwo(result)
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
        let text = await e.text()
        
        setTexAreaOne(text)
    }

    const download = () => {
        const blob = new Blob([texAreaTwo], { type : 'plain/text' });
        saveAs(blob, 'LEAD.txt')
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

            <div className='m-5 flex flex-col justify-center bg-white dark:bg-gray-800 comp-area rounded-lg border border-gray-200 dark:border-gray-700 shadow-lg'>
                <div className='flex justify-around mb-4'>
                    <div className='flex justify-between w-full'>
                        <h2 className='big-col subTitle text-gray-900 dark:text-white'>{labels.inputLabelTwo}</h2>
                        <div className='flex'>
                            <input type='file' hidden ref={inputRef} onChange={(e) => handleFile(e.target.files[0])} className='border bg-slate-600 z-40' />
                            <button onClick={() => fileUploadAction()} className='bg-emerald-600 hover:bg-emerald-700 text-white px-4 py-2 rounded-lg transition-colors duration-200'>Upload</button>
                            <button onClick={() => load(1)} className='bg-emerald-600 hover:bg-emerald-700 text-white px-4 py-2 rounded-lg transition-colors duration-200 ml-2'>Viewer</button>
                        </div>
                    </div>
                    <div className='w-3/12'></div>
                    <div className='flex justify-between w-full'>
                        <h2 className='big-col subTitle text-gray-900 dark:text-white'>{labels.outputLabel}</h2>
                        <div className='flex'>
                            <button onClick={() => download()} className='bg-emerald-600 hover:bg-emerald-700 text-white px-4 py-2 rounded-lg transition-colors duration-200'>Download</button>
                            <button onClick={() => load(2)} className='bg-emerald-600 hover:bg-emerald-700 text-white px-4 py-2 rounded-lg transition-colors duration-200 ml-2'>Viewer</button>
                        </div>
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
                                        viewer ? 
                                            <div className='w-full xml2 bg-white dark:bg-gray-700 rounded-lg p-4'>   
                                                <XMLViewer collapsible xml={texAreaOne} /> 
                                            </div>
                                                :
                                            <textarea rows={15} className='border w-full h-full p-2 bg-white dark:bg-gray-700 text-gray-900 dark:text-white rounded-lg' placeholder={labels.exInputLabelTwo} defaultValue={texAreaOne} onChange={(e) => setTexAreaOne(e.target.value)} />
                                    )
                            }
                        </div>
                    </div>
                    <div className='col relative h-full flex justify-start'>
                        <div className='btn h-full'>
                            <button onClick={() => postReqest()} className='bg-emerald-600 hover:bg-emerald-700 text-white px-4 py-2 rounded-lg transition-colors duration-200 h-8 z-50 transformBtn'>Submit</button>
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
                                                <XMLViewer collapsible xml={texAreaTwo} />  
                                            </div>
                                                :
                                            <textarea contentEditable={false} className='border w-full h-full p-2 bg-white dark:bg-gray-700 text-gray-900 dark:text-white rounded-lg' placeholder={labels.exOutputLabel} defaultValue={texAreaTwo} />
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
