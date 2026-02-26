/// 
Class LEAD.Tutorials.Production.Rules.LEAD.HospitalLEADInvisionAdtToDownstream Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.HL7.MsgRouter.RoutingEngine" production="LEAD.Tutorials.Production.LEADTUTORIALS">
   <variable name=""></variable>
   <ruleSet name="RoutingRule" effectiveBegin="" effectiveEnd="">
        <rule name="" disabled="false">
            <constraint name="source" value="FromHospitalLEADInvisionAdtFile"></constraint>
            <constraint name="msgClass" value="EnsLib.HL7.Message"></constraint>
            <when condition="((Document.{MRG}=&quot;&quot;)&amp;&amp;(Document.{MSH:8}=&quot;CHPFRLCA&quot;))||((Lookup(&quot;HspLEADAdtEventTypeToDownstream&quot;,Document.{MSH:8},&quot;N&quot;)=&quot;N&quot;)||CheckComponents(Document,&quot;NK1&quot;,&quot;2&quot;,&quot;1,2&quot;,&quot;^$&quot;))">
                <return></return>
            </when>
            <when condition="1">
                <send transform="LEAD.Tutorials.Production.DTL.HospitalLEADInvisionAdtToDownstream" target="ToDownstreamHospitalLEADInvisionAdtFile"></send>
            </when>
        </rule>
        <rule name="" disabled="false">
            <constraint name="source" value="FromHospitalLEADInvisionAdtFile"></constraint>
            <constraint name="msgClass" value="EnsLib.HL7.Message"></constraint>
            <when condition="Document.{MSH:9.2}=&quot;A17&quot;">
                <send transform="LEAD.Tutorials.Production.DTL.A17ToA02Downstream" target="ToDownstreamHospitalLEADInvisionAdtFile"></send>
            </when>
            <when condition="RegexMatch(Document.{MSH:9.2},&quot;A0[67]&quot;)">
                <send transform="LEAD.Tutorials.Production.DTL.UpdateMrgForAdt18" target="ToDownstreamHospitalLEADInvisionAdtFile"></send>
            </when>
        </rule>
    </ruleSet>
</ruleDefinition>
}

}
