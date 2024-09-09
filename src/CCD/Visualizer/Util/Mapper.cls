Class CCD.Visualizer.Util.Mapper 
{


ClassMethod MapCCDToSDA(pInput As %Stream, Output pOutput As %Stream, pTransform As %String = "SDA3/CCDv21-to-SDA.xsl")
{

    //Load Pretransform and run
	Set tStatus = ##class(Ens.Util.URLStream).GetURLStream("xdata://" _ $THIS _ ":"_PreTransform1, .tPreTransform1)
		$$$ThrowOnError(tStatus)
	Set tStatus = ##class(%XML.XSLT.CompiledStyleSheet).CreateFromStream(tPreTransform1, .tCompiledStyleSheet)
	$$$ThrowOnError(tStatus)
	Set tStatus = ##class(%XML.XSLT.Transformer).TransformStreamWithCompiledXSL(tCCDBody, tCompiledStyleSheet, .tOutputStream,, .tParams, ##class(HS.Util.XSLTHelper).%New())
	$$$ThrowOnError(tStatus)
}

/*
ClassMethod TransformWithTemplate(pInput As %Stream, pXSLTemplate As %String, Output pOutput As %Stream)
{
    //Takes in the template and combines with the identity template to create a stylesheet
	set tXSLTemplate = ""
    //Load Identity Template
	Set tStatus = ##class(Ens.Util.URLStream).GetURLStream("xdata://" _ $THIS _ ":IdentityTemplateXSL", .tIdentityXSL)
	$$$ThrowOnError(tStatus)
	
    //How do I add to the XML stream?
	set tNewStyleSheet = ..AddXMLSnippetWithReader(tIdentityXSL, tXSLTemplate)


    Set tStatus = ##class(%XML.XSLT.CompiledStyleSheet).CreateFromStream(tXSLT, .tCompiledStyleSheet)
	$$$ThrowOnError(tStatus)
	Set tStatus = ##class(%XML.XSLT.Transformer).TransformStreamWithCompiledXSL(pInput, tCompiledStyleSheet, .tOutputStream,, .tParams, ##class(HS.Util.XSLTHelper).%New())
	$$$ThrowOnError(tStatus)
    set pOutput = tOutputStream
}

ClassMethod Tester() As %Stream.GlobalCharacter
{
    //Takes in the template and combines with the identity template to create a stylesheet
	set tXSLTemplate = "<xsl:template><xsl:value-of>Hello World!</xsl:value-of></xsl:template>"
    //Load Identity Template
	Set tStatus = ##class(Ens.Util.URLStream).GetURLStream("xdata://" _ $THIS _ ":IdentityTemplateXSL", .tIdentityXSL)
	$$$ThrowOnError(tStatus)
	
    //How do I add to the XML stream?
	set tNewStyleSheet = ..AddXMLSnippetWithReader(tIdentityXSL, tXSLTemplate)
	quit tNewStyleSheet
}

*/
ClassMethod ParseStylesheet(stream As %Stream.GlobalCharacter) As %Status
{
   //Load Identity Template
	Set tStatus = ##class(Ens.Util.URLStream).GetURLStream("xdata://" _ $THIS _ ":IdentityTemplateXSL", .tIdentityXSL)
	$$$ThrowOnError(tStatus)
	
	
    // Create an instance of the XML reader
    Set reader = ##class(%XML.Reader).%New()

    // Create an instance of the Stylesheet class
    //Set stylesheet = ##class(BCBSSC.Util.XSLT.Stylesheet).%New()
	
    // Open the XML stream for reading
    Do reader.OpenStream(tIdentityXSL)
	
    // Use the XML adaptor to read the stream into the Stylesheet class
    
    
	Do reader.Correlate("template","BCBSSC.Util.XSLT.Template")
	
	
    // Step 3: Loop through the templates in the stylesheet
    set tLoad = 1
   	While (tLoad '=0){
		set tLoad = reader.Next(.object, .status)
		write object.match,!  

	}
	

    Quit $$$OK
}

XData IdentityTemplateXSL
{
<?xml version="1.0"?>
<xsl:stylesheet xmlns:hl7="urn:hl7-org:v3"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:lcm="urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0"
	xmlns:rim="urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0" version="1.0" exclude-result-prefixes="rim">

	<xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>
	<xsl:template match="dummy">Test Value
	</xsl:template>


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

ClassMethod AddTemplate() As %Stream.GlobalCharacter
{
	set tXSLTemplate = "<xsl:template><xsl:value-of>Hello World!</xsl:value-of></xsl:template>"
	 //Load Identity Template
	Set tStatus = ##class(Ens.Util.URLStream).GetURLStream("xdata://" _ $THIS _ ":IdentityTemplateXSL", .tIdentityXSL)
	$$$ThrowOnError(tStatus)

    set status=##class(%XML.TextReader).ParseStream(tIdentityXSL,.textreader)
    //check status
    if $$$ISERR(status) {do $System.Status.DisplayError(status) quit}
    
     // Create a new stream to hold the modified XML
    Set modifiedStream = ##class(%Stream.GlobalCharacter).%New()
    // Initialize a variable to track the root element name
    Set rootElement = ""
    Set isRootClosing = 0
    
    //iterate through document, node by node
    while textreader.Read()
    {
	    write "NodeType: "_textreader.NodeType,!
	    write "Name: "_textreader.Name,!
	    write "Path: "_textreader.Path,!
		
		if textreader.NodeType = "startprefixmapping" {
			
			write "Value: "_textreader.Value
			}
	    //handle the start element
	    if textreader.NodeType = "element" {
		      //capture the rootElement if it's the first
	    	if rootElement = "" {
		    	set rootElement = textreader.Name
		    	write "this is the root: "_rootElement,!
			}
			
		    write "At node: "_textreader.Name,!
		    //write the start tag
		    do modifiedStream.Write("<"_textreader.Name)
		    
		    
		    // Add any attributes to the start tag
		    For a = 1:1:textreader.AttributeCount {
         		Do textreader.MoveToAttributeIndex(a)
         		Write textreader.LocalName," = ",textreader.Value,!
         		Set attrName = textreader.LocalName
                Set attrValue = textreader.Value
                Do modifiedStream.Write(" "_attrName_"="""_attrValue_"""")
     		}
     	
		    do modifiedStream.Write(">")
		    
		    }
		    elseif textreader.NodeType = "endelement" {
			    if textreader.Name = rootElement {
					write "This is the end: "_rootElement
					set isRootClosing =1 
					do modifiedStream.Write(tXSLTemplate)
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

ClassMethod WriteNodes()
{
	 //Load Identity Template
	Set tStatus = ##class(Ens.Util.URLStream).GetURLStream("xdata://" _ $THIS _ ":IdentityTemplateXSL", .tIdentityXSL)
	$$$ThrowOnError(tStatus)

    set status=##class(%XML.TextReader).ParseStream(tIdentityXSL,.textreader)
    //check status
    if $$$ISERR(status) {do $System.Status.DisplayError(status) quit}
    //iterate through document, node by node
    while textreader.Read()
    {
	    if textreader.Path = "/xsl:stylesheet" {
				write "We've hit the END!",!    
		    }
		
        Write !, "Node ", textreader.seq, " is a(n) "
        Write textreader.NodeType," "
        If textreader.Name'=""
        {
            Write "named: ", textreader.Name
            }
            Else
            {
                Write "and has no name"
                }
        Write !, "    path: ",textreader.Path
        If textreader.Value'="" 
        {
            Write !, "    value: ", textreader.Value
            }
        }
}

// Self-Contained tester class allows you to:

// 1. Modify an embedded XSL transform

// 2. Test against an input XML (feed in from XDATA block)

// 3. Print out the output to screen or file 

// Method: RunCCDTransform()

// Test from Terminal: HSCUSSTOM> do ##class(BCBSSC.Util.CCDXSLTester).RunCCDTransform()

// Runs a basic CCD to SDA transform on an input CCD. Modify the file ClassName and test 

// the results of the standard transform. 

ClassMethod RunNewCCDTransform()
{
	#dim message as HS.Message.XMLMessage
	Set ClassName = "BCBSSC.Util.LibertyCCDMessage02"
	Set XDataBody = "CCDBody"
	Set XDataHeader = "CCDPnRHeader"
	Set OutputDirectory = "/tmp/"
	Set SDAOutputFile = "SDAOutput.xml"
    Set StandardTransform = "SDA3/CCDv21-to-SDA.xsl"
	Set PreTransform1 = "RemoveExtraAuthorSections"
	Set PreTransform2 = "CopyGroupNameToHealthFundId"
    //Set StandardTransform = "SDA/CDA-to-SDA.xsl"  //from the /csp/xslt code base
    //Set StandardTransform = "C:/InterSystems/HealthShare/CSP/xslt/SDA/CCD-to-SDA.xsl"
    w ClassName
	//Load CCDBody  from XDATA blocks in <ClassName> class
	Set tStatus = ##class(Ens.Util.URLStream).GetURLStream("xdata://" _ ClassName _ ":"_XDataBody, .tCCDBody)
	$$$ThrowOnError(tStatus)
	

	//Load Pretransform and run
	Set tStatus = ##class(Ens.Util.URLStream).GetURLStream("xdata://" _ $THIS _ ":"_PreTransform1, .tPreTransform1)
		$$$ThrowOnError(tStatus)
	Set tStatus = ##class(%XML.XSLT.CompiledStyleSheet).CreateFromStream(tPreTransform1, .tCompiledStyleSheet)
	$$$ThrowOnError(tStatus)
	Set tStatus = ##class(%XML.XSLT.Transformer).TransformStreamWithCompiledXSL(tCCDBody, tCompiledStyleSheet, .tOutputStream,, .tParams, ##class(HS.Util.XSLTHelper).%New())
	$$$ThrowOnError(tStatus)

	//Load second pre-transform and chain the run
	/*
	Set tStatus = ##class(Ens.Util.URLStream).GetURLStream("xdata://" _ $THIS _ ":"_PreTransform2, .tPreTransform2)
		$$$ThrowOnError(tStatus)
	Set tStatus = ##class(%XML.XSLT.CompiledStyleSheet).CreateFromStream(tPreTransform2, .tCompiledStyleSheet)
	$$$ThrowOnError(tStatus)
	Set tStatus = ##class(%XML.XSLT.Transformer).TransformStreamWithCompiledXSL(tOutputStream, tCompiledStyleSheet, .tOutputStream2,, .tParams, ##class(HS.Util.XSLTHelper).%New())
	$$$ThrowOnError(tStatus)
	*/

    Set transformer = ##class(HS.Util.XSLTTransformer).%New()
	
	//Chain the standard call after the pre-transform
	//transform from processed CDA to SDA, results are put into a ##class(%Stream.TmpCharacter)
	//$$$ThrowOnError(transformer.Transform(tOutputStream, StandardTransform, .tOutputSDA))
    
	
    //Then write the output to a file so we can see it 
	do ..WriteContentToFile(OutputDirectory_SDAOutputFile, tOutputStream)
}

// Usage: to run from terminal or studio HSCUSTOM>do ##class(BCBSSC.Util.CCDXSLTester).RunCCDTransform()

ClassMethod RunCCDTransform()
{
	#dim message as HS.Message.XMLMessage
	Set ClassName = "BCBSSC.Util.MackeyCCDMessage01"
	Set XDataBody = "CCDBody"
	Set XDataHeader = "CCDPnRHeader"
	Set OutputDirectory = "/tmp/"
	Set SDAOutputFile = "SDAOutput.xml"
    Set StandardTransform = "SDA3/CCDv21-to-SDA.xsl"
    //Set StandardTransform = "SDA/CDA-to-SDA.xsl"  //from the /csp/xslt code base
    //Set StandardTransform = "C:/InterSystems/HealthShare/CSP/xslt/SDA/CCD-to-SDA.xsl"
    w ClassName
	//Load CCDBody and CCDHeader from XDATA blocks in <ClassName> class
	Set tStatus = ##class(Ens.Util.URLStream).GetURLStream("xdata://" _ ClassName _ ":"_XDataBody, .CCDBody)
	$$$ThrowOnError(tStatus)
	
    Set transformer = ##class(HS.Util.XSLTTransformer).%New()
	w CCDBody.Read(), !
    //transform from processed CDA to SDA, results are put into a ##class(%Stream.TmpCharacter)
	$$$ThrowOnError(transformer.Transform(CCDBody, StandardTransform, .tOutputSDA))
	w tOutputSDA.Read(), !
    //Then write the output to a file so we can see it 
    do tOutputSDA.Rewind()
	do ..WriteContentToFile(OutputDirectory_SDAOutputFile, tOutputSDA)
}

// Method: Run UsePatientRoleFacilityId 

// Test from Terminal: HSCUSSTOM> do ##class(BCBSSC.Util.CCDXSLTester).RunCopySubscriberIdFromHTML()

ClassMethod RunUsePatientRoleFacilityId()
{
	#dim message as HS.Message.XMLMessage
	Set ClassName = "BCBSSC.Util.LibertyCCDMessage01"
	Set XDataBody = "CCDBody"
	Set OutputDirectory = "/tmp/"
	Set OutputFile = "CCDOutput.xml"
	Set XSLName = "UsePatientRoleFacilityId"
    //Set StandardTransform = "SDA3/CCDv21-to-SDA.xsl"
    Set StandardTransform = "SDA/CDA-to-SDA.xsl"  //from the /csp/xslt code base
    //Set StandardTransform = "C:/InterSystems/HealthShare/CSP/xslt/SDA/CCD-to-SDA.xsl"
    Set XPath = "/hl7:ClinicalDocument/hl7:component/hl7:structuredBody/hl7:component/hl7:section[hl7:templateId/@root='2.16.840.1.113883.10.20.22.2.18']/hl7:text/hl7:table/hl7:tbody/hl7:tr/hl7:td[hl7:content/text()='Member ID: ']/hl7:content[2]/text()"
	//Load CCDBody from XDATA blocks in <ClassName> class
	Set tStatus = ##class(Ens.Util.URLStream).GetURLStream("xdata://" _ ClassName _ ":"_XDataBody, .CCDBody)
	$$$ThrowOnError(tStatus)
	

		// How to check the value of an XPATH
	write "Find the current value of facility ids", ! 
	Set tExpressionRight = "/hl7:ClinicalDocument/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:id/@root"
	
	Set tItem = "value()"
	
	Set tStatus = ##class(HS.IHE.Util).GetXPathValue(CCDBody,tExpressionRight,tItem,.tFacilityId)
	$$$ThrowOnError(tStatus)
	
	w "id: "_tFacilityId, !


	Set tParams = ""
			
	// Do the XSL Transform from XDATA block in this file
	Set tStatus = ##class(Ens.Util.URLStream).GetURLStream("xdata://" _ $THIS _ ":"_XSLName, .tCCDTransform)
	$$$ThrowOnError(tStatus)
	Set tStatus = ##class(%XML.XSLT.CompiledStyleSheet).CreateFromStream(tCCDTransform, .tCompiledStyleSheet)
	$$$ThrowOnError(tStatus)
	Set tStatus = ##class(%XML.XSLT.Transformer).TransformStreamWithCompiledXSL(CCDBody, tCompiledStyleSheet, .pOutputStream,, .tParams, ##class(HS.Util.XSLTHelper).%New())
	$$$ThrowOnError(tStatus)
	
    do ..WriteContentToFile(OutputDirectory_OutputFile, pOutputStream)
	Quit tStatus    //Then write the output to a file so we can see it
}

// Method: RunCopySubscriberIdFromHTML()

// Test from Terminal: HSCUSSTOM> do ##class(BCBSSC.Util.CCDXSLTester).RunCopySubscriberIdFromHTML()

ClassMethod RunCopySubscriberIdFromHTML()
{
	#dim message as HS.Message.XMLMessage
	Set ClassName = "BCBSSC.Util.MackeyCCDMessage01"
	Set XDataBody = "CCDBody"
	Set XDataHeader = "CCDPnRHeader"
	Set OutputDirectory = "/tmp/"
	Set SDAOutputFile = "SDAOutput.xml"
	Set XSLName = "CopySubscriberIdFromHTML"
    //Set StandardTransform = "SDA3/CCDv21-to-SDA.xsl"
    Set StandardTransform = "SDA/CDA-to-SDA.xsl"  //from the /csp/xslt code base
    //Set StandardTransform = "C:/InterSystems/HealthShare/CSP/xslt/SDA/CCD-to-SDA.xsl"
    Set XPath = "/hl7:ClinicalDocument/hl7:component/hl7:structuredBody/hl7:component/hl7:section[hl7:templateId/@root='2.16.840.1.113883.10.20.22.2.18']/hl7:text/hl7:table/hl7:tbody/hl7:tr/hl7:td[hl7:content/text()='Member ID: ']/hl7:content[2]/text()"
	//Load CCDBody from XDATA blocks in <ClassName> class
	Set tStatus = ##class(Ens.Util.URLStream).GetURLStream("xdata://" _ ClassName _ ":"_XDataBody, .CCDBody)
	$$$ThrowOnError(tStatus)
	

		// How to check the value of an XPATH
	write "Find the current value of MemberID from HTML", ! 
	Set tExpressionRight = "/hl7:ClinicalDocument/hl7:component/hl7:structuredBody/hl7:component/hl7:section[hl7:templateId/@root='2.16.840.1.113883.10.20.22.2.18']/hl7:text/hl7:table/hl7:tbody/hl7:tr/hl7:td[contains(hl7:content/text(),'Member ID:')]/hl7:content[2]"
	
	Set tItem = "text()"
	
	Set tStatus = ##class(HS.IHE.Util).GetXPathValue(CCDBody,tExpressionRight,tItem,.tMemberId)
	$$$ThrowOnError(tStatus)
	
	w "Member ID: "_tMemberId, !


	Set tParams = ""
			
	// Do the XSL Transform from XDATA block in this file
	//Set tStatus = ##class(Ens.Util.URLStream).GetURLStream("xdata://" _ $THIS _ ":"_XSLName, .tCCDTransform)
	//$$$ThrowOnError(tStatus)
	//Set tStatus = ##class(%XML.XSLT.CompiledStyleSheet).CreateFromStream(tCCDTransform, .tCompiledStyleSheet)
	//$$$ThrowOnError(tStatus)
	//Set tStatus = ##class(%XML.XSLT.Transformer).TransformStreamWithCompiledXSL(CCDBody, tCompiledStyleSheet, .pOutputStream,, .tParams, ##class(HS.Util.XSLTHelper).%New())
	//$$$ThrowOnError(tStatus)
	
    //do ..WriteContentToFile(OutputDirectory_SDAOutputFile, pOutputStream)
	Quit tStatus    //Then write the output to a file so we can see it
}

// Usage: do ##class("BCBSSC.Util.XSLTester").WriteContentToFile("C:/temp/output.xml", pStream)

ClassMethod WriteContentToFile(pOutputFile As %String, pContent As %Stream.Object) As %String
{
    set returnVal = ""
   set dir=##class(%File).GetDirectory(pOutputFile)
   do ##class(%File).CreateDirectoryChain(dir)
    Set fileObj = ##class(%File).%New(pOutputFile)


    Set status = fileObj.Open("WSN") 
    do fileObj.Write(pContent.Read())
    If ($SYSTEM.Status.IsError(status)) {
        do $system.Status.DisplayError(status)
        quit $$$NULLOREF
    }
     do fileObj.Close()
     set returnVal = "File opened: "_pOutputFile
     Quit returnVal
}


}