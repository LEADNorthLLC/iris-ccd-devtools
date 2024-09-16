/// Directs requests to the appropriate class
Class CCD.Visualizer.REST.ServiceMap Extends CCD.Visualizer.REST.Service.Base
{

/** Change Log
2024-01-20 - Chi Nguyen-Rettig: initial
**/
/// Enable Cross-origin resource sharing handling.
Parameter HandleCorsRequest = 1;

/// Use Session for REST Services
Parameter UseSession = 1;

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>
    <Route Url="/transform/:pType" Method="POST" Call="CCD.Visualizer.REST.Transform:TransformRouter"/>
	<Route Url="/xpath/" Method="POST" Call="GetXPathValue"/>
	<Route Url="/transform/" Method="POST" Call="TransformCCD"/>
	<Route Url="/xslt/" Method="POST" Call="TestXSL"/>
  </Routes>
}



ClassMethod GetXPathValue() As %Status
{
	Set tSC = $$$OK
	
		
		If (%request.ContentType '= "multipart/form-data") {	
			//If $$$TESTMODE W "Request header type not supported, change to 'multipart/form-data'"
			Set %response.Status = ..#HTTP406NOTACCEPTABLE
			QUIT
		}
		
		// The Data should contain 2 parts, the first is JSON metadata, the second is the file data.
		// If we have MIME Data, then this is coming from Ensemble.  If we have Data then it is coming over from Angular / JQuery.
		
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
			set tXPath = tRequest.XPathForEval
			
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
			If $$$TESTMODE W "Request header type not supported, change to 'multipart/form-data'"
			Set %response.Status = ..#HTTP406NOTACCEPTABLE
			QUIT
		}
		
	
		
		Set %response.Status = ..#HTTP200STATUSOK
		
		//If $$$ISERR(tResponse.Status) {
		//	Set %response.Status = ..#HTTP500INTERNALSERVERERROR
		//}
		//Set tResponse.Status = ""
		
		#;Write output		
		If $Get(%request.CgiEnvs("HTTP_ACCEPT"),"*/*") [ "application/xml" {
			Set %response.ContentType="application/xml"
			Set tStream=##class(%Stream.GlobalCharacter).%New()	
			//$$$ThrowOnError(tResponse.XMLExportToStream(.tStream))
		} 
		Else {
			do ..GetLocationValuesMultiple(tFileStream,tXPath, .tValue)

			//format results into JSON
			do ..FormatResultsToJSON(tValue, .tJsonString)
			Set %response.ContentType="application/json"
			Set tStream=##class(%Stream.GlobalCharacter).%New()	

			do tStream.Write(tJsonString)
			//Do he evaluation
		}
		Do tStream.OutputToDevice()
		
		#; Clean up the QuickStream.
		//if $ISOBJECT(tFileStream) {		
		//	Do tFileStream.Clear(1)
		//}
	
	Quit tSC
}

ClassMethod TransformCCD() As %Status
{
	Set tSC = $$$OK

	Do %response.SetHeader("Access-Control-Allow-Origin","*")

	
	try {
		If (%request.ContentType '= "multipart/form-data") {	
			//If $$$TESTMODE W "Request header type not supported, change to 'multipart/form-data'"
			Set %response.Status = ..#HTTP406NOTACCEPTABLE
			QUIT
		}
		
		// The Data should contain 2 parts, the first is JSON metadata, the second is the file data.
		// If we have MIME Data, then this is coming from Ensemble.  If we have Data then it is coming over from Angular / JQuery.
		
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
			set ^zTransformName = tTransformName
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
			If $$$TESTMODE W "Request header type not supported, change to 'multipart/form-data'"
			Set %response.Status = ..#HTTP406NOTACCEPTABLE
			QUIT
		}
		
	
		Set %response.Status = ..#HTTP200STATUSOK
		

		Set transformer = ##class(HS.Util.XSLTTransformer).%New()
		
		$$$ThrowOnError(transformer.Transform(tFileStream, tTransformName, .tOutputSDA))
		

		Set tResponse = ##class(CCD.Visualizer.Model.Record).%New()
		set tResponse.SDAContentXML = tOutputSDA

		//If $$$ISERR(tResponse.Status) {
		//	Set %response.Status = ..#HTTP500INTERNALSERVERERROR
		//}
		//Set tResponse.Status = ""
		
		#;Write response
		Set %response.ContentType="application/xml"
		$$$ThrowOnError(tResponse.XMLExportToStream(.tStream))
		
		
		//If $Get(%request.CgiEnvs("HTTP_ACCEPT"),"*/*") [ "application/xml" {
		//	Set %response.ContentType="application/xml"
		//	$$$ThrowOnError(tResponse.XMLExportToStream(.tStream))
		//} 
		//Else {
		//	Set %response.ContentType="application/json"
		//	#;Write output 
		//	Set tStream=##class(%Stream.GlobalCharacter).%New()		
		//	$$$ThrowOnError(##class(HS.Local.Visualizer.Model.Record).toJSON(tResponse, .tStream))
		//}
		

		Do tStream.OutputToDevice()
	}
	Catch Ex {
		Set tSC = Ex.AsStatus()
		
		Set %response.Status = ..#HTTP500INTERNALSERVERERROR
		set ^zJStatus=tSC
		
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
		//If $$$TESTMODE W "Request header type not supported, change to 'multipart/form-data'"
		Set %response.Status = ..#HTTP406NOTACCEPTABLE
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
		If $$$TESTMODE W "Request header type not supported, change to 'multipart/form-data'"
		Set %response.Status = ..#HTTP406NOTACCEPTABLE
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
	Set %response.Status = ..#HTTP200STATUSOK
	Set %response.ContentType="application/xml"
	$$$ThrowOnError(tResponse.XMLExportToStream(.tStream))

	Do tStream.OutputToDevice()

	Quit tSC
}


/// Handle Cross-origin resource sharing
ClassMethod OnHandleCorsRequest(pURL As %String) As %Status
{
	
	#dim tSC As %Status = $$$OK
    #dim e As %Exception.AbstractException
    
    #dim %request As %CSP.Request
    #dim %response As %CSP.Response
    
    #dim tOrigin,tHeaders,tMethod As %String
    
    Try {
        
        #; Get the origin
        Set tOrigin=$Get(%request.CgiEnvs("HTTP_ORIGIN"))
        set tRestrictCORS=0
		set tAllowedOrigin="http://localhost:3000"
		Set ^zCors="CORS called:HandleRequest"
		Do %response.SetHeader("Access-Control-Allow-Origin","*")
		if ((tAllowedOrigin=tOrigin) || (tRestrictCORS=0))
		{       
	        #; Allow requested origin
	        Do ..SetResponseHeaderIfEmpty("Access-Control-Allow-Origin",tOrigin)
	       
	    #;     #; Set allow credentials to be true
	    #;     Do ..SetResponseHeaderIfEmpty("Access-Control-Allow-Credentials","true")
	        
	    #;     #; Allow requested headers
	    #;     Set tHeaders=$Get(%request.CgiEnvs("HTTP_ACCESS_CONTROL_REQUEST_HEADERS"))
	    #;     Do ..SetResponseHeaderIfEmpty("Access-Control-Allow-Headers",tHeaders)
	        
	    #;     #; Allow requested method
	    #;     Set tMethod=$Get(%request.CgiEnvs("HTTP_ACCESS_CONTROL_REQUEST_METHOD"))
	    #;     Do ..SetResponseHeaderIfEmpty("Access-Control-Allow-Methods",tMethod)
		}
        
    } Catch (e) {
        Set tSC=e.AsStatus()
    }
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
