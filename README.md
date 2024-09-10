## iris-ccd-tools

This is a project based off of the IRIS REST API Contest template.

The REST API with CRUD actions for a Sample Person peristent class has been kept in the project temporarily for reference.

## Inspiration
To create a user-friendly front-end to organize several testing utilities and methods used to facility CCD transform development

## What it does
Creates /csp/visualizer/service web app in IRIS with endpoints for XPath testing, XSLT testing, and CCD to SDA transform testing. 

It uses [swagger-ui](https://openexchange.intersystems.com/package/iris-web-swagger-ui) module to provide documentation and test environment for API.

## REST APIs
An export for a Postman Collection to test the available APIs is located in the **testing** folder of this project. 
Import `Visualizer.postman_collection.json` in Postman to run tests. The `Person` API tests are for the Sample REST API. 

# XPath Evaluation Test #
Often times when evaluating CCDs and building mappings, developers need to test an XPATH to see if it's pointing to the expected location. This XPath evaluation uses the same mechanism as the utilities and transformations within IRIS to locate the XPath so a developer can test that the syntax of the XPath is correct. 

Request-type: POST
Content-type: multipart-form
CONTENT1: {"XPathForEval": "/hl7:ClinicalDocument/hl7:recordTarget/hl7:patientRole/hl7:id[1]/@root"}
CONTENT2: <ClinicalDocument xsi:schemaLocat ..... />


Notes: Quoted values in the XPath must use single quotes in order to not mess with JSON parsing
CONTENT2 should contain the entire XML document, no escaping required. 

# CCD to SDA Transform #
A CCD can be passed to a standard CCDA to SDA transform to see the results from the IRIS transformation. 

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


## Challenges I ran into
tbd

## Accomplishments that I proud of
tbd

## What I learned
tbd

## Built with
Using VSCode and ObjectScript plugin, IRIS Community Edition in Docker, ZPM, IRIS openapi API

## Installation with ZPM

zpm:USER>install iris-ccd-tools

## Installation with Docker

## Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.


Clone/git pull the repo into any local directory e.g. like it is shown below:

```
$ git clone git@github.com:LEADNorthLLC/iris-ccd-tools.git/
```

Open the terminal in this directory and run:

```
$ docker-compose up -d --build
```

## How to Work With it

# Management portal: 

The management portal is available at: 
[Management portal](http://localhost:62773/csp/sys/UtilHome.csp)

Login: _system/SYS

The API is available on localhost:62773/csp/visusalier/service

API documentation <TBD>


# Sample Testing - this will be updated with our current project #
This template creates /crud REST web-application on IRIS which implements 4 types of communication: GET, POST, PUT and DELETE aka CRUD operations. 

The API is available on localhost:62773/crud/
This REST API goes with  OpenAPI (swagger) documentation. you can check it localhost:62773/crud/_spec
THis spec can be examined with different tools, such as [SwaggerUI](https://swagger.io/tools/swagger-ui/), [Postman](postman.com), etc.
Or you can install [swagger-ui](https://openexchange.intersystems.com/package/iris-web-swagger-ui) with:
```
zpm:IRISAPP>install swagger-ui
``` 
And check the documentation on localhost:62773/swagger-ui/index.html


# Testing GET requests

To test GET you need to have some data. You can create it with POST request (see below), or you can create some fake testing data. to do that open IRIS terminal and call:

```
IRISAPP>do ##class(Sample.Person).AddTestData(10)
```
This will create 10 random records in Sample.Person class.


You can get swagger Open API 2.0 documentation on:
```
localhost:yourport/_spec
```

This REST API exposes two GET requests: all the data and one record.
To get all the data in JSON call:

```
localhost:62773/crud/persons/all
```

To request the data for a particular record provide the id in GET request like 'localhost:62773/crud/persons/id' . E.g.:

```
localhost:62773/crud/persons/1
```

This will return JSON data for the person with ID=1, something like that:

```
{"Name":"Elon Mask","Title":"CEO","Company":"Tesla","Phone":"123-123-1233","DOB":"1982-01-19"}
```

# Testing POST request

Create a POST request e.g. in Postman with raw data in JSON. e.g.

```
{"Name":"Elon Mask","Title":"CEO","Company":"Tesla","Phone":"123-123-1233","DOB":"1982-01-19"}
```

Adjust the authorisation if needed - it is basic for container with default login and password for IRIR Community edition container

and send the POST request to localhost:62773/crud/persons/

This will create a record in Sample.Person class of IRIS.

# Testing PUT request

PUT request could be used to update the records. This needs to send the similar JSON as in POST request above supplying the id of the updated record in URL.
E.g. we want to change the record with id=5. Prepare in Postman the JSON in raw like following:

```
{"Name":"Jeff Besos","Title":"CEO","Company":"Amazon","Phone":"123-123-1233","DOB":"1982-01-19"}
```

and send the put request to:
```
localhost:62773/crud/persons/5
```

# Testing DELETE request

For delete request this REST API expects only the id of the record to delete. E.g. if the id=5 the following DELETE call will delete the record:

```
localhost:62773/crud/persons/5
```

## How to start coding
This is a template, so you can use a template button on Github to create your own copy of this repository.
The repository is ready to code in VSCode with ObjectScript plugin.
Install [VSCode](https://code.visualstudio.com/) and [ObjectScript](https://marketplace.visualstudio.com/items?itemName=daimor.vscode-objectscript) plugin and open the folder in VSCode.
Once you start IRIS container VSCode connects to it and you can edit, compile and debug ObjectScript code.
Open /src/cls/PackageSample/ObjectScript.cls class and try to make changes - it will be compiled in running IRIS docker container.

Feel free to delete PackageSample folder and place your ObjectScript classes in a form
/src/cls/Package/Classname.cls

The script in Installer.cls will import everything you place under /src/cls into IRIS.

## Collaboration 
Any collaboration is very welcome! Fork and send Pull requests!
