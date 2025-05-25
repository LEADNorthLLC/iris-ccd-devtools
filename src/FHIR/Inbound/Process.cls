Class FHIR.Inbound.Process Extends (Ens.BusinessProcess, HS.HC.Util.Trace.Helper) [ ClassType = persistent ]
{

Property TargetConfigName As %String;

Property MMITargetName As %String;

Parameter SETTINGS = "TargetConfigName:Routing, MMITargetName:Routing";

Method OnRequest(pRequest As CCD.Visualizer.Model.Record, Output pResponse As CCD.Visualizer.Model.Record) As %Status
{
	
	#Dim tSC As %Status = $$$OK
    #Dim SDAContainer As HS.SDA3.Container
    #Dim patientSDA As HS.SDA3.Patient
    
    Try {
	    
		if pRequest.TransformName = "SDAToFHIR" {
			set resourceSDA = ##class(%Stream.TmpCharacter).%New()
			
			do resourceSDA.CopyFrom(pRequest.SDAContentStream)


			#dim resourceJSON As HS.FHIR.DTL.Util.API.Transform.SDA3ToFHIR
			set resourceJSON = ##class(HS.FHIR.DTL.Util.API.Transform.SDA3ToFHIR).TransformStream(resourceSDA, "HS.SDA3.Container", "R4")
        	Set ^zStatus = "SDA to FHIR done"
			//Instantiate pResponse as clone of pRequest
        	set pResponse = pRequest.%ConstructClone(1)
			set ^zfhirData = resourceJSON.bundle.%ToJSON(resultJSON)
			set ^zfhirData = resultJSON
        	#; $$$ThrowOnError(resourceJSON.bundle.%ToJSON(pResponse.FHIRContentJSON))
			Set ^zStatus = "SDA to FHIR copied to FHIRContentJSON"
			set pResponse.Response = "SUCCESS"
        }
        elseif pRequest.TransformName = "FHIRToSDA" {
			//Already a dynamic object
			set resourceJSON = pRequest.FHIRContentJSON   
			set resourceSDA = ##class(HS.FHIR.DTL.Util.API.Transform.FHIRToSDA3).TransformStream(resourceJSON,"R4","JSON")

        	//Instantiate pResponse as clone of pRequest
        	set pResponse = pRequest.%ConstructClone(1)

        	$$$ThrowOnError(resourceSDA.container.XMLExportToStream(pResponse.SDAContentStream))
			set pResponse.Response = "SUCCESS"
        }   
        else {
            Set pResponse = pRequest.%ConstructClone(1)
	        Set pResponse.Response = "Error: Unrecognized Transform Name <"_pRequest.TransformName_">. Expecting SDAToFHIR or FHIRToSDA"    
        } 		
    }
    Catch eException {
	    Set pResponse = ##class(CCD.Visualizer.Model.Record).%New()
	    Set pResponse.Response = "ERROR: "_eException.DisplayString()
	    Set tSC = eException.AsStatus()
    } 
	Quit tSC
}

Storage Default
{
<Data name="ProcessDefaultData">
<Subscript>"Process"</Subscript>
<Value name="1">
<Value>TargetConfigName</Value>
</Value>
<Value name="2">
<Value>MMITargetName</Value>
</Value>
<Value name="3">
<Value>TraceOperations</Value>
</Value>
</Data>
<DefaultData>ProcessDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
