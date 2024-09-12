"use client"

import React from 'react'
import axios from "axios";
import { useState, useRef } from "react";
import { saveAs } from 'file-saver';
import XMLViewer from 'react-xml-viewer'
import './index.css'

const ex = "<note><to>Tove</to><from>Jani</from><heading>Reminder</heading><body>Don't forget me this weekend!</body></note>"

const TestComponent = ({ options, url }) => {
    const [inputOne, setInputOne] = useState('')
    const [texAreaOne, setTexAreaOne] = useState('')
    const [texAreaTwo, setTexAreaTwo] = useState('')
    const [viewer, setViewer] = useState(false)
    const [viewerTwo, setViewerTwo] = useState(false)
    const inputRef = useRef(null);

    const postReqest = async () => {
        let data1 = {
          "TransformName": inputOne
        }
        let data2 = setTexAreaOne
      
        let response = await axios.post(url, {
          CONTENT1: data1,
          CONTENT2: data2
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
            <div className='m-5 comp-input flex justify-between bg-slate-400 rounded-md'>
                <h2>Appropriate Label</h2>
                <input className='w-4/5 h-8' type="text" name="city" list="citynames" onChange={(e) => setInputOne(e.target.value)} />
                <datalist id="citynames">
                    {
                        options && options.map((item) => (
                            <option key={item.value} value={item.value}>{item.desc}</option>
                        ))
                    }
                </datalist>
            </div>

            <div className='m-5 flex flex-col justify-center w-64 h-4/6 bg-slate-400 comp-area rounded-md'>
                <div className='flex justify-around m-4'>
                    <h2>Appropriate Label</h2>
                    <h2>Appropriate Label</h2>
                </div>

                <div className='flex'>
                    <div className='big-col relative h-full'>
                        <div className='absolute right-3 top-3  h-full'>
                            <input type='file' hidden ref={inputRef} onChange={(e) => handleFile(e.target.files[0])} className='bg-slate-600 z-40' />
                            <button onClick={() => fileUploadAction()} className='bg-slate-200 z-40'>Upload</button>
                            <button onClick={() => setViewer(!viewer)} className='bg-slate-200 z-40'>Viewer</button>
                        </div>
                        {
                            viewer ? 
                            <XMLViewer collapsible xml={texAreaOne} /> 
                                :
                            <textarea className='w-full h-full' value={texAreaOne} onChange={(e) => setTexAreaOne(e.target.value)} />
                        }
                    </div>
                    <div className='col relative  h-full'>
                        <div className='absolute top-3 btn  h-full'>
                            <button onClick={() => postReqest()} className='bg-slate-200 h-8 w-20 z-50'>Transform</button>
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
                            <textarea contentEditable={false} className='w-full h-full' value={texAreaTwo}  />
                        }
                    </div>    
                </div>
            </div>
            {/* <button onClick={() => setCCDSchema()}>CCD to SDA</button> */}
        </div>
    </div>
  )
}

export default TestComponent
