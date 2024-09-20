## iris-ccd-devtools

This is a project based off of the IRIS REST API Contest template.

The REST API with CRUD actions for a Sample Person peristent class has been kept in the project temporarily for reference.

## Contributors
Chi Nguyen-Rettig (LEAD North)
Nathan Holt (LEAD North)

## Inspiration
To create a user-friendly front-end to organize several testing utilities and methods used to facility CCD transform development

## What it does
Creates /csp/visualizer/service web app in IRIS with endpoints for XPath testing, XSLT testing, and CCD to SDA transform testing. 

It uses [swagger-ui](https://openexchange.intersystems.com/package/iris-web-swagger-ui) module to provide documentation and test environment for API.

# Getting Started

## Installation with ZPM - Option

zpm:USER>install iris-ccd-devtools

## Installation with Docker - Option

## Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.


Clone/git pull the repo into any local directory e.g. like it is shown below:

```
$ git clone git@github.com:LEADNorthLLC/iris-ccd-devtools.git/
```

Open the terminal in this directory and run:

```
$ docker-compose up -d --build
```

## Management portal: 

The management portal is available at: 
[Management portal](http://localhost:62773/csp/sys/UtilHome.csp)

Login: _system/SYS

The API is available on localhost:62773/csp/visusalier/service

API documentation <TBD>

## CCD DevTools UI:

The UI is served from a second container and is available after docker startup at: 

[CD DevTools UI](http://localhost:4000)

## REST APIs - TESTING
An export for a Postman Collection to test the available APIs is located in the **testing** folder of this project. 
Import `Visualizer.postman_collection.json` in Postman to run tests. 

# XPath Evaluation Test #
When evaluating CCDs and building transforms, developers need to test an XPATH to see if it's pointing to the expected location. This XPath evaluation uses the same mechanism as the utilities and transformations within IRIS to locate the XPath so a developer can test that the syntax of the XPath is correct. 

[URL](http://localhost:62773/csp/visualizer/service/xpath/) 
Request-type: POST
Content-type: multipart-form
CONTENT1: {"XPathForEval": "/hl7:ClinicalDocument/hl7:recordTarget/hl7:patientRole/hl7:id[1]/@root"}
CONTENT2: <ClinicalDocument xsi:schemaLocat ..... />


Notes: Quoted values in the XPath must use single quotes in order to not mess with JSON parsing
CONTENT2 should contain the entire XML document, no escaping required. 

# CCD to SDA Transform #
A CCD can be passed to a standard CCDA to SDA transform to see the results from the IRIS transformation. 

[URL](http://localhost:62773/csp/visualizer/service/transform/) 
Request-type: POST
Content-type: multipart-form
CONTENT1: {"TransformName": "SDA3/CCDAv21-to-SDA.xsl"}
CONTENT2: <ClinicalDocument xsi:schemaLocat ..... />

Notes: CONTENT2 should contain the entire CCD document, no escaping required. 
Possible values for TransformName: 
SDA/CCDA-to-SDA.xsl
SDA/CCDAv21-to-SDA.xsl
SDA/CDA-toSDA.xsl
SDA/AU-CDA-to-SDA.xsl


## Challenges we ran into
The DevTools UI is developed using React. We initially tried to serve the DevTools UI through a web application in IRIS, but it appeared incompatible with Next.js.

While testing, we had to deal with CORS issues due to the cross-origin request. In order to get through the pre-flight request, we have the web application set to Unauthenticated and added %ALL to the Role. 

## Accomplishments that we are proud of
tbd

## What I learned
tbd

## Built with
Using VSCode and ObjectScript plugin, IRIS Community Edition in Docker, ZPM, IRIS openapi API

# Sample Testing #
This template creates /csp/visualizer/service REST web-application on IRIS which implements 3 CCD evaluation APIS:


The API is available on localhost:62773/csp/visualizer/service

This REST API goes with  OpenAPI (swagger) documentation. you can check it localhost:62773/crud/_spec
THis spec can be examined with different tools, such as [SwaggerUI](https://swagger.io/tools/swagger-ui/), [Postman](postman.com), etc.
Or you can install [swagger-ui](https://openexchange.intersystems.com/package/iris-web-swagger-ui) with:
```
zpm:IRISAPP>install swagger-ui
``` 
And check the documentation on localhost:62773/swagger-ui/index.html

## Collaboration 
Any collaboration is very welcome! Fork and send Pull requests!

