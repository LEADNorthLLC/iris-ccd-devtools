Class LEAD.Tutorials.Production.LEADTUTORIALS Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="LEAD.Tutorials.Production.LEADTUTORIALS" TestingEnabled="false" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="FromHospitalLEADInvisionAdtFile" Category="LEADInvision" ClassName="EnsLib.HL7.Service.FileService" PoolSize="1" Enabled="false" Foreground="false" Comment="Incoming ADT files from LEADInvision" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="AckTargetConfigNames">HospitalLEADInvisionAdtToDownstreamRtr</Setting>
    <Setting Target="Host" Name="TargetConfigNames">HospitalLEADInvisionAdtToDownstreamRtr</Setting>
    <Setting Target="Adapter" Name="FilePath">C:\temp</Setting>
    <Setting Target="Adapter" Name="FileSpec">FromHospitalLEADInvisionAdtFile*</Setting>
    <Setting Target="Host" Name="MessageSchemaCategory">InboundADT2.3.HL7</Setting>
  </Item>
  <Item Name="HospitalLEADInvisionAdtToDownstreamRtr" Category="LEADInvision" ClassName="EnsLib.HL7.MsgRouter.RoutingEngine" PoolSize="1" Enabled="false" Foreground="false" Comment="This handles message routing logic." LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">LEAD.Tutorials.Production.Rules.LEAD.HospitalLEADInvisionAdtToDownstream</Setting>
    <Setting Target="Host" Name="Validation">d-m-z</Setting>
  </Item>
  <Item Name="ToDownstreamHospitalLEADInvisionAdtFile" Category="" ClassName="EnsLib.HL7.Operation.FileOperation" PoolSize="1" Enabled="false" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">C:\temp</Setting>
    <Setting Target="Host" Name="Filename">ToDownstream_%D.HL7</Setting>
  </Item>
</Production>
}

}
