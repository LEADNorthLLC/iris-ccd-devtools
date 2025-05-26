## IRIS Interoperability DevTools (iris-ccd-devtools) 

One of the biggest challenges for health data integration and interoperability is orchestrating between different message formats and standards, most notably the **Big Three**: HL7, CCDA, and FHIR. 

The InterSystems IRIS product suite provides a robust toolset including templates and a pre-build code base for handling all three of these standards, but the challenge for developers is accessing the code base in a quick and reliable way without having to dig deep into configuration or code. 

The IRIS Interoperability DevTools (formerly *IRIS CCD DevTools*) allows developers to test CCD and FHIR messages against the code base in the backend of an IRIS for Health instance, while providing visbility and user-friendly tools. With these development tools, health data implementers, developers, and analysts can rapidly inspect and test messages, increasing the speed of IRIS adoption and health data mastery. 

> **Platform: This application is installed IRIS for Health, but the dashboard is compatible with IRIS for Health or HealthShare/UCR. The front-end is built on NextJS. The build instantiates both IRIS for Health Community and a React environment running on Node 18-alpine to run the UI** 

## Contributors

[Chi Nguyen-Rettig (LEAD North)](https://community.intersystems.com/user/chi-nguyen-rettig)

[Nathan Holt (LEAD North)] (https://community.intersystems.com/user/nathan-holt)

[Shawntelle Madison-Coker (LEAD North)] (https://community.intersystems.com/user/shawntelle-madison-coker)

## Inspiration
To create a user-friendly front-end to organize several testing utilities and methods used to accelerate FHIR and CCD analysis transformation development.

## What it does

1. **Backend:** A /csp/visualizer/service web application in IRIS with endpoints for XPath evaluation, XSLT, CCD to SDA, FHIR to SDA, and SDA to FHIR transformation testing.
2. **Frontend:** A graphical Development Tools portal built in NextJS React makes it easy to load data from files or copy/paste data for testing. 


# Getting Started

## Installation with Docker 

## Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.


Clone/git pull the repo into any local directory e.g. like it is shown below:

```bash
$ git clone git@github.com:LEADNorthLLC/iris-ccd-devtools.git/
```

Open the terminal in this directory and run:

```bash
$ docker-compose up -d --build
```

## Interoperability DevTools Dashboard:

The UI is served from a second container and is available after docker startup at: 

[CCD DevTools URL](http://localhost:4000)

![CCD DevTools UI](misc/images/interop_devtools_Transform_Tester.png)


## IRIS Management portal: 

The management portal is available at: 
[Management portal](http://localhost:62773/csp/sys/UtilHome.csp)

```bash
Login: _system/SYS
```
The API is available on localhost:62773/csp/visusalier/service

## REST APIs - TESTING

**Sample Data**
Sample C-CDAs from the [SyntheaMass](https://synthea.mitre.org/downloads) open-source data set have been included in the `testing/sample data/CCDA` folder for unit testing. Also sample FHIR data from SyntheaMass has been included in the `testing/sample data/FHIR` folder for unit testing. 

**Postman export*
An export for a Postman Collection to test the available APIs is located in the **testing** folder of this project. 
Import `interop-devtools-ccd-fhir.postman_collection.json` in Postman to run tests. 

Data set up in the Postman import is from a combination of Synthea or the HL7 FHIR R4 Specification. 


# XPath Evaluation Test #
When evaluating CCDs and building transforms, developers need to test an XPATH to see if it's pointing to the expected location. This XPath evaluation uses the same mechanism as the utilities and transformations within IRIS to locate the XPath so a developer can test that the syntax of the XPath is correct. 

[URL](http://localhost:62773/csp/visualizer/service/xpath/) 

```bash
Request-type: POST
Content-type: multipart-form
CONTENT1: {"XPathForEval": "/hl7:ClinicalDocument/hl7:recordTarget/hl7:patientRole/hl7:id[1]/@root"}
CONTENT2: <ClinicalDocument xsi:schemaLocat ..... />
```

Notes: Quoted values in the XPath must use single quotes in order to not mess with JSON parsing
CONTENT2 should contain the entire XML document, no escaping required. 

# CCD to SDA Transform #
A CCD can be passed to a standard CCDA to SDA transform to see the results from the IRIS transformation. 

```bash
[URL](http://localhost:62773/csp/visualizer/service/transform/) 
Request-type: POST
Content-type: multipart-form
CONTENT1: {"TransformName": "SDA3/CCDAv21-to-SDA.xsl"}
CONTENT2: <ClinicalDocument xsi:schemaLocat ..... />
```

Note: CONTENT2 should contain the entire CCD document, no escaping required. 
Possible values for TransformName: 
```bash
SDA3/CCDA-to-SDA.xsl
SDA3/CCDAv21-to-SDA.xsl
SDA3/CDA-toSDA.xsl
SDA3/AU-CDA-to-SDA.xsl
```
# XSL Template Test
Test an isolated XSL template. The contents of the XSL template window will be inserted into an XSL stylesheet that contains the identity template.

```bash
[URL](http://localhost:62773/csp/visualizer/service/xslt/) 
Request-type: POST
Content-type: multipart-form
CONTENT1: <xsl:template match="/hl7:ClinicalDocument/hl7:component/hl7:structuredBody/hl7:component/hl7:section[hl7:templateId/@root='2.16.840.1.113883.10.20.22.2.38']"/>
CONTENT2: <ClinicalDocument xsi:schemaLocat ..... />
```
Note: CONTENT1 contains the entire XSL template, no escaping or single quotes required. CONTENT2 should contain the entire CCD document, no escaping required. 

## Challenges we ran into
The DevTools UI is developed using React. We initially tried to serve the DevTools UI through a web application in IRIS, but it appeared incompatible with Next.js.

While testing, we had to deal with CORS issues due to the cross-origin request. In order to get through the pre-flight request, we have the web application set to Unauthenticated and added %ALL to the Role. 

Due to the use of two docker containers, we were unable to package the solution with ZPM. 

## Built with
Using VSCode and ObjectScript plugin, IRIS for Health Community Edition in Docker, IRIS openapi API, NextJs and React.

## Collaboration 
Any collaboration is very welcome! Fork and send Pull requests!

## 

