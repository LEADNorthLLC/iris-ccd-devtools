/// Directs requests to the appropriate class
Class CCD.Visualizer.REST.FHIRTransform Extends CCD.Visualizer.REST.Service.Base
{

/** Change Log
2025-05-23 - Chi Nguyen-Rettig: initial
**/
Parameter Version = "1.0.0";

/// Enable Cross-origin resource sharing handling.
Parameter HandleCorsRequest = 1;

/// Use Session for REST Services
Parameter UseSession = 1;

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>
    <Route Url="/sda/" Method="POST" Call="TransformSDAToFHIR"/>
	<Route Url="/fhir/" Method="POST" Call="TransformFHIRToSDA"/>
  </Routes>
}

ClassMethod TransformFHIRToSDA() As %Status
{
	Set tSC = $$$OK
	Set ^zStatus = "HELLO"

	Quit tSC
}

ClassMethod TransformFHIRToSDABackup() As %Status
{
	Set tSC = $$$OK
	Set ^zStatus = "HELLO"
	try {
		If (%request.ContentType '= "multipart/form-data") {	
			Set %response.Status = 406
			QUIT
		}
		
		// The Data should contain 2 parts, the first is JSON metadata, the second is the file data.		
		set ^zStatus = "just starting"
		
		#dim tFileStream As HS.SDA3.QuickStream
		if ($D(%request.Data)) 
		{
			
			Set name=""
			set name = %request.Next(name)
			
			if (name = "") $$$ThrowStatus($$$ERROR($$$GeneralError,"Unable to identify Data Sections."))
			Set stream = %request.Get(name)

			Set tRequest = ##class(CCD.Visualizer.Model.Record).%New()
    		$$$THROWONERROR(tSC,tRequest.%JSONImport(stream))

			#; Pull elements from API call
			set tTransformName = tRequest.TransformName
 			Set name = %request.Next(name) 

			if (name = "") $$$ThrowStatus($$$ERROR($$$GeneralError,"Unable to identify Data Sections."))
			Set stream = %request.Get(name)
			//CNR: even though it's not an SDA, the CCD data is being saved to the HS.SDA3.QuickStream?
			if ('$ISOBJECT(stream))
			{
				set tFileStream = ##class(HS.SDA3.QuickStream).%New()
				$$$ThrowOnError(tFileStream.Write(stream))
				do tFileStream.Rewind()
			}
			else
			{
				set tFileStream = ##class(HS.SDA3.QuickStream).%New()
				do tFileStream.CopyFrom(stream)
				do tFileStream.Rewind()
			}
		}
		else
		{
			Set %response.Status = 406
			QUIT
		}
		
		set ^zStatus = "past tFileStream"
		Set %response.Status = 200
		
		//Create a Request message
		set fhirMessage = ##class(CCD.Visualizer.Model.Record).%New()
		set fhirMessage.FHIRContentJSON = tFileStream

		//Inject the message into a Production by instantiating a Business Host
		// Construct the business service
		$$$ThrowOnError( ##class(Ens.Director).CreateBusinessService("FHIR.REST.Service", .tService) )

		// Now, process it
		$$$ThrowOnError( tService.ProcessInput(fhirMessage, .response) )
	
    	//Quit tSC
		
		//Set tResponse = ##class(CCD.Visualizer.Model.Record).%New()
		//set tResponse.SDAContentXML = tOutputSDA
		
		#;Write response
		//Set %response.ContentType="application/xml"
		//$$$ThrowOnError(tResponse.XMLExportToStream(.tStream))
		

		Do tFileStream.OutputToDevice()
	}
	Catch Ex {
		Set tSC = Ex.AsStatus()
		Set %response.Status = 500
	}
	Quit tSC
}

/// API takes an input XSL template and XML input document. Transforms the document using the XSL template 
/// and returns the result. The XSL template is combined with the identity template in order to show the 
/// results of adding the XSL template and keeping everything else the same
ClassMethod TestXSL() As %Status
{
	Set tSC = $$$OK
	
	If (%request.ContentType '= "multipart/form-data") {	
		
		Set %response.Status = 406
		QUIT
	}
		
	// The Data should contain 2 parts, the first is JSON metadata, the second is the file data.	
	#dim tFileStream As HS.SDA3.QuickStream
	if ($D(%request.Data)) 
	{
		Set name=""
		set name = %request.Next(name)
			
		if (name = "") $$$ThrowStatus($$$ERROR($$$GeneralError,"Unable to identify Data Sections."))

		#; Pull XSL Template from first part of API call
		Set tXSLStream = %request.Get(name)
	
		#; Pull XML source from second part of API call
		Set name = %request.Next(name) 
		if (name = "") $$$ThrowStatus($$$ERROR($$$GeneralError,"Unable to identify Data Sections."))
		Set tSourceDataStream = %request.Get(name)
			
		if ('$ISOBJECT(tSourceDataStream))
		{
			set tFileStream = ##class(HS.SDA3.QuickStream).%New()
			$$$ThrowOnError(tFileStream.Write(tSourceDataStream))
			do tFileStream.Rewind()
		}
		else
		{
			set tFileStream = ##class(HS.SDA3.QuickStream).%New()
			do tFileStream.CopyFrom(tSourceDataStream)
			do tFileStream.Rewind()
		}
	}
	else
	{
		Set %response.Status = 406
		QUIT
	}

	#; Setup up template in a stylesheet
	Set tStyleSheet = ##class(CCD.Visualizer.REST.Transform).AddTemplate(tXSLStream)
	
	#; Load the XSL template into a compiled StyleSheet
	Set tStatus = ##class(%XML.XSLT.CompiledStyleSheet).CreateFromStream(tStyleSheet, .tCompiledStyleSheet)
	$$$ThrowOnError(tStatus)
	Set tStatus = ##class(%XML.XSLT.Transformer).TransformStreamWithCompiledXSL(tSourceDataStream, tCompiledStyleSheet, .tOutputStream,, .tParams, ##class(HS.Util.XSLTHelper).%New())
	$$$ThrowOnError(tStatus)

	Set tResponse = ##class(CCD.Visualizer.Model.Record).%New()
	set tResponse.CCDContentXML = tOutputStream

	#;Write response
	Set %response.Status = 200
	Set %response.ContentType="application/xml"
	$$$ThrowOnError(tResponse.XMLExportToStream(.tStream))

	Do tStream.OutputToDevice()

	Quit tSC
}

/// Helper methods:
/// /// pLocation can be set using XPATH
ClassMethod GetLocationValue(pStream As %Stream.Object, pLocation As %String, ByRef pValue As %String)
{
	
    Set pValue = ""

	If '$isObject(pStream) || (pStream.Size=0) { 
			Throw ##class(%Exception.General).%New("Content stream is empty","999",,
                             "ContentStream is empty")
		}
	
    //parse location for @attribute at the end in order to format arguments correctly for GetXpathValue call

    Set tLen = $LENGTH(pLocation, "/@")

    if tLen = 1 {
        Set tExpression = pLocation
        Set tItem = ""
    }
    else {
        Set tExpression = $PIECE(pLocation, "/@", 1, tLen-1)
        Set tItem = $PIECE(pLocation, "/@", tLen)
    }
    if tItem="" {
        Set tItem = "text()"
    }
    else {
        Set tItem = "@"_tItem
    }
    //$$$LOGINFO("tExpression is: "_tExpression)
    //$$$LOGINFO("tItem is: "_tItem)
	//Get location using XPATH 
	$$$ThrowOnError(##class(HS.IHE.Util).GetXPathValue(pStream, tExpression,tItem,.pValue,.tDocObject))

    // Rewind the stream
    Do pStream.Rewind()
}

ClassMethod GetLocationValuesMultiple(pStream As %Stream.Object, pLocation As %String, ByRef pValue As %String)
{
    Set pValue = ""

	If '$isObject(pStream) || (pStream.Size=0) { 
			Throw ##class(%Exception.General).%New("Content stream is empty","999",,
                             "ContentStream is empty")
		}
	
    //parse location for @attribute at the end in order to format arguments correctly for GetXpathValue call

    Set tLen = $LENGTH(pLocation, "/@")

    if tLen = 1 {
        Set tExpression = pLocation
        Set tItem = ""
    }
    else {
        //determine if the attribute symbol is at the end or not by checking if there are further slashes in second section
        if $PIECE(pLocation, "/@", tLen) [ "/" {
            //There was one enmbedded attribute but it wasn't the trailing item
            Set tExpression = pLocation
            Set tItem = ""
        }
        else {
            Set tExpression = $PIECE(pLocation, "/@", 1, tLen-1)
            Set tItem = $PIECE(pLocation, "/@", tLen)
        }
    }
    if tItem="" {
        Set tItem = "text()"
    }
    else {
        Set tItem = "@"_tItem
    }
	//Get location using XPATH 
	$$$ThrowOnError(##class(HS.IHE.Util).GetXPathExpression(pStream, tExpression,tItem,.pValue,.tDocObject))

    // Rewind the stream
    Do pStream.Rewind()
}

ClassMethod FormatResultsToJSON(pResults As %ListOfDataTypes, Output pJsonString As %String)
{


    // Create a dynamic object for JSON
    set jsonObject = ##class(%DynamicObject).%New()

    // Create a dynamic array to store formatted results
    set jsonArray = ##class(%DynamicArray).%New()

    // Loop through the list and format each item into JSON
    for i=1:1:pResults.Count() {
        set value = pResults.GetAt(i).Value

        // Create a temporary object to hold the value pair
        set tempObj = ##class(%DynamicObject).%New()
        set tempObj.value = value

        // Add the object to the array
        do jsonArray.%Push(tempObj)
    }

    // Convert the array to JSON string
	set pJsonString = jsonArray.%ToJSON()
}

}
