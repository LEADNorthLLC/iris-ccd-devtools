import Image from "next/image";
import axios from "axios";
import { useState } from "react";

const postXPath = async () => {
  const [xPath, setXPath] = useState('')
  const [xPathSchema, setXPathSchema] = useState('')
  const [CCD, setCCD] = useState('')
  const [CCDSchema, setCCDSchema] = useState('')
  
  let data1 = {
    "XPathForEval": "/hl7:ClinicalDocument/hl7:recordTarget/hl7:patientRole/hl7:id[1]/@root"
  }
  let data2 = '<ClinicalDocument xsi:schemaLocat ..... />'

  let response = await axios.post('/csp/visualizer/service/xpath/', {
    CONTENT1: data1,
    CONTENT2: data2
  })

  console.log(response)
}

const postCCDToSDA = async () => {

  let data1 = {
    "TransformName": "SDA3/CCDAv21-to-SDA.xsl"
  }
  let data2 = '<ClinicalDocument xsi:schemaLocat ..... />'

  let response = await axios.post('/csp/visualizer/service/transform/', {
    CONTENT1: data1,
    CONTENT2: data2
  })

  console.log(response)
}

export default function Home() {
  return (
    <div className="grid grid-rows-[20px_1fr_20px] items-center justify-items-center min-h-screen p-8 pb-20 gap-16 sm:p-20 font-[family-name:var(--font-geist-sans)]">
       <button onClick={() => postXPath()}>XPath</button>
       <button onClick={() => postCCDToSDA()}>CCD to SDA</button>
    </div>
  );
}
