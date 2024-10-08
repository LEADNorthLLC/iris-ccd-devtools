"use client"

import React from 'react'
import axios from "axios";
import { useState, useRef } from "react";
import { saveAs } from 'file-saver';
import XMLViewer from 'react-xml-viewer'
import Dropdown from 'react-bootstrap/Dropdown';
import DropdownButton from 'react-bootstrap/DropdownButton';
import './index.css'

const ex = "<note><to>Tove</to><from>Jani</from><heading>Reminder</heading><body>Don't forget me this weekend!</body></note>"

const TestComponent = ({ options, url, labels, largeInput, baseUrl = "http://localhost:3000/", type }) => {
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
            setTexAreaTwo("Please make sure both inputs are filled before clicking submit")
            return
        }
        
        const myHeaders = new Headers();
        myHeaders.append("Authorization", "Basic X3N5c3RlbTpTWVM=");
        myHeaders.append("Cookie", "CSPSESSIONID-SP-62773-UP-csp-visualizer-service-=003000010000AafU38vb8LR0lx8vqTAgRttsgaGtcGlDgxj9W_; CSPWSERVERID=hzYBi3LG");
        
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
        
        formdata.append("CONTENT1", data);
        formdata.append("CONTENT2", texAreaOne)

        const requestOptions = {
          method: "POST",
          headers: myHeaders,
          body: formdata,
          redirect: "follow"
        };
        
        fetch(baseUrl + url, requestOptions)
          .then((response) => response.text())
          .then((result) => {
            if (result === '[]') {
                setTexAreaTwo('No result found')
            } else {
                setTexAreaTwo(result)
            }
          })
          .catch((error) => console.error(error));
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
            <div className='m-5 comp-input flex justify-between bg-slate-300 rounded-md border-2 border-slate-500 shadow-sm'>
                <h2 className='subTitle labelOne'>{labels.inputLabelOne}</h2>
                {
                    largeInput ? (
                        <>
                        <textarea rows={5} className='w-full h-full' placeholder={labels.exInputLabelOne} defaultValue={inputOne} onChange={(e) => setInputOne(e.target.value)} />
                        {/* <DropdownButton id="dropdown-basic-button" title="Dropdown button">
                            <Dropdown.Item href="#/action-1">Action</Dropdown.Item>
                            <Dropdown.Item href="#/action-2">Another action</Dropdown.Item>
                            <Dropdown.Item href="#/action-3">Something else</Dropdown.Item>
                        </DropdownButton> */}
                        </>
                    ) : (
                        <>
                            <input className='w-4/5 h-8' type="text" name="option" list="options" placeholder={labels.exInputLabelOne} onChange={(e) => setInputOne(e.target.value)} />
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

            <div className='m-5 flex flex-col justify-center w-64  bg-slate-300 comp-area rounded-md border-2 border-slate-500 shadow-sm'>
                <div className='flex justify-around mb-4'>
                    <div className='flex justify-between w-full'>
                        <h2 className='big-col subTitle'>{labels.inputLabelTwo}</h2>
                        <div className='flex'>
                            <input type='file' hidden ref={inputRef} onChange={(e) => handleFile(e.target.files[0])} className='bg-slate-600 z-40' />
                            <button onClick={() => fileUploadAction()} className='bg-slate-200 z-40'>Upload</button>
                            <button onClick={() => load(1)} className='bg-slate-200 z-40'>Viewer</button>
                        </div>
                    </div>
                    <div className='w-3/12'></div>
                    <div className='flex justify-between w-full'>
                        <h2 className='big-col subTitle'>{labels.outputLabel}</h2>
                        <div className='flex'>
                            <button onClick={() => download()} className='bg-slate-200 z-40'>Download</button>
                            <button onClick={() => load(2)} className='bg-slate-200 z-40'>Viewer</button>
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
                                            <div className='w-full xml2'>   
                                                <XMLViewer collapsible xml={texAreaOne} /> 
                                            </div>
                                                :
                                            <textarea rows={15} className='w-full h-full p-2' placeholder={labels.exInputLabelTwo} defaultValue={texAreaOne} onChange={(e) => setTexAreaOne(e.target.value)} />
                                    )
                            }
                        </div>
                    </div>
                    <div className='col relative h-full flex justify-start '>
                        <div className='btn h-full'>
                            <button onClick={() => postReqest()} className='bg-slate-200 h-8 z-50 transformBtn'>Submit</button>
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
                                            <div className='w-full xml2'>   
                                                <XMLViewer collapsible xml={texAreaTwo} />  
                                            </div>
                                                :
                                            <textarea contentEditable={false} className='w-full h-full p-2' placeholder={labels.exOutputLabel} defaultValue={texAreaTwo}  />
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
