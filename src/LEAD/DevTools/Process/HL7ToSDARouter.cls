Class LEAD.DevTools.Process.HL7ToSDARouter Extends (Ens.BusinessProcess, HS.HC.Util.Trace.Helper) [ ClassType = persistent ]
{

Method OnRequest(pRequest As CCD.Visualizer.Model.Record, Output pResponse As CCD.Visualizer.Model.Record) As %Status
{
	
	#Dim tSC As %Status = $$$OK
	//Instantiate pResponse as clone of pRequest
    set pResponse = pRequest.%ConstructClone(1)
   
    Try {
		if (pRequest.TransformName = "HL7ToSDA")||(pRequest.TransformName = "HL7ToAll"){ 
		    do pRequest.HL7Content.Rewind()
		    set tHL7 = pRequest.HL7Content.Read()
		    if '($Extract(tHL7, 0, 15)= "{""HL7Content"":""") $$$ThrowStatus($$$ERROR($$$GeneralError,"Expecting JSON to be formatted as {""HL7Content"":""Place HL7 message here with the \ in MSH:2 escaped with an additional \""}"))
		    set tHL7 = $Replace($Replace($Replace($Replace($Replace($Replace($Replace(tHL7,"""HL7Content""",""),":",""),"{",""),"}",""), """", ""), "\&","&"),"\n", $CHAR("13"))
			set HL7obj = ##class(EnsLib.HL7.Message).%New()
		    set HL7obj = HL7obj.ImportFromString(tHL7, .tSC)
		    set tSC = HL7obj.BuildMap()	
			set resourceSDA = ##class(%Stream.GlobalCharacter).%New()
			set tSC = ##class(HS.Gateway.HL7.HL7ToSDA3).GetSDA(HL7obj, .resourceSDA)
			do resourceSDA.Rewind()
			set pResponse.SDAContent = resourceSDA
			set pTempRequest = ##class(CCD.Visualizer.Model.Record).%New()
			set pTempResponse = ##class(CCD.Visualizer.Model.Record).%New()
			if (pRequest.TransformName = "HL7ToAll"){
				do resourceSDA.Rewind()
				set pTempRequest.SDAContent = resourceSDA
				set pTempRequest.TransformName = pRequest.TransformName
		   	    $$$ThrowOnError(..SendRequestSync("SDA_To_FHIR_Router", pTempRequest, .pTempResponse))
		   	    set pResponse.FHIRContent = pTempResponse.FHIRContent
		   	    set pTempResponse.FHIRContent = ""
		   	    $$$ThrowOnError(..SendRequestSync("SDA_To_CCD_Router", pTempRequest, .pTempResponse))
		   	    set pResponse.CCDContent = pTempResponse.CCDContent		   	    
			}else{
				set pResponse.HL7Content = ""
			}
			set pResponse.Response = "SUCCESS"			
        }   
        else {
	        Set pResponse.Response = "Error: Unrecognized Transform Name <"_pRequest.TransformName_">. Expecting HL7ToSDA or HL7ToAll"    
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
<Data name="HL7ToSDARouterDefaultData">
<Subscript>"HL7ToSDARouter"</Subscript>
<Value name="1">
<Value>TraceOperations</Value>
</Value>
</Data>
<DefaultData>HL7ToSDARouterDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
