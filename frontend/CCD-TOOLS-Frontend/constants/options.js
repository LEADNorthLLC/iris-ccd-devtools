const transforms = [
    {
    "ID": 10116,
    "DocumentType": "CCDA2",
    desc: "CCDA to SDA",
    value: "SDA/CCDA-to-SDA.xsl"
    },
    {
    "ID": 10117,
    "DocumentType": "CCDA2",
    desc: "CCDAv21 to SDA",
    value: "SDA/CCDAv21-to-SDA.xsl"
    },
    {
    "ID": 10118,
    "DocumentType": "CCDA2",
    desc: "CCDA to SDA",
    value: "SDA/CDA-toSDA.xsl"
    },
    {
    "ID": 10119,
    "DocumentType": "CCDA2",
    desc: "CCDA to SDA",
    value: "SDA/AU-CDA-to-SDA.xsl"
    },
    ]

const xpaths = [
    {
        desc: "Sending Facility1", 
        value: "/hl7:ClinicalDocument/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:name"
    },
    {
        desc: "Sending Facility2", 
        value: "/hl7:ClinicalDocument/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:name"
    },
    {
        desc: "Sending Facility3", 
        value: "/hl7:ClinicalDocument/hl7:author/hl7:assignedEntity/hl7:representedOrganization/hl7:name"
    },
    {
        desc: "Facility OID1", 
        value: "/hl7:ClinicalDocument/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:id/@root"
    },
    {
        desc: "Facility OID2", 
        value: "/hl7:ClinicalDocument/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:id/@root"
    },
    {
        desc: "Facility OID3", 
        value: "/hl7:ClinicalDocument/hl7:author/hl7:assignedEntity/hl7:representedOrganization/hl7:id/@root"
    },
    {
        desc: "Facility OID4", 
        value: "/hl7:ClinicalDocument/hl7:recordTarget/hl7:patientRole/hl7:patient/id/@root"
    },
    {
        desc: "Encompassing Encounter Number1", 
        value: "/hl7:ClinicalDocument/hl7:componentOf/hl7:encompassingEncounter/hl7:id[2]/@extension"
    },
    {
        desc: "Encompassing Encounter Number2", 
        value: "/hl7:ClinicalDocument/hl7:componentOf/hl7:encompassingEncounter/hl7:id[1]"
    },
    {
        desc: "Encounter Number1", 
        value: "/hl7:ClinicalDocument/hl7:component/hl7:structuredBody/hl7:component/hl7:section[hl7:templateId/@root='2.16.840.1.113883.10.20.22.2.22.1']/hl7:id[2]/@extension"
    },
    {
        desc: "Encounter Number2", 
        value: "/hl7:ClinicalDocument/hl7:component/hl7:structuredBody/hl7:component/hl7:section[hl7:templateId/@root='2.16.840.1.113883.10.20.22.2.22.1']/hl7:entry/hl7:encounter/hl7:id"
    },
    {
        desc: "Payer Id", 
        value: "/hl7:ClinicalDocument/hl7:component/hl7:structuredBody/hl7:component/hl7:section[hl7:templateId/@root='2.16.840.1.113883.10.20.22.2.18']/hl7:entry/hl7:act/hl7:id"
    },
    {
        desc: "Payer Member ID", 
        value: "/hl7:ClinicalDocument/hl7:component/hl7:structuredBody/hl7:component/hl7:section[hl7:templateId/@root='2.16.840.1.113883.10.20.22.2.18']/hl7:entry/hl7:act/hl7:entryRelationship/hl7:act/hl7:participant[@typeCode='COV']/hl7:participantRole/hl7:id/@extension"
    },
    {
        desc: "Person ID", 
        value: "/hl7:ClinicalDocument/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:id/@extension"
    },
    {
        desc: "Person ID Assigning Authority Code", 
        value: "/hl7:ClinicalDocument/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:id/@root"
    },
]


const xsl = [
    {
        desc: "fileOne", 
        value: "1111111111111111111"
    },
    {
        desc: "fileTwo", 
        value: "2222222222222222"
    },
    {
        desc: "fileThree", 
        value: "3333333333333333"
    },
    {
        desc: "fileFour", 
        value: "444444444444444"
    },
    {
        desc: "fileFive", 
        value: "55555555555555555555"
    },
    {
        desc: "fileSix", 
        value: "666666666666666666"
    },
]

export  {transforms, xpaths, xsl}