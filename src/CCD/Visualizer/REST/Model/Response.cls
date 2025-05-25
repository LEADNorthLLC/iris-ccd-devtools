Class CCD.Visualizer.REST.Model.Response Extends (Ens.Response, %JSON.Adaptor) [ Inheritance = right ]
{

    Property Status As %String(MAXLEN = 10, VALUELIST = ",success,error");

    Property Message As %String(MAXLEN = "");

    Property Errors As list Of %String(MAXLEN = "");
}