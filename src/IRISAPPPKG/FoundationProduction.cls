Class IRISAPPPKG.FoundationProduction Extends Ens.Production [ Not ProcedureBlock ]
{

XData ProductionDefinition
{
<Production Name="IRISAPPPKG.FoundationProduction" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="HS.FHIR.DTL.Util.HC.FHIR.SDA3.Process" Category="" ClassName="HS.FHIR.DTL.Util.HC.FHIR.SDA3.Process" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="TargetConfigName">FHIR.REST.Operation</Setting>
    <Setting Target="Host" Name="FHIRMetadataSet">HL7v40 / FHIR R4 Core Specification</Setting>
  </Item>
  <Item Name="FHIR.REST.Service" Category="" ClassName="FHIR.Inbound.Service" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="TargetConfigName">FHIR.Inbound.Process</Setting>
    <Setting Target="Host" Name="SDAToFHIRTargetConfigName">FHIR.Inbound.Process</Setting>
  </Item>
  <Item Name="FHIR.REST.Operation" Category="" ClassName="EnsLib.HTTP.GenericOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="FHIR.Inbound.Process" Category="" ClassName="FHIR.Inbound.Process" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="TraceOperations">*FULL*</Setting>
  </Item>
  <Item Name="HS.Util.Trace.Operations" Category="" ClassName="HS.Util.Trace.Operations" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="HS.FHIR.DTL.Util.HC.SDA3.FHIR.Process" Category="" ClassName="HS.FHIR.DTL.Util.HC.SDA3.FHIR.Process" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="FHIRMetadataSet">HL7v40 / FHIR R4 Core Specification</Setting>
    <Setting Target="Host" Name="TargetConfigName">FHIR.REST.Operation</Setting>
  </Item>

</Production>
}

}
