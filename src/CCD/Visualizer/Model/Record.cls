Class CCD.Visualizer.Model.Record Extends (%Persistent, %XML.Adaptor, %JSON.Adaptor)
{

Property TransformName As %String(MAXLEN = 100) [ InitialExpression = "" ];

Property XPathForEval As %String(MAXLEN = 500);

Property Response As %String(MAXLEN = 1024);

// Property Error As %Status [ InitialExpression = {$$$OK} ];

// Property ErrorLoc As %String(MAXLEN = 500);

/// Record holds possible streams
/// CCD XML Content: CCDContentXML
/// SDA XML Content: SDAContentXML
/// HL7 Content: HL7Content
/// This property will be populated if there was an error pulling this record durring evaluation.  No results will link to this record
/// This property is populated along with Error
/// HL7 Content
/// CCD XML Content
Property HL7Content As %Stream.GlobalCharacter;

Property CCDContent As %Stream.GlobalCharacter;

Property CCDContentXML As %Stream.Object;

Property SDAContent As %Stream.GlobalCharacter;

Property SDAContentXML As %Stream.Object;

Property SDAContentStream As %Stream.GlobalBinary;

Property FHIRContent As %Stream.GlobalCharacter;

Property FHIRContentJSON As %Stream.GlobalBinary;

Property FHIRContentJSONString As %Stream.Object;

Storage Default
{

}

}
