Class LEAD.DevTools.Service.FromHL7REST Extends (Ens.BusinessService, HS.HC.Util.Trace.Helper)
{

/// Custom settings to display in the Production Editor.
Parameter SETTINGS = "TargetConfigName:HL7 Transform Settings";

/// Configuration item to which to send messages
Property TargetConfigName As Ens.DataType.ConfigName [ InitialExpression = "HL7_To_SDA_Router" ];

Method OnProcessInput(pRequest As CCD.Visualizer.Model.Record, pResponse As CCD.Visualizer.Model.Record) As %Status
{
	#Dim tSC  As %Status = $$$OK
    #Dim eException  As %Exception.AbstractException

    //Instantiate response
    Set pResponse = pRequest.%ConstructClone(1)       
    
    Try {
		if (pRequest.TransformName = "HL7ToSDA")||(pRequest.TransformName = "HL7ToAll")  {
		    $$$ThrowOnError(..SendRequestSync(..TargetConfigName, pRequest, .pResponse))
        }    
        else { 
	        Set pResponse.Response = "Error: Unrecognized Transform Name <"_pRequest.TransformName_">. Expecting HL7ToSDA or HL7ToAll"    
        } 
    }
    Catch eException {
	    Set pResponse.Response = "Error: "_eException.DisplayString()
	    Set tSC = $$$OK
    } 
	Quit tSC
}

}
