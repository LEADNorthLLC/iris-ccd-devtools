"use client"

import React from 'react'
import axios from "axios";
import { useState, useRef } from "react";
import { saveAs } from 'file-saver';
import XMLViewer from 'react-xml-viewer'
import './index.css'

const ex = "<note><to>Tove</to><from>Jani</from><heading>Reminder</heading><body>Don't forget me this weekend!</body></note>"

const TestComponent = ({ options, url, labels, largeInput, baseUrl = "http://localhost:3000/" }) => {
    const [inputOne, setInputOne] = useState('')
    const [texAreaOne, setTexAreaOne] = useState('')
    const [texAreaTwo, setTexAreaTwo] = useState('')
    const [viewer, setViewer] = useState(false)
    const [viewerTwo, setViewerTwo] = useState(false)
    const inputRef = useRef(null);

    const postReqest = async () => {

        const axiosInstance = axios.create({
            'Access-Control-Allow-Origin': '*',
            baseURL: baseUrl,
            timeout: 1000,
          });
        
        let data1 = {
          "TransformName": inputOne
        }
        let data2 = texAreaOne
      
        let response = await axiosInstance.post(url, {
          'CONTENT1': data1,
          'CONTENT2': data2
        })
      
        console.log(response)
        setTexAreaTwo(response)
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

    
  return (
    <div className='comp m-5'>
        <div className='m-5 '>
            <div className='m-5 comp-input flex justify-between bg-slate-300 rounded-md border-2 border-slate-500 shadow-sm'>
                <h2 className='subTitle labelOne'>{labels.inputLabelOne}</h2>
                {
                    largeInput ? (
                        <textarea rows={3} className='w-full h-full' value={inputOne} onChange={(e) => setInputOne(e.target.value)} />
                    ) : (
                        <>
                            <input className='w-4/5 h-8' type="text" name="option" list="options" onChange={(e) => setInputOne(e.target.value)} />
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

            <div className='m-5 flex flex-col justify-center w-64 h-4/6 bg-slate-300 comp-area rounded-md border-2 border-slate-500 shadow-sm'>
                <div className='flex justify-around mb-4'>
                    <h2 className='big-col subTitle'>{labels.inputLabelTwo}</h2>
                    <div className='w-1/12'></div>
                    <h2 className='big-col subTitle'>{labels.outputLabel}</h2>
                </div>

                <div className='flex'>
                    <div className='big-col relative h-full'>
                        <div className='absolute right-3 top-3  h-full'>
                            <input type='file' hidden ref={inputRef} onChange={(e) => handleFile(e.target.files[0])} className='bg-slate-600 z-40' />
                            <button onClick={() => fileUploadAction()} className='bg-slate-200 z-40'>Upload</button>
                            <button onClick={() => setViewer(!viewer)} className='bg-slate-200 z-40'>Viewer</button>
                        </div>
                        <div className='w-full xml'>
                            {
                                viewer ? 
                                <XMLViewer collapsible xml={texAreaOne} /> 
                                    :
                                <textarea rows={15} className='w-full h-full p-2' value={texAreaOne} onChange={(e) => setTexAreaOne(e.target.value)} />
                            }
                        </div>
                    </div>
                    <div className='col relative  h-full flex justify-center w-10'>
                        <div className='absolute top-3 btn h-full'>
                            <button onClick={() => postReqest()} className='bg-slate-200 h-8 w-20 z-50 transformBtn'>Transform</button>
                        </div>
                    </div>
                    <div className='big-col relative  h-full'>
                        <div className='absolute right-3 top-3  h-full'>
                            <button onClick={() => download()} className='bg-slate-200 z-40'>Download</button>
                            <button onClick={() => setViewerTwo(!viewerTwo)} className='bg-slate-200 z-40'>Viewer</button>
                        </div>
                        {
                            viewerTwo ? 
                            <XMLViewer collapsible xml={texAreaTwo} /> 
                                :
                            <textarea contentEditable={false} className='w-full h-full p-2' value={texAreaTwo}  />
                        }
                    </div>    
                </div>
            </div>
        </div>
    </div>
  )
}

export default TestComponent
