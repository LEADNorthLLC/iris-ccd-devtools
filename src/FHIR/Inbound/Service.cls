Class FHIR.Inbound.Service Extends (Ens.BusinessService, HS.HC.Util.Trace.Helper)
{

/// Custom settings to display in the Production Editor.
Parameter SETTINGS = "TargetConfigName:FHIR Transform Settings,SDAToFHIRTargetConfigName:FHIR Transform Settings";

/// Configuration item(s) to which to send messages
/// Configuration item to which to send messages
Property TargetConfigName As Ens.DataType.ConfigName;

/// SDAToFHIR Configuration item to which to send messages
Property SDAToFHIRTargetConfigName As Ens.DataType.ConfigName;

Method OnProcessInput(pRequest As CCD.Visualizer.Model.Record, pResponse As CCD.Visualizer.Model.Record) As %Status
{
	#Dim tSC  As %Status = $$$OK

    #Dim eException  As %Exception.AbstractException

    //Instantiate response
    Set pResponse = pRequest.%ConstructClone(1)       
    
    Try {
	    if pRequest.TransformName = "SDAToFHIR" {
            $$$ThrowOnError(..SendRequestSync(..SDAToFHIRTargetConfigName, pRequest, .pResponse))
        }
        elseif pRequest.TransformName = "FHIRToSDA" {
		    $$$ThrowOnError(..SendRequestSync(..TargetConfigName, pRequest, .pResponse))
        }   
        else {
 
	        Set pResponse.Response = "Error: Unrecognized Transform Name <"_pRequest.TransformName_">. Expecting SDAToFHIR or FHIRToSDA"    
        } 
    }
    Catch eException {
	    Set pResponse.Response = "Error: "_eException.DisplayString()
	    Set tSC = $$$OK
    } 
	Quit tSC
}

}
