Class LEAD.DevTools.Process.SDAToCCDRouter Extends (Ens.BusinessProcess, HS.HC.Util.Trace.Helper) [ ClassType = persistent ]
{

Method OnRequest(pRequest As CCD.Visualizer.Model.Record, Output pResponse As CCD.Visualizer.Model.Record) As %Status
{

    
	//Instantiate pResponse as clone of pRequest
    set pResponse = pRequest.%ConstructClone(1)

    Try {		
            if (pRequest.TransformName = "HL7ToAll"){ 
           		    
           		    // Transform the SDA3 to a C-CDA
                    set tTransformer = ##class(HS.Util.XSLTTransformer).%New()
                    set tSC= tTransformer.Transform(pRequest.SDAContent,"SDA3/SDA-to-CCDA-CCD.xsl",.tCDAStream)
                    Quit:$$$ISERR(tSC)
                    set pResponse.SDAContent= ""
                    set pResponse.CCDContent = tCDAStream
                    set pResponse.Response = "SUCCESS"
		    }   
        else {
	        Set pResponse.Response = "Error: Unrecognized Transform Name <"_pRequest.TransformName_">. Expecting HL7ToAll"    
        } 	
 		
    }
    Catch eException {
	    Set pResponse.Response = "ERROR: "_eException.DisplayString()
	    Set tSC = $$$OK
    } 
	Quit tSC
}

Storage Default
{
<Data name="SDAToCCDRouterDefaultData">
<Subscript>"SDAToCCDRouter"</Subscript>
<Value name="1">
<Value>TraceOperations</Value>
</Value>
</Data>
<DefaultData>SDAToCCDRouterDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
