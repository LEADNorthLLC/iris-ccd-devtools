const transformLabels = {
    pageTitle: "CCDA to SDA Transforms Tester",
    inputLabelOne: "CCDA to SDA Transform",
    inputLabelTwo: "Input Document",
    outputLabel: "Output",
    exInputLabelOne: "EX: SDA3/CCDAv21-to-SDA.xsl",
    exInputLabelTwo: "EX: <ClinicalDocument xsi:schemaLocation='urn:hl7-org:v3 http://xreg2.nist.gov:8080/hitspValidation/schema/cdar2c32/infrastructure/cda/C32_CDA.xsd' xmlns='urn:hl7-org:v3' xmlns:voc='urn:hl7-org:v3/voc' xmlns:sdtc='urn:hl7-org:sdtc' xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance'....",
    exOutputLabel: "Your output will appear here after clicking submit",
}

const xpathLabels = {
    pageTitle: "XPath Evaluator",
    inputLabelOne: "XPath Expression",
    inputLabelTwo: "Input Document",
    outputLabel: "Output",
    exInputLabelOne: "EX: /hl7:ClinicalDocument/hl7:recordTarget/hl7:patientRole/hl7:id[1]/@root",
    exInputLabelTwo: "EX: <ClinicalDocument xsi:schemaLocation='urn:hl7-org:v3 http://xreg2.nist.gov:8080/hitspValidation/schema/cdar2c32/infrastructure/cda/C32_CDA.xsd' xmlns='urn:hl7-org:v3' xmlns:voc='urn:hl7-org:v3/voc' xmlns:sdtc='urn:hl7-org:sdtc' xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance'....",
    exOutputLabel: "Your output will appear here after clicking submit",
}

const xslLabels = {
    pageTitle: "XSL Tempate Tester",
    inputLabelOne: "XSL Template to Test",
    inputLabelTwo: "Input Document",
    outputLabel: "Output",
    exInputLabelOne: "EX: <xsl:template match='/hl7:ClinicalDocument/hl7:component/hl7:structuredBody/hl7:component/hl7:section[hl7:templateId/@root='2.16.840.1.113883.10.20.22.2.38']'/>",
    exInputLabelTwo: "EX: <ClinicalDocument xsi:schemaLocation='urn:hl7-org:v3 http://xreg2.nist.gov:8080/hitspValidation/schema/cdar2c32/infrastructure/cda/C32_CDA.xsd' xmlns='urn:hl7-org:v3' xmlns:voc='urn:hl7-org:v3/voc' xmlns:sdtc='urn:hl7-org:sdtc' xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance'....",
    exOutputLabel: "Your output will appear here after clicking submit",
}

export  {transformLabels, xpathLabels, xslLabels}