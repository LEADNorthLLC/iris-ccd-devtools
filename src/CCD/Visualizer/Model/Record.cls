Class CCD.Visualizer.Model.Record Extends (%Persistent, %XML.Adaptor, %JSON.Adaptor)
{

Property TransformName As %String(MAXLEN = 100) [ InitialExpression = "" ];

Property XPathForEval As %String(MAXLEN = 500);

Property Response As %String(MAXLEN = 1024);

// Property Error As %Status [ InitialExpression = {$$$OK} ];

// Property ErrorLoc As %String(MAXLEN = 500);

// Property HL7Content As %Stream.Object;

/// Record holds possible streams
/// CCD XML Content: CCDContentXML
/// SDA XML Content: SDAContentXML
/// HL7 Content: HL7Content
/// This property will be populated if there was an error pulling this record durring evaluation.  No results will link to this record
/// This property is populated along with Error
/// HL7 Content
/// CCD XML Content
Property CCDContentXML As %Stream.Object;

Property SDAContentXML As %Stream.Object;

Property SDAContentStream As %Stream.GlobalBinary;

Property FHIRContentJSON As %Stream.GlobalBinary;

Property FHIRContentJSONString As %Stream.Object;

Storage Default
{
<Data name="RecordDefaultData">
<Subscript>"Record"</Subscript>
<Value name="1">
<Value>TransformName</Value>
</Value>
<Value name="2">
<Value>XPathForEval</Value>
</Value>
<Value name="3">
<Value>Response</Value>
</Value>
<Value name="4">
<Value>CCDContentXML</Value>
</Value>
<Value name="5">
<Value>SDAContentXML</Value>
</Value>
<Value name="6">
<Value>FHIRContentJSON</Value>
</Value>
<Value name="7">
<Value>SDAContentStream</Value>
</Value>
<Value name="8">
<Value>FHIRContentJSONString</Value>
</Value>
</Data>
<DefaultData>RecordDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
