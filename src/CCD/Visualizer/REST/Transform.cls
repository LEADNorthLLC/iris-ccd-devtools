Class CCD.Visualizer.REST.Transform Extends %CSP.REST
{

/** Change Log
2024-01-20 - Chi Nguyen-Rettig : Created
**/
/// Require Cross-origin resource sharing handling.
/// /// <BR> Mapped through DataQuality.DQ.Prd.REST.ServiceMap
/// <BR> PREFIX:  /Transform
/// <BR> EXAMPLES:
/// <BR> 	Method:POST
/// <BR> 	URL: http://localhost:57773/csp/visualizer/service/transform
/// <BR> 
Parameter HandleCorsRequest = 1;

/// Use Session for REST Services
Parameter UseSession = 1;

XData UrlMap
{
<Routes>
	<!-- <Route Url="/Transform" Method="POST" Call="TransformCCD" /> -->
</Routes>
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
		set tAllowedOrigin=$GET(^DQAT.ALLOWEDORIGIN,"http://localhost:57773") 
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

/// Invoke the Transform service with input stream
/// Complete a batch. 
/// <BR> INPUT
/// <BR> 		
/// <BR> OUTPUT
/// <BR> 		CCD.VisualizerModel.Record
/// 
ClassMethod TransformRouter(pType As %String) As %Status
{
	Set tSC = $$$OK
	Try {
		
		#;Dispatch request to production
		#Dim tResponse as CCD.Visualizer.Model.Record

		Set pRequest = ##class(CCD.Visualizer.Model.Record).%New()
		#;CNR: Need to grab input stream off of the request and copy it to pRequest object
		
		#dim oStream As %Stream.GlobalCharacter = ##class(%Stream.GlobalCharacter).%New()
		
		set Body = %request.ContentGet()

		set ^zMessageType = pType
		
		
		do oStream.CopyFrom(Body)
		set ^zJStatus=Body
		if pType = "HL7" {
			set ^zBody = Body
			set pRequest.HL7Content=oStream
			$$$ThrowOnError(##class(CCD.Visualizer.REST.Service.TransformService).TransformHL7Manual(pRequest, .tResponse))
		}
		else {
			Set pRequest.CCDContentXML=oStream
		}
		//set ^zJStatus="Calling Transform"
		//$$$ThrowOnError(##class(CCD.Visualizer.REST.Service.TransformService).TransformCCDToSDA(pRequest, .tResponse))
		
		//CNR: Wrote this class but lost it....need to rewrite it
		//Set mapper = ##class(CCD.Visualizer.Util.Mapper).%New()
		//$$$ThrowOnError(mapper.ConsumeDocument(Body, .SDAResult))
		
		//set ^zJStatus=SDAResult.Read()
		//do SDAResult.Rewind()
		
		Set tResponse = ##class(CCD.Visualizer.Model.Record).%New()
		//set tResponse.SDAContentXML = SDAResult

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
		//	$$$ThrowOnError(##class(CCD.Visualizer.Model.Record).toJSON(tResponse, .tStream))
		//}
		

		Do tStream.OutputToDevice()
	}
	Catch Ex {
		Set tSC = Ex.AsStatus()
		
		Set %response.Status = ..#HTTP500INTERNALSERVERERROR
		set ^zJStatus=tSC
		Set tSC = $$$OK
	}
	Quit tSC
}

ClassMethod TransformCCD() As %Status
{
	Set tSC = $$$OK
	Try {
		
		#;Dispatch request to production
		#Dim tResponse as CCD.Visualizer.Model.Record

		Set pRequest = ##class(CCD.Visualizer.Model.Record).%New()
		#;CNR: Need to grab input stream off of the request and copy it to pRequest object
		
		#dim oStream As %Stream.GlobalCharacter = ##class(%Stream.GlobalCharacter).%New()
		
		set Body = %request.ContentGet()
		
		do oStream.CopyFrom(Body)
		set ^zJStatus=Body
		Set pRequest.CCDContentXML=oStream
		set ^zJStatus="Calling Transform"
		Set mapper = ##class(CCD.Visualizer.Util.Mapper).%New()
		//Run XSL transform against CCD Body
		//Sample Use case #1: Replace value at patientRole/id/@root inside the CCD body
		
		
		$$$ThrowOnError(mapper.MapCCDToSDA(Body, .SDAResult))
		
		set ^zJStatus=SDAResult.Read()
		do SDAResult.Rewind()
		
		Set tResponse = ##class(CCD.Visualizer.Model.Record).%New()
		set tResponse.SDAContentXML = SDAResult

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
		Set tSC = $$$OK
	}
	Quit tSC
}

ClassMethod GetXPath() As %Status
{
	Set tSC = $$$OK
	Try {
		set ^zJStatus = "Started"
		//Get the XPath value
		set tXPath = %request.ContentGet("XPathForEval")
		set tXML = %request.ContentGet("CCDContentXML")
		#;Dispatch request to production
		#Dim tResponse as CCD.Visualizer.Model.Record

		Set pRequest = ##class(CCD.Visualizer.Model.Record).%New()
		#;CNR: Need to grab input stream off of the request and copy it to pRequest object
		
		#dim oStream As %Stream.GlobalCharacter = ##class(%Stream.GlobalCharacter).%New()
		
		
		do oStream.CopyFrom(tXML)
		Set pRequest.XPathForEval = tXPath
		Set pRequest.CCDContentXML=oStream
		set ^zJStatus="Calling Transform"
		set ^zJXPath=tXPath
		set ^zJContent = oStream.Read()
		do oStream.Rewind()

		//If $$$ISERR(tResponse.Status) {
		//	Set %response.Status = ..#HTTP500INTERNALSERVERERROR
		//}
		Set tResponse = ##class(CCD.Visualizer.Model.Record).%New()
		
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
		Set tSC = $$$OK
	}
	Quit tSC
}

// AddTemplate method takes in a template and adds it to the identity template
// pXSLTemplate: A string with the template contents enclosed in tags <xsl:template></xsl:template>
// pIdentityTemplate: A string with the name of an XDATA block that contains the base stylesheet to be added to
ClassMethod AddTemplate(pXSLTemplate As %String, pIdentityTemplate As %String = "IdentityTemplateXSL") As %Stream.GlobalCharacter
{
	Set tStatus = ##class(Ens.Util.URLStream).GetURLStream("xdata://" _ $THIS _ ":"_pIdentityTemplate, .tIdentityXSL)
	$$$ThrowOnError(tStatus)

    set status=##class(%XML.TextReader).ParseStream(tIdentityXSL,.textreader)
    //check status
    if $$$ISERR(status) {do $System.Status.DisplayError(status) quit}
    
     // Create a new stream to hold the modified XML
    Set modifiedStream = ##class(%Stream.GlobalCharacter).%New()
    // Initialize a variable to track the root element name
    Set rootElement = ""
    Set isRootClosing = 0
    Set tPrefixes = ##class(%ListOfDataTypes).%New()
    
    //iterate through document, node by node
    while textreader.Read()
    {
		if textreader.NodeType = "startprefixmapping" {
			Set tValue =$PIECE(textreader.Value," ",2) 
			Do tPrefixes.Insert("xmlns:"_textreader.Name_"="""_tValue_"""")	
		}
	    //handle the start element
	    if textreader.NodeType = "element" {
		    //capture the rootElement if it's the first
	    	if rootElement = "" {
		    	set rootElement = textreader.Name
		    	Do modifiedStream.Write("<"_rootElement)
		    	
		    	//Add prefixes
		    	for i=1:1:tPrefixes.Count() {
			    	Do modifiedStream.Write(" "_tPrefixes.GetAt(i)_" ")	
			    }
			}
			else {
		    	// Write the start tag 
            	Do modifiedStream.Write("<"_textreader.Name)
			}

            // Add any attributes to the start tag
		   	For a = 1:1:textreader.AttributeCount {
         		Do textreader.MoveToAttributeIndex(a)
         		Set attrName = textreader.LocalName
                Set attrValue = textreader.Value
                Do modifiedStream.Write(" "_attrName_"="""_attrValue_"""")
     		}
		    do modifiedStream.Write(">")
		    
		    }
		    elseif textreader.NodeType = "endelement" {
			    if textreader.Name = rootElement {
					#; Append the new template
					set isRootClosing =1 
					do modifiedStream.Write(pXSLTemplate)
				}
			    // Write the closing tag
            	Do modifiedStream.Write("</"_textreader.Name_">")
			}
			elseif textreader.NodeType = "chars" {
		        Do modifiedStream.Write(textreader.Value)
        }	
    }
    Quit modifiedStream
}

XData IdentityTemplateXSL
{
<?xml version="1.0"?>
<xsl:stylesheet xmlns:hl7="urn:hl7-org:v3"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:lcm="urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0"
	xmlns:rim="urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0" version="1.0" exclude-result-prefixes="rim">

	<xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>

    <!-- Template to normalize space in text nodes -->
    <xsl:template match="text()">
        <xsl:value-of select="normalize-space(.)"/>
    </xsl:template>
	<!-- Template to process the target XPath -->
  		<!--This is the identity template that copies everything to output -->
	<xsl:template match="//@* | //node()">
		<xsl:copy>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="node()"/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
}



}
