Class LEAD.Tutorials.Production.DTL.HospitalLEADInvisionAdtToDownstream Extends Ens.DataTransformDTL [ DependsOn = EnsLib.HL7.Message ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='EnsLib.HL7.Message' sourceDocType='InboundADT2.3.HL7:ADT_A01' targetDocType='InboundADT2.3.HL7:ADT_A01' create='new' language='objectscript' >
   <!---->
   <!-- MSH mappings -->
   <assign value='source.{MSH:1}' property='target.{MSH:1}' action='set' />
   <assign value='source.{MSH:2}' property='target.{MSH:2}' action='set' />
   <!-- Hardcode target.{MSH:3} and target.{MSH:5} -->
   <assign value='"HospitalLEAD"' property='target.{MSH:3}' action='set' />
   <assign value='"Downstream"' property='target.{MSH:5}' action='set' />
   <!-- Normalize the datetime in source.{MSH.7.1} to yyymmmdddHHMMSS -->
   <assign value='##class(LEAD.Tutorials.Production.DTL.FunctionSet).NormalizeDateTime(source.{MSH:7.1})' property='target.{MSH:7.1}' action='set' />
   <assign value='source.{MSH:8}'   property='target.{MSH:8}'   action='set' />
   <assign value='source.{MSH:9}'   property='target.{MSH:9}'   action='set' />
   <assign value='source.{MSH:9.1}' property='target.{MSH:9.1}' action='set' />
   <!-- Use source.{MSH:8} to perform a lookup for target.{MSH:9.2} -->
   <assign value='..Lookup("HspLEADAdtEventTypeToDownstream", source.{MSH:8}, source.{MSH:9.2})' property='target.{MSH:9.2}' action='set' />
   <!-- create a 16-character unique ID for MSH.10 -->
   <assign value='##class(LEAD.Tutorials.Production.DTL.FunctionSet).CreateID()' property='target.{MSH:10}' action='set' />
   <!-- hardcode target.{MSH:12} to "2.3" -->
   <assign value='"2.3"' property='target.{MSH:12}' action='set' />
   <!-- hardcode target.{MSH:15} to "AL" -->
   <assign value='"AL"' property='target.{MSH:15}' action='set' />

   <!---->
   <!-- EVN mappings -->
   <!-- Use source.{MSH:8} to perform a lookup for target.{EVN:1} -->
   <assign value='..Lookup("HspLEADAdtEventTypeToDownstream",source.{MSH:8},source.{MSH:9.2})' property='target.{EVN:1}' action='set' />
   <!-- Normalize the datetime in source.{EVN:2.1} to yyyyymmddHHMMSS -->
   <assign value='##class(LEAD.Tutorials.Production.DTL.FunctionSet).NormalizeDateTime(source.{EVN:2.1})' property='target.{EVN:RecordedDateTime.timeofanevent}' action='set' />

   <!---->
   <!-- PID mappings -->
   <assign value='source.{PID:1}' property='target.{PID:1}' action='set' />
   <assign value='source.{PID:2.1}' property='target.{PID:2.1}' action='set' />
   <!-- loop through the repeating fields of source.{PID:3()} -->
   <foreach property='source.{PID:3()}' key='i' > 
      <!-- trim leading zeros off of the i'th source.PID:3(i).1 -->
      <assign value='##class(LEAD.Tutorials.Production.DTL.FunctionSet).RemoveLeadingZeros(source.{PID:3(i).1})' property='target.{PID:3(i).1}' action='set' />
      <assign value='source.{PID:3(i).2}' property='target.{PID:3(i).2}' action='set' />
      <assign value='source.{PID:3(i).3}' property='target.{PID:3(i).3}' action='set' />
      <!-- hardcode the i'th PID:3(i).4 and PID:3(i).5 components -->
      <assign value='"HospitalLEAD"' property='target.{PID:3(i).4}' action='set' />
      <assign value='"MRN"' property='target.{PID:3(i).5}' action='set' />
   </foreach>
   <assign value='source.{PID:5}' property='target.{PID:5}' action='set' />
   <!-- normalize day-string in source.{PID:7.1} to yyyymmdd and map it to target.{PID:7.1} -->
   <assign value='##class(LEAD.Tutorials.Production.DTL.FunctionSet).NormalizeDate(source.{PID:7.1})' property='target.{PID:7.1}' action='set' />
   <assign value='source.{PID:8}' property='target.{PID:8}' action='set' />
   <!-- loop through the components in PID:11 (???)  -->
   <assign value='source.{PID:11().1}' property='target.{PID:11().1}' action='set' />
   <assign value='source.{PID:11().2}' property='target.{PID:11().2}' action='set' />
   <assign value='source.{PID:11().3}' property='target.{PID:11().3}' action='set' />
   <assign value='source.{PID:11().4}' property='target.{PID:11().4}' action='set' />
   <assign value='source.{PID:11().5}' property='target.{PID:11().5}' action='set' />
   <assign value='source.{PID:11().6}' property='target.{PID:11().6}' action='set' />
   <assign value='source.{PID:11().9}' property='target.{PID:11().9}' action='set' />
   <assign value='##Class(LEAD.Tutorials.Production.DTL.FunctionSet).RemoveLeadingZeros(source.{PID:18})'     property='target.{PID:18}'     action='set' />

   <!---->
   <!-- NK1 mappings -->
   <foreach property='source.{NK1()}' key='i'>
      <assign value='source.{NK1(i):1}'   property='target.{NK1(i):1}'   action='set' />
      <assign value='source.{NK1(i):2()}' property='target.{NK1(i):2()}' action='set' />
      <assign value='source.{NK1(i):3}'   property='target.{NK1(i):3}'   action='set' />
      <assign value='source.{NK1(i):4()}' property='target.{NK1(i):4()}' action='set' />
      <assign value='source.{NK1(i):5()}' property='target.{NK1(i):5()}' action='set' />
   </foreach>

   <!---->
   <!-- PV1 mappings -->
   <assign value='source.{PV1:2}'   property='target.{PV1:2}' action='set' />
   <assign value='source.{PV1:3.1}' property='target.{PV1:3.1}' action='set' />
   <assign value='source.{PV1:3.2}' property='target.{PV1:3.2}' action='set' />
   <assign value='source.{PV1:3.3}' property='target.{PV1:3.3}' action='set' />
   <assign value='source.{PV1:3.4}' property='target.{PV1:3.4}' action='set' />
   <assign value='source.{PV1:3.5}' property='target.{PV1:3.5}' action='set' />
   <assign value='source.{PV1:7.1}' property='target.{PV1:7.1}' action='set' />
   <assign value='source.{PV1:7.2}' property='target.{PV1:7.2}' action='set' />
   <assign value='source.{PV1:7.3}' property='target.{PV1:7.3}' action='set' />
   <assign value='source.{PV1:7.4}' property='target.{PV1:7.4}' action='set' />
   <assign value='source.{PV1:8.1}' property='target.{PV1:8.1}' action='set' />
   <assign value='source.{PV1:8.2}' property='target.{PV1:8.2}' action='set' />
   <assign value='source.{PV1:8.3}' property='target.{PV1:8.3}' action='set' />
   <assign value='source.{PV1:8.4}' property='target.{PV1:8.4}' action='set' />
   <assign value='source.{PV1:9().1}' property='target.{PV1:9().1}' action='set' />
   <assign value='source.{PV1:9().2}' property='target.{PV1:9().2}' action='set' />
   <assign value='source.{PV1:9().3}' property='target.{PV1:9().3}' action='set' />
   <assign value='source.{PV1:9().4}' property='target.{PV1:9().4}' action='set' />
   <assign value='source.{PV1:17.1}' property='target.{PV1:17.1}' action='set' />
   <assign value='source.{PV1:17.2}' property='target.{PV1:17.2}' action='set' />
   <assign value='source.{PV1:17.3}' property='target.{PV1:17.3}' action='set' />
   <assign value='source.{PV1:17.4}' property='target.{PV1:17.4}' action='set' />

   <!---->
   <!-- MRG mappings -->
   <if condition='source.{MRG} &apos;=""' >
      <true>
         <if condition='$MATCH(source.{MSH:9.2},"A0[67]")' >
            <true>
               <assign value='source.{MRG:3}' property='target.{PID:18}' action='set' />
            </true>
            <false>
               <assign value='source.{MRG:1}' property='target.{MRG:1}' action='set' />
               <assign value='source.{MRG:3}' property='target.{MRG:3}' action='set' />
            </false>
         </if>
      </true>
   </if> 

   <!---->
   <!-- AL1 mappings -->
   <foreach property='source.{AL1()}' key='i' >
      <assign value='##class(LEAD.Tutorials.Production.DTL.FunctionSet).AllergenTypeCode(source.{AL1(i):2})' property='target.{AL1(i):2}' action='set' />
      <assign value='##class(LEAD.Tutorials.Production.DTL.FunctionSet).AllergenTypeCode(source.{AL1(i):2})' property='target.{AL1(i):3.1}' action='set' />
      <assign value='source.{AL1(i):3.2}' property='target.{AL1(i):3.2}' action='set' />
      <assign value='source.{AL1(i):4}'   property='target.{AL1(i):4}'   action='set' />
      <assign value='source.{AL1(i):5}'   property='target.{AL1(i):5}'   action='set' />
      <assign value='source.{AL1(i):6}'   property='target.{AL1(i):6}'   action='set' />
   </foreach>

   <!---->
   <!-- DG1 mappings -->
   <foreach property='source.{DG1()}' key='i' >
      <!-- remove leading and trailing zeros from the i'th source.{DG1(i):1} component -->
      <assign value='##class(LEAD.Tutorials.Production.DTL.FunctionSet).NormalizeDG1(source.{DG1(i):1})' property='target.{DG1(i):1}' action='set' />
      <assign value='source.{DG1(i):3.1}' property='target.{DG1(i):3.1}' action='set' />
      <assign value='source.{DG1(i):3.2}' property='target.{DG1(i):3.2}' action='set' />
      <assign value='source.{DG1(i):3.3}' property='target.{DG1(i):3.3}' action='set' />
      <assign value='source.{DG1(i):4}'   property='target.{DG1(i):4}' action='set' />
      <assign value='source.{DG1(i):6}'   property='target.{DG1(i):6}' action='set' />
   </foreach>
</transform>
}

}
