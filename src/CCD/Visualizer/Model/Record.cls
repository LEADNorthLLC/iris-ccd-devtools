Class CCD.Visualizer.Model.Record Extends (%Persistent, %XML.Adaptor, %JSON.Adaptor)
{

Property TransformName As %String(MAXLEN = 100) [ InitialExpression = "SDA3/CCDAv21-to-SDA.xsl" ];

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
Property CCDContentXML As %String(MAXLEN = 500);

Property SDAContentXML As %Stream.Object;

/// SDA XML Content
Storage Default
{
<Data name="RecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>XPathForEval</Value>
</Value>
<Value name="3">
<Value>CCDContentXML</Value>
</Value>
</Data>
<DataLocation>^CCD.Visualizer.Model.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<Description>
<![CDATA[SDA XML Content]]></Description>
<IdLocation>^CCD.Visualizer.Model.RecordD</IdLocation>
<IndexLocation>^CCD.Visualizer.Model.RecordI</IndexLocation>
<StreamLocation>^CCD.Visualizer.Model.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
