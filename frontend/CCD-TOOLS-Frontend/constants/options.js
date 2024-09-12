const transforms = [
    {
        desc: "Sending Facility", 
        value: "/ClinicalDocument/informant/assignedEntity/representedOrganization"
    },
    {
        desc: "Sending Facility", 
        value: "/ClinicalDocument/author/assignedEntity/representedOrganization"
    },
    {
        desc: "Patient Addresses Street Address", 
        value: "/ClinicalDocument/recordTarget/patientRole/addr/streetAddressLine"
    },
    {
        desc: "Patient Addresses City", 
        value: "/ClinicalDocument/recordTarget/patientRole/addr/city"
    },
    {
        desc: "Patient Addresses State", 
        value: "/ClinicalDocument/recordTarget/patientRole/addr/state"
    },
    {
        desc: "Patient Addresses Postal Code", 
        value: "/ClinicalDocument/recordTarget/patientRole/addr/postalCode"
    },
]

const xpaths = [
    {
        desc: "one", 
        value: "1111111111111111111;aj"
    },
    {
        desc: "two", 
        value: "2222222222222222"
    },
    {
        desc: "three", 
        value: "3333333333333333;aj"
    },
    {
        desc: "four", 
        value: "444444444444444;aj"
    },
    {
        desc: "five", 
        value: "55555555555555555555;aj"
    },
    {
        desc: "six", 
        value: "666666666666666666;aj"
    },
]

const xsl = [
    {
        desc: "one", 
        value: "1111111111111111111;aj"
    },
    {
        desc: "two", 
        value: "2222222222222222"
    },
    {
        desc: "three", 
        value: "3333333333333333;aj"
    },
    {
        desc: "four", 
        value: "444444444444444;aj"
    },
    {
        desc: "five", 
        value: "55555555555555555555;aj"
    },
    {
        desc: "six", 
        value: "666666666666666666;aj"
    },
]

export  {transforms, xpaths, xsl}