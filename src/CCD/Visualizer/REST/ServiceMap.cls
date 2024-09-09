/// Directs requests to the appropriate class
Class CCD.Visualizer.REST.ServiceMap Extends CCD.Visualizer.REST.Service.Base
{

/** Change Log
2024-01-20 - Chi Nguyen-Rettig: initial
**/
/// Require Cross-origin resource sharing handling.
Parameter HandleCorsRequest = 1;

/// Use Session for REST Services
Parameter UseSession = 1;

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>
    <Route Url="/transform/:pType" Method="POST" Call="CCD.Visualizer.REST.Transform:TransformRouter"/>
	<Route Url="/xpath/" Method="POST" Call="GetXPath"/>
  </Routes>
}

ClassMethod GetXPath() As %Status
{
	Set tSC = $$$OK
	
		set ^zJLog = "Get XPath"
		//Get the XPath value -- this is already a dynamic object
		set ^zJDataRaw = %request.Content
		set ^zJLog = "Set data"
		Set data = %request.Content
		
		//set ^zJData = data
		Set tRequest = ##class(CCD.Visualizer.Model.Record).%New()
		set ^zJLog = "json PARSE"
    	$$$THROWONERROR(tSC,tRequest.%JSONImport(data))
		set ^zJLog = "JSON IMPORT"
		//set tXPath = %request.ContentGet("XPathForEval")
		//set tXML = %request.ContentGet("CCDContentXML")
		set tXPath = tRequest.XPathForEval
		set ^zJLog = "Got content"
		set ^zJData = tXPath
		set tCCDContent = tRequest.CCDContentXML
		set ^zJData2 = tCCDContent
		#;Dispatch request to production
		#Dim tResponse as CCD.Visualizer.Model.Record

		Set pRequest = ##class(CCD.Visualizer.Model.Record).%New()
		#;CNR: Need to grab input stream off of the request and copy it to pRequest object
		
		#dim oStream As %Stream.GlobalCharacter = ##class(%Stream.GlobalCharacter).%New()
		
		
		//do oStream.CopyFrom(tXML)
		Set pRequest.XPathForEval = tXPath
		//Set pRequest.CCDContentXML=oStream
		set ^zJLog="Calling Transform"
		set ^zJXPath=tXPath
		//set ^zJContent = oStream.Read()
		//do oStream.Rewind()

		//If $$$ISERR(tResponse.Status) {
		//	Set %response.Status = ..#HTTP500INTERNALSERVERERROR
		//}
		//Set tResponse = ##class(CCD.Visualizer.Model.Record).%New()
		
		#;Write response
		//Set %response.ContentType="application/xml"
		//$$$ThrowOnError(tResponse.XMLExportToStream(.tStream))
		
		
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
		

		//Do tStream.OutputToDevice()

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
        set tRestrictCORS=$GET(^DQAT.RESTRICTCORS,0) 
		set tAllowedOrigin=$GET(^DQAT.ALLOWEDORIGIN,"http://localhost:63772") 
		if ((tAllowedOrigin=tOrigin) || (tRestrictCORS=0))
		{       
	        #; Allow requested origin
	        Do ..SetResponseHeaderIfEmpty("Access-Control-Allow-Origin",tOrigin)
	       
	        #; Set allow credentials to be true
	        Do ..SetResponseHeaderIfEmpty("Access-Control-Allow-Credentials","true")
	        
	        #; Allow requested headers
	        Set tHeaders=$Get(%request.CgiEnvs("HTTP_ACCESS_CONTROL_REQUEST_HEADERS"))
	        Do ..SetResponseHeaderIfEmpty("Access-Control-Allow-Headers",tHeaders)
	        
	        #; Allow requested method
	        Set tMethod=$Get(%request.CgiEnvs("HTTP_ACCESS_CONTROL_REQUEST_METHOD"))
	        Do ..SetResponseHeaderIfEmpty("Access-Control-Allow-Methods",tMethod)
		}
        
    } Catch (e) {
        Set tSC=e.AsStatus()
    }
    Quit tSC
}

}
