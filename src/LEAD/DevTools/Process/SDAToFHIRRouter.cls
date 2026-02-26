Class LEAD.DevTools.Process.SDAToFHIRRouter Extends (Ens.BusinessProcess, HS.HC.Util.Trace.Helper) [ ClassType = persistent ]
{

Method OnRequest(pRequest As CCD.Visualizer.Model.Record, Output pResponse As CCD.Visualizer.Model.Record) As %Status
{
	
	#Dim tSC As %Status = $$$OK
    #Dim SDAContainer As HS.SDA3.Container
    #Dim patientSDA As HS.SDA3.Patient
    #dim resourceJSON As HS.FHIR.DTL.Util.API.Transform.SDA3ToFHIR
    
	//Instantiate pResponse as clone of pRequest
    set pResponse = pRequest.%ConstructClone(1)

    Try {		
            if (pRequest.TransformName = "HL7ToAll"){ 
            set SDAStream = ##class(%Stream.TmpCharacter).%New()
		    do SDAStream.Write(pRequest.SDAContent.Read($$$MaxLocalLength))
		    do SDAStream.Rewind()    		
		    set resourceJSON = ##class(HS.FHIR.DTL.Util.API.Transform.SDA3ToFHIR).TransformStream(SDAStream, "HS.SDA3.Container","R4", "123","456")
            set resultStream = ##class(%Stream.TmpCharacter).%New()
            set result = resourceJSON.bundle.%ToJSON()
		    do resultStream.Write(result)
		    #; Prepare tResponse
		    set pResponse.SDAContent= ""
		    set pResponse.FHIRContent = resultStream			
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
<Data name="SDAToFHIRRouterDefaultData">
<Subscript>"SDAToFHIRRouter"</Subscript>
<Value name="1">
<Value>TraceOperations</Value>
</Value>
</Data>
<DefaultData>SDAToFHIRRouterDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
