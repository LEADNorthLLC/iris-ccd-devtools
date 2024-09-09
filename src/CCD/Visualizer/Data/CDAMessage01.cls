Class CCD.Visualizer.Data.CDAMessage01 Extends %RegisteredObject
{

XData CCDPnRHeader
{
<xdsb:ProvideAndRegisterDocumentSetRequest xmlns:xdsb="urn:ihe:iti:xds-b:2007"
	xmlns="urn:ihe:iti:xds-b:2007">
	<lcm:SubmitObjectsRequest xmlns:lcm="urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0"
		xmlns="urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0">
		<rim:RegistryObjectList xmlns:rim="urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0"
			xmlns="urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0">
			<rim:ExtrinsicObject id="urn:uuid:1a171dc2-cae5-414c-a90f-130d78d48b4f" mimeType="text/xml" objectType="urn:uuid:7edca82f-054d-47f2-a032-9b2a5b5186c1">
				<rim:Slot name="creationTime">
					<rim:ValueList>
						<rim:Value>20230928004749</rim:Value>
					</rim:ValueList>
				</rim:Slot>
				<rim:Slot name="languageCode">
					<rim:ValueList>
						<rim:Value>en-US</rim:Value>
					</rim:ValueList>
				</rim:Slot>
				<rim:Slot name="sourcePatientId">
					<rim:ValueList>
						<rim:Value><![CDATA[123456789^^^&amp;1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.400&ISO]]></rim:Value>
					</rim:ValueList>
				</rim:Slot>
				<rim:Classification classificationScheme="urn:uuid:41a5887f-8865-4c09-adf7-e362475b143a" classifiedObject="urn:uuid:1a171dc2-cae5-414c-a90f-130d78d48b4f" id="ClassCode1" nodeRepresentation="SUMMARY" objectType="urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:Classification">
					<rim:Slot name="codingScheme">
						<rim:ValueList>
							<rim:Value>1.3.6.1.4.1.19376.1.2.6.1</rim:Value>
						</rim:ValueList>
					</rim:Slot>
					<rim:Name>
						<rim:LocalizedString value="Summary"></rim:LocalizedString>
					</rim:Name>
				</rim:Classification>
				<rim:Classification classificationScheme="urn:uuid:f4f85eac-e6cb-4883-b524-f2705394840f" classifiedObject="urn:uuid:1a171dc2-cae5-414c-a90f-130d78d48b4f" id="ConfidentialityCode1" nodeRepresentation="N" objectType="urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:Classification">
					<rim:Slot name="codingScheme">
						<rim:ValueList>
							<rim:Value>2.16.840.1.113883.5.25</rim:Value>
						</rim:ValueList>
					</rim:Slot>
					<rim:Name>
						<rim:LocalizedString value="Normal"></rim:LocalizedString>
					</rim:Name>
				</rim:Classification>
				<rim:Classification classificationScheme="urn:uuid:a09d5840-386c-46f2-b5ad-9c3699a4309d" classifiedObject="urn:uuid:1a171dc2-cae5-414c-a90f-130d78d48b4f" id="FormatCode1" nodeRepresentation="2.16.840.1.113883.10.20.1" objectType="urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:Classification">
					<rim:Slot name="codingScheme">
						<rim:ValueList>
							<rim:Value>2.16.840.1.113883.3.88</rim:Value>
						</rim:ValueList>
					</rim:Slot>
					<rim:Name>
						<rim:LocalizedString value="HL7 CCD Document"></rim:LocalizedString>
					</rim:Name>
				</rim:Classification>
				<rim:Classification classificationScheme="urn:uuid:f33fb8ac-18af-42cc-ae0e-ed0b0bdb91e1" classifiedObject="urn:uuid:1a171dc2-cae5-414c-a90f-130d78d48b4f" id="HealthcareFacilityTypeCode1" nodeRepresentation="OF" objectType="urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:Classification">
					<rim:Slot name="codingScheme">
						<rim:ValueList>
							<rim:Value>2.16.840.1.113883.5.11</rim:Value>
						</rim:ValueList>
					</rim:Slot>
					<rim:Name>
						<rim:LocalizedString value="Outpatient facility"></rim:LocalizedString>
					</rim:Name>
				</rim:Classification>
				<rim:Classification classificationScheme="urn:uuid:cccf5598-8b07-4b77-a05e-ae952c785ead" classifiedObject="urn:uuid:1a171dc2-cae5-414c-a90f-130d78d48b4f" id="PracticeSettingCode1" nodeRepresentation="394802001" objectType="urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:Classification">
					<rim:Slot name="codingScheme">
						<rim:ValueList>
							<rim:Value>2.16.840.1.113883.6.96</rim:Value>
						</rim:ValueList>
					</rim:Slot>
					<rim:Name>
						<rim:LocalizedString value="General Medicine"></rim:LocalizedString>
					</rim:Name>
				</rim:Classification>
				<rim:Classification classificationScheme="urn:uuid:f0306f51-975f-434e-a61c-c59651d33983" classifiedObject="urn:uuid:1a171dc2-cae5-414c-a90f-130d78d48b4f" id="TypeCode1" nodeRepresentation="11506-3" objectType="urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:Classification">
					<rim:Slot name="codingScheme">
						<rim:ValueList>
							<rim:Value>2.16.840.1.113883.6.1</rim:Value>
						</rim:ValueList>
					</rim:Slot>
					<rim:Name>
						<rim:LocalizedString value="Progress note"></rim:LocalizedString>
					</rim:Name>
				</rim:Classification>
				<rim:Classification classificationScheme="urn:uuid:93606bcf-9494-43ec-9b4e-a7748d1a838d" classifiedObject="urn:uuid:1a171dc2-cae5-414c-a90f-130d78d48b4f" id="DocumentAuthor1" nodeRepresentation="" objectType="urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:Classification">
					<rim:Slot name="authorPerson">
						<rim:ValueList>
							<rim:Value>^Smitty^Gerald^^^</rim:Value>
						</rim:ValueList>
					</rim:Slot>
				</rim:Classification>
				<rim:ExternalIdentifier id="id1" identificationScheme="urn:uuid:58a6f841-87b3-4a3e-92fd-a8ffeff98427" objectType="urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:ExternalIdentifier" registryObject="urn:uuid:1a171dc2-cae5-414c-a90f-130d78d48b4f" value="123456789^^^&amp;1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.400&amp;ISO">
					<rim:Name>
						<rim:LocalizedString value="XDSDocumentEntry.patientId"></rim:LocalizedString>
					</rim:Name>
				</rim:ExternalIdentifier>
				<rim:ExternalIdentifier id="id2" identificationScheme="urn:uuid:2e82c1f6-a085-4c72-9da3-8640a32e42ab" objectType="urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:ExternalIdentifier" registryObject="urn:uuid:1a171dc2-cae5-414c-a90f-130d78d48b4f" value="2.25.34679954341089271761238339158596160336">
					<rim:Name>
						<rim:LocalizedString value="XDSDocumentEntry.uniqueId"></rim:LocalizedString>
					</rim:Name>
				</rim:ExternalIdentifier>
			</rim:ExtrinsicObject>
			<rim:RegistryPackage id="urn:uuid:239f69c7-a635-4977-b309-1527a7fc0ab6" objectType="urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:RegistryPackage">
				<rim:Slot name="submissionTime">
					<rim:ValueList>
						<rim:Value>20230928054749</rim:Value>
					</rim:ValueList>
				</rim:Slot>
				<rim:Classification classificationScheme="urn:uuid:aa543740-bdda-424e-8c96-df4873be8500" classifiedObject="urn:uuid:239f69c7-a635-4977-b309-1527a7fc0ab6" id="ContentTypeCode1" nodeRepresentation="34117-2" objectType="urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:Classification">
					<rim:Slot name="codingScheme">
						<rim:ValueList>
							<rim:Value>2.16.840.1.113883.6.1</rim:Value>
						</rim:ValueList>
					</rim:Slot>
					<rim:Name>
						<rim:LocalizedString value="History and Physical Note"></rim:LocalizedString>
					</rim:Name>
				</rim:Classification>
				<rim:Classification classificationScheme="urn:uuid:a7058bb9-b4e4-4307-ba5b-e3f0ab85e12d" classifiedObject="urn:uuid:239f69c7-a635-4977-b309-1527a7fc0ab6" id="SubmissionSetAuthor1" nodeRepresentation="" objectType="urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:Classification">
					<rim:Slot name="authorPerson">
						<rim:ValueList>
							<rim:Value>^Smitty^Gerald^^^</rim:Value>
						</rim:ValueList>
					</rim:Slot>
				</rim:Classification>
				<rim:ExternalIdentifier id="id3" identificationScheme="urn:uuid:6b5aea1a-874d-4603-a4bc-96a0a7b38446" objectType="urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:ExternalIdentifier" registryObject="urn:uuid:239f69c7-a635-4977-b309-1527a7fc0ab6" value="123456789^^^&amp;1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.400&amp;ISO">
					<rim:Name>
						<rim:LocalizedString value="XDSSubmissionSet.patientId"></rim:LocalizedString>
					</rim:Name>
				</rim:ExternalIdentifier>
				<rim:ExternalIdentifier id="id4" identificationScheme="urn:uuid:96fdda7c-d067-4183-912e-bf5ee74998a8" objectType="urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:ExternalIdentifier" registryObject="urn:uuid:239f69c7-a635-4977-b309-1527a7fc0ab6" value="2.25.47350700523830748548166808480545245879">
					<rim:Name>
						<rim:LocalizedString value="XDSSubmissionSet.uniqueId"></rim:LocalizedString>
					</rim:Name>
				</rim:ExternalIdentifier>
				<rim:ExternalIdentifier id="id5" identificationScheme="urn:uuid:554ac39e-e3fe-47fe-b233-965d2a147832" objectType="urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:ExternalIdentifier" registryObject="urn:uuid:239f69c7-a635-4977-b309-1527a7fc0ab6" value="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.400">
					<rim:Name>
						<rim:LocalizedString value="XDSSubmissionSet.sourceId"></rim:LocalizedString>
					</rim:Name>
				</rim:ExternalIdentifier>
			</rim:RegistryPackage>
			<rim:Classification classificationNode="urn:uuid:a54d6aa5-d40d-43f9-88c5-b4633d873bdd" classifiedObject="urn:uuid:239f69c7-a635-4977-b309-1527a7fc0ab6" id="isSS1" objectType="urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:Classification"></rim:Classification>
			<rim:Association associationType="urn:oasis:names:tc:ebxml-regrep:AssociationType:HasMember" id="association1" objectType="urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:Association" sourceObject="urn:uuid:239f69c7-a635-4977-b309-1527a7fc0ab6" targetObject="urn:uuid:1a171dc2-cae5-414c-a90f-130d78d48b4f">
				<rim:Slot name="SubmissionSetStatus">
					<rim:ValueList>
						<rim:Value>Original</rim:Value>
					</rim:ValueList>
				</rim:Slot>
			</rim:Association>
		</rim:RegistryObjectList>
	</lcm:SubmitObjectsRequest>
	<xdsb:Document id="urn:uuid:1a171dc2-cae5-414c-a90f-130d78d48b4f">
		<xop:Include xmlns:xop="http://www.w3.org/2004/08/xop/include"
			xmlns="http://www.w3.org/2004/08/xop/include" href="cid:1a171dc2-cae5-414c-a90f-130d78d48b4f"></xop:Include>
	</xdsb:Document>
</xdsb:ProvideAndRegisterDocumentSetRequest>
}

XData CCDBody
{
<ClinicalDocument moodCode="EVN" xmlns="urn:hl7-org:v3" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:sdtc="urn:hl7-org:sdtc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<realmCode code="US"></realmCode>
	<typeId extension="POCD_HD000040" root="2.16.840.1.113883.1.3"></typeId>
	<!--US Realm Header ID-->
	<templateId root="2.16.840.1.113883.10.20.22.1.1" extension="2015-08-01"/>
	<templateId root="2.16.840.1.113883.10.20.22.1.1"/>
	<!--CCD template ID-->
	<templateId root="2.16.840.1.113883.10.20.22.1.2" extension="2015-08-01"/>
	<templateId root="2.16.840.1.113883.10.20.22.1.2"/>
	<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.1000.1000" extension="881870b5-b1a8-4e21-91c6-0dd24ced344c"/>
	<code code="34133-9" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Summarization of episode note"/>
	<title>Patient Chart Summary</title>
	<effectiveTime value="20230727120011-0400"/>
	<confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25"/>
	<languageCode code="en-US"/>
	<setId root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.1000" extension="881870b5-b1a8-4e21-91c6-0dd24ced344c"/>
	<versionNumber value="1"/>
	<recordTarget>
		<patientRole>
			<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.400" extension="123456789"/>
			<addr use="HP">
				<streetAddressLine>123 Main St</streetAddressLine>
				<city>North Charleston</city>
				<state>SC</state>
				<postalCode>29406</postalCode>
				<country>US</country>
			</addr>
			<telecom value="tel:+1-123-456-7890" use="HP"/>
			<telecom value="mailto:example@example.com"/>
			<patient>
				<name>
					<given>John</given>
					<family>Smith</family>
				</name>
				<administrativeGenderCode code="M" displayName="Male" codeSystem="2.16.840.1.113883.5.1" codeSystemName="AdministrativeGenderCode"/>
				<birthTime value="19840425"/>
				<!--Race neither specified nor declined.-->
				<raceCode nullFlavor="UNK"/>
				<!--Ethnicity neither specified nor declined.-->
				<ethnicGroupCode nullFlavor="UNK"/>
			</patient>
		</patientRole>
	</recordTarget>
	<author>
		<time value="20230727120011-0400"/>
		<assignedAuthor classCode="ASSIGNED">
			<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
			<addr>
				<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
				<city>North Charleston</city>
				<state>SC</state>
				<postalCode>29406</postalCode>
				<country>US</country>
			</addr>
			<telecom nullFlavor="UNK" use="WP"/>
			<assignedPerson>
				<name>
					<prefix>DO</prefix>
					<given>Christopher</given>
					<family>Koke</family>
				</name>
			</assignedPerson>
			<representedOrganization>
				<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
				<name>Liberty Doctors</name>
				<telecom value="tel:+1-843-795-5362" use="WP"/>
				<telecom value="fax:+1-843-795-1921" use="WP"/>
				<addr>
					<streetAddressLine>418 Folly Rd</streetAddressLine>
					<streetAddressLine>Ste A</streetAddressLine>
					<city>Charleston</city>
					<state>SC</state>
					<postalCode>29412-2625</postalCode>
					<country>US</country>
				</addr>
			</representedOrganization>
		</assignedAuthor>
	</author>
	<dataEnterer>
		<time value="20230727120011-0400"/>
		<assignedEntity>
			<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
			<addr>
				<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
				<city>North Charleston</city>
				<state>SC</state>
				<postalCode>29406</postalCode>
				<country>US</country>
			</addr>
			<telecom value="tel:+1-843-764-0770" use="WP"/>
			<telecom value="mailto:ckoke@libertydoctors.com"/>
			<assignedPerson>
				<name>
					<prefix>DO</prefix>
					<given>Christopher</given>
					<family>Koke</family>
				</name>
			</assignedPerson>
		</assignedEntity>
	</dataEnterer>
	<custodian typeCode="CST">
		<assignedCustodian classCode="ASSIGNED">
			<representedCustodianOrganization classCode="ORG" determinerCode="INSTANCE">
				<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
				<name>Liberty Doctors</name>
				<telecom value="tel:+1-843-795-5362" use="WP"/>
				<addr>
					<streetAddressLine>418 Folly Rd</streetAddressLine>
					<streetAddressLine>Ste A</streetAddressLine>
					<city>Charleston</city>
					<state>SC</state>
					<postalCode>29412-2625</postalCode>
					<country>US</country>
				</addr>
			</representedCustodianOrganization>
		</assignedCustodian>
	</custodian>
	<documentationOf>
		<serviceEvent classCode="PCPR">
			<effectiveTime>
				<low value="20180201000000-0400"/>
				<high value="20230727120011-0400"/>
			</effectiveTime>
		</serviceEvent>
	</documentationOf>
	<componentOf>
		<encompassingEncounter>
			<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
			<effectiveTime>
				<low value="20180201000000-0400"/>
				<high value="20230727120011-0400"/>
			</effectiveTime>
			<responsibleParty>
				<templateId root="2.16.840.1.113883.10.20.6.2.1" extension="2014-06-09"/>
				<templateId root="2.16.840.1.113883.10.20.6.2.1"/>
				<assignedEntity>
					<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.200" extension="CK2"/>
					<addr>
						<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
						<city>North Charleston</city>
						<state>SC</state>
						<postalCode>29406</postalCode>
						<country>US</country>
					</addr>
					<telecom value="tel:+1-843-764-0770" use="WP"/>
					<telecom value="mailto:ckoke@libertydoctors.com"/>
					<assignedPerson>
						<name>
							<prefix>DO</prefix>
							<given>Christopher</given>
							<family>Koke</family>
						</name>
					</assignedPerson>
				</assignedEntity>
			</responsibleParty>
		</encompassingEncounter>
	</componentOf>
	<!--********************************************************************************-->
	<!--***************************** Structured Body **********************************-->
	<!--********************************************************************************-->
	<component>
		<structuredBody>
			<templateId extension="IMPL_CDAR2_LEVEL1-2REF_US_I2_2005SEP" root="2.16.840.1.113883.10"/>
			<!--******************************** Payment Sources *******************************-->
			<component>
				<section>
					<templateId root="2.16.840.1.113883.10.20.22.2.18"/>
					<code code="48768-6" displayName="Payment sources" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<title>Insurance</title>
					<text>
						<table border="1" width="100%">
							<thead>
								<tr>
									<th>Carrier Name</th>
									<th>Plan ID</th>
									<th>Policy Number</th>
									<th>Group #</th>
									<th>Insured's Name</th>
									<th>Relation</th>
									<th>Effective Dates</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<content ID="insuranceCarrierName1">BCBS</content>
									</td>
									<td></td>
									<td>AAA808688789</td>
									<td>0073636-068</td>
									<td>Bennett, Jerome</td>
									<td>Parent</td>
									<td>
									</td>
								</tr>
							</tbody>
						</table>
					</text>
					<entry typeCode="DRIV">
						<act classCode="ACT" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.60"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.700" extension="0073636-068"/>
							<code code="48768-6" displayName="Payment sources" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<entryRelationship typeCode="COMP">
								<sequenceNumber value="1"/>
								<act classCode="ACT" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.61"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.700" extension="0073636-068"/>
									<code codeSystemName="X12N-1336" codeSystem="2.16.840.1.113883.6.255.1336" nullFlavor="NI"/>
									<statusCode code="completed"/>
									<performer typeCode="PRF">
										<templateId root="2.16.840.1.113883.10.20.22.4.87"/>
										<assignedEntity classCode="ASSIGNED">
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.600" extension="BCBS0000"/>
											<code code="PAYOR" displayName="invoice payor" codeSystem="2.16.840.1.113883.5.111" codeSystemName="RoleCode"/>
											<addr>
												<streetAddressLine>P O Box 100300</streetAddressLine>
												<city>Columbia</city>
												<state>SC</state>
												<postalCode>29202</postalCode>
												<country>US</country>
											</addr>
											<telecom value="(800)810-2583" use="WP"/>
											<representedOrganization classCode="ORG">
												<name>BCBS</name>
											</representedOrganization>
										</assignedEntity>
									</performer>
									<performer>
										<templateId root="2.16.840.1.113883.10.20.22.4.88"/>
										<assignedEntity>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.500" extension="0000018417"/>
											<code code="GUAR" displayName="Guarantor" codeSystem="2.16.840.1.113883.5.110" codeSystemName="RoleClass"/>
											<addr>
												<streetAddressLine>8687 Bentwood Dr</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-518-2762" use="HP"/>
											<assignedPerson>
												<name>
													<given>Jerome</given>
													<family>Bennett</family>
												</name>
											</assignedPerson>
										</assignedEntity>
									</performer>
									<participant typeCode="COV">
										<templateId root="2.16.840.1.113883.10.20.22.4.89"/>
										<participantRole classCode="PAT">
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.800" extension="AAA808688789"/>
											<code code="PRN" displayName="Parent" codeSystem="2.16.840.1.113883.5.111" codeSystemName="RoleCode"/>
											<addr>
												<streetAddressLine>8687 Bentwood Dr</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-518-2762" use="HP"/>
											<telecom value="mailto:jeromebennett45@gmail.com"/>
											<playingEntity>
												<name>
													<given>Jerome</given>
													<family>Bennett</family>
												</name>
											</playingEntity>
										</participantRole>
									</participant>
									<participant typeCode="HLD">
										<templateId root="2.16.840.1.113883.10.20.22.4.90"/>
										<participantRole>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.500" extension="0000018417"/>
											<addr>
												<streetAddressLine>8687 Bentwood Dr</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-518-2762" use="HP"/>
											<playingEntity>
												<name>
													<given>Jerome</given>
													<family>Bennett</family>
												</name>
												<sdtc:birthTime nullFlavor="NI"/>
											</playingEntity>
										</participantRole>
									</participant>
									<entryRelationship typeCode="REFR">
										<act classCode="ACT" moodCode="DEF">
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.600" extension="BCBS0000"/>
											<code nullFlavor="NA"/>
											<text>
												<reference value="#InsuranceCarrierName1"/>
											</text>
										</act>
									</entryRelationship>
								</act>
							</entryRelationship>
						</act>
					</entry>
				</section>
			</component>
			<!--******************************** Reason for Referral **********************************-->
			<component>
				<section>
					<templateId root="1.3.6.1.4.1.19376.1.5.3.1.3.1" extension="2014-06-09"/>
					<templateId root="1.3.6.1.4.1.19376.1.5.3.1.3.1"/>
					<templateId root="2.16.840.1.113883.3.88.11.83.106"/>
					<code code="42349-1" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Reason for Referral"/>
					<title>Reason for Referral</title>
					<text>No reason for referral included in this record.</text>
				</section>
			</component>
			<!--******************************** Function Status *******************************-->
			<component>
				<section>
					<templateId root="2.16.840.1.113883.10.20.22.2.14" extension="2014-06-09"/>
					<templateId root="2.16.840.1.113883.10.20.22.2.14"/>
					<code code="47420-5" displayName="Functional Status" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<title>Functional Status</title>
					<text>No Functional Status included in this record.</text>
				</section>
			</component>
			<!--******************************** Mental Status *******************************-->
			<component>
				<section>
					<templateId root="2.16.840.1.113883.10.20.22.2.14" extension="2015-08-01"/>
					<code code="10190-7" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="MENTAL STATUS"/>
					<title>Mental Status</title>
					<text>No Mental Status included in this record.</text>
				</section>
			</component>
			<!--******************************** Problem List *******************************-->
			<component>
				<section>
					<templateId root="2.16.840.1.113883.10.20.22.2.5.1" extension="2015-08-01"/>
					<templateId root="2.16.840.1.113883.10.20.22.2.5.1"/>
					<templateId root="2.16.840.1.113883.10.20.22.2.5"/>
					<code code="11450-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Problem list"/>
					<title>Problems</title>
					<text>
						<table border="1" width="100%">
							<thead>
								<tr>
									<th>Problem</th>
									<th>Effective Dates</th>
									<th>Problem Status</th>
									<th>Note</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<content ID="problemDescription1">Body Mass Index 32.0-32.9, adult</content>
									</td>
									<td>Tuesday, April 19, 2022</td>
									<td>
										<content ID="problemStatus1">Active</content>
									</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="problemDescription2">Body Mass Index 31.0-31.9, adult</content>
									</td>
									<td>Tuesday, October 18, 2022</td>
									<td>
										<content ID="problemStatus2">Active</content>
									</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="problemDescription3">Body Mass Index 31.0-31.9, adult</content>
									</td>
									<td>Tuesday, April 18, 2023</td>
									<td>
										<content ID="problemStatus3">Active</content>
									</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="problemDescription4">Folate deficiency anemia, unspecified</content>
									</td>
									<td>Tuesday, April 18, 2023</td>
									<td>
										<content ID="problemStatus4">Active</content>
									</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="problemDescription5">Anemia, unspecified</content>
									</td>
									<td>Tuesday, April 19, 2022</td>
									<td>
										<content ID="problemStatus5">Active</content>
									</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="problemDescription6">Acute upper respiratory infection, unspecified</content>
									</td>
									<td>Tuesday, October 18, 2022</td>
									<td>
										<content ID="problemStatus6">Active</content>
									</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="problemDescription7">Encounter for screening for COVID-19</content>
									</td>
									<td>Tuesday, October 18, 2022</td>
									<td>
										<content ID="problemStatus7">Active</content>
									</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="problemDescription8">RETURN OFFICE VISIT FOR MEDICAL MANAGEMENT  OFFICE</content>
									</td>
									<td>Tuesday, April 19, 2022</td>
									<td>
										<content ID="problemStatus8">Active</content>
									</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="problemDescription9">Return Office Visit for Medical Management OFFICE</content>
									</td>
									<td>Tuesday, October 18, 2022</td>
									<td>
										<content ID="problemStatus9">Active</content>
									</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="problemDescription10">Return Office Visit for Medical Management OFFICE</content>
									</td>
									<td>Tuesday, April 18, 2023</td>
									<td>
										<content ID="problemStatus10">Active</content>
									</td>
									<td/>
								</tr>
							</tbody>
						</table>
					</text>
					<entry typeCode="DRIV">
						<act classCode="ACT" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.3" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.3"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDHADGSZRDBONPFGRIIVMQG2GTKIVFCV3QDAAPBIBKE42UQNLTPMDB"/>
							<code code="CONC" codeSystem="2.16.840.1.113883.5.6" displayName="Concern"/>
							<statusCode code="active"/>
							<effectiveTime>
								<low value="20220419"/>
								<high nullFlavor="UNK"/>
							</effectiveTime>
							<entryRelationship typeCode="SUBJ" inversionInd="false">
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.4" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.4"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDHADGSZRDBONPFGRIIVMQG2GTKIVFCV3QDAAPBIBKE42UQNLTPMDB"/>
									<code codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" code="282291009" displayName="Diagnosis">
										<translation code="29308-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Diagnosis"/>
									</code>
									<text>
										<reference value="#problemDescription1"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20220419"/>
										<high nullFlavor="UNK"/>
									</effectiveTime>
									<value xsi:type="CD" code="162864005" displayName="Body mass index 30+ - obesity" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
										<originalText>
											<reference value="#problemDescription1"/>
										</originalText>
										<translation code="V85.32" displayName="Body Mass Index 32.0-32.9, adult" codeSystem="2.16.840.1.113883.6.104" codeSystemName="ICD-9-CD"/>
										<translation code="Z68.32" displayName="Body mass index [BMI] 32.0-32.9, adult" codeSystem="2.16.840.1.113883.6.3" codeSystemName="ICD10CM"/>
									</value>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<streetAddressLine>Suite D</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406-4181</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ajackson@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<given>Allen</given>
													<given>B</given>
													<family>Jackson</family>
													<suffix>MD</suffix>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<observation classCode="OBS" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.6"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDHADGSZRDBONPFGRIIVMQG2GTKIVFCV3QDAAPBIBKE42UQNLTPMDB"/>
											<code code="33999-4" displayName="Status" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
											<text>
												<reference value="#problemStatus1"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20220419"/>
												<high nullFlavor="UNK"/>
											</effectiveTime>
											<value xsi:type="CE" code="55561003" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
												<originalText>
													<reference value="#problemStatus1"/>
												</originalText>
											</value>
										</observation>
									</entryRelationship>
								</observation>
							</entryRelationship>
						</act>
					</entry>
					<entry typeCode="DRIV">
						<act classCode="ACT" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.3" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.3"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDVGJN31BDLRVKIGODSNCYTR0IIGGRMHJB420V0OBE54PSNX2KUFX"/>
							<code code="CONC" codeSystem="2.16.840.1.113883.5.6" displayName="Concern"/>
							<statusCode code="active"/>
							<effectiveTime>
								<low value="20221018"/>
								<high nullFlavor="UNK"/>
							</effectiveTime>
							<entryRelationship typeCode="SUBJ" inversionInd="false">
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.4" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.4"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDVGJN31BDLRVKIGODSNCYTR0IIGGRMHJB420V0OBE54PSNX2KUFX"/>
									<code codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" code="282291009" displayName="Diagnosis">
										<translation code="29308-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Diagnosis"/>
									</code>
									<text>
										<reference value="#problemDescription2"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20221018"/>
										<high nullFlavor="UNK"/>
									</effectiveTime>
									<value xsi:type="CD" code="162864005" displayName="Body mass index 30+ - obesity" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
										<originalText>
											<reference value="#problemDescription2"/>
										</originalText>
										<translation code="V85.31" displayName="Body Mass Index 31.0-31.9, adult" codeSystem="2.16.840.1.113883.6.104" codeSystemName="ICD-9-CD"/>
										<translation code="Z68.31" displayName="Body mass index [BMI] 31.0-31.9, adult" codeSystem="2.16.840.1.113883.6.3" codeSystemName="ICD10CM"/>
									</value>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<streetAddressLine>Suite D</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406-4181</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ajackson@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<given>Allen</given>
													<given>B</given>
													<family>Jackson</family>
													<suffix>MD</suffix>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<observation classCode="OBS" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.6"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDVGJN31BDLRVKIGODSNCYTR0IIGGRMHJB420V0OBE54PSNX2KUFX"/>
											<code code="33999-4" displayName="Status" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
											<text>
												<reference value="#problemStatus2"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20221018"/>
												<high nullFlavor="UNK"/>
											</effectiveTime>
											<value xsi:type="CE" code="55561003" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
												<originalText>
													<reference value="#problemStatus2"/>
												</originalText>
											</value>
										</observation>
									</entryRelationship>
								</observation>
							</entryRelationship>
						</act>
					</entry>
					<entry typeCode="DRIV">
						<act classCode="ACT" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.3" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.3"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDYZLNH1ZVR1Q4CLRCCW5FUC04LMCYVOCY4OOWV5H4XWTX1HIWE0GI"/>
							<code code="CONC" codeSystem="2.16.840.1.113883.5.6" displayName="Concern"/>
							<statusCode code="active"/>
							<effectiveTime>
								<low value="20230418"/>
								<high nullFlavor="UNK"/>
							</effectiveTime>
							<entryRelationship typeCode="SUBJ" inversionInd="false">
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.4" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.4"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDYZLNH1ZVR1Q4CLRCCW5FUC04LMCYVOCY4OOWV5H4XWTX1HIWE0GI"/>
									<code codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" code="282291009" displayName="Diagnosis">
										<translation code="29308-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Diagnosis"/>
									</code>
									<text>
										<reference value="#problemDescription3"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418"/>
										<high nullFlavor="UNK"/>
									</effectiveTime>
									<value xsi:type="CD" code="162864005" displayName="Body mass index 30+ - obesity" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
										<originalText>
											<reference value="#problemDescription3"/>
										</originalText>
										<translation code="V85.31" displayName="Body Mass Index 31.0-31.9, adult" codeSystem="2.16.840.1.113883.6.104" codeSystemName="ICD-9-CD"/>
										<translation code="Z68.31" displayName="Body mass index [BMI] 31.0-31.9, adult" codeSystem="2.16.840.1.113883.6.3" codeSystemName="ICD10CM"/>
									</value>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<observation classCode="OBS" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.6"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDYZLNH1ZVR1Q4CLRCCW5FUC04LMCYVOCY4OOWV5H4XWTX1HIWE0GI"/>
											<code code="33999-4" displayName="Status" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
											<text>
												<reference value="#problemStatus3"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418"/>
												<high nullFlavor="UNK"/>
											</effectiveTime>
											<value xsi:type="CE" code="55561003" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
												<originalText>
													<reference value="#problemStatus3"/>
												</originalText>
											</value>
										</observation>
									</entryRelationship>
								</observation>
							</entryRelationship>
						</act>
					</entry>
					<entry typeCode="DRIV">
						<act classCode="ACT" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.3" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.3"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID4C0UXMUHJPS4BDTU54UJXI4K0FLEVMJISJXTHIKR3X15S3YHFGGG"/>
							<code code="CONC" codeSystem="2.16.840.1.113883.5.6" displayName="Concern"/>
							<statusCode code="active"/>
							<effectiveTime>
								<low value="20230418"/>
								<high nullFlavor="UNK"/>
							</effectiveTime>
							<entryRelationship typeCode="SUBJ" inversionInd="false">
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.4" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.4"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID4C0UXMUHJPS4BDTU54UJXI4K0FLEVMJISJXTHIKR3X15S3YHFGGG"/>
									<code codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" code="282291009" displayName="Diagnosis">
										<translation code="29308-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Diagnosis"/>
									</code>
									<text>
										<reference value="#problemDescription4"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418"/>
										<high nullFlavor="UNK"/>
									</effectiveTime>
									<value xsi:type="CD" code="85649008" displayName="Megaloblastic anemia due to folate deficiency" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
										<originalText>
											<reference value="#problemDescription4"/>
										</originalText>
										<translation code="281.2" displayName="Folate-deficiency anemia" codeSystem="2.16.840.1.113883.6.104" codeSystemName="ICD-9-CD"/>
										<translation code="D52.9" displayName="Folate deficiency anemia, unspecified" codeSystem="2.16.840.1.113883.6.3" codeSystemName="ICD10CM"/>
									</value>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<observation classCode="OBS" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.6"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID4C0UXMUHJPS4BDTU54UJXI4K0FLEVMJISJXTHIKR3X15S3YHFGGG"/>
											<code code="33999-4" displayName="Status" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
											<text>
												<reference value="#problemStatus4"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418"/>
												<high nullFlavor="UNK"/>
											</effectiveTime>
											<value xsi:type="CE" code="55561003" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
												<originalText>
													<reference value="#problemStatus4"/>
												</originalText>
											</value>
										</observation>
									</entryRelationship>
								</observation>
							</entryRelationship>
						</act>
					</entry>
					<entry typeCode="DRIV">
						<act classCode="ACT" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.3" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.3"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDP100TIYNDYPBLFEZ510AE4TO2MPJWJSZZYSYDVF5BXD5CHM5MV5E"/>
							<code code="CONC" codeSystem="2.16.840.1.113883.5.6" displayName="Concern"/>
							<statusCode code="active"/>
							<effectiveTime>
								<low value="20220419"/>
								<high nullFlavor="UNK"/>
							</effectiveTime>
							<entryRelationship typeCode="SUBJ" inversionInd="false">
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.4" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.4"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDP100TIYNDYPBLFEZ510AE4TO2MPJWJSZZYSYDVF5BXD5CHM5MV5E"/>
									<code code="55607006" displayName="Problem" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
										<translation code="75326-9" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Problem"/>
									</code>
									<text>
										<reference value="#problemDescription5"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20220419"/>
										<high nullFlavor="UNK"/>
									</effectiveTime>
									<value xsi:type="CD" code="271737000" displayName="Anemia" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
										<originalText>
											<reference value="#problemDescription5"/>
										</originalText>
										<translation code="285.9" displayName="Anemia, unspecified" codeSystem="2.16.840.1.113883.6.104" codeSystemName="ICD-9-CD"/>
										<translation code="D64.9" displayName="Anemia, unspecified" codeSystem="2.16.840.1.113883.6.3" codeSystemName="ICD10CM"/>
									</value>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<observation classCode="OBS" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.6"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDP100TIYNDYPBLFEZ510AE4TO2MPJWJSZZYSYDVF5BXD5CHM5MV5E"/>
											<code code="33999-4" displayName="Status" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
											<text>
												<reference value="#problemStatus5"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20220419"/>
												<high nullFlavor="UNK"/>
											</effectiveTime>
											<value xsi:type="CE" code="55561003" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
												<originalText>
													<reference value="#problemStatus5"/>
												</originalText>
											</value>
										</observation>
									</entryRelationship>
								</observation>
							</entryRelationship>
						</act>
					</entry>
					<entry typeCode="DRIV">
						<act classCode="ACT" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.3" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.3"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDMBHZEOOFB24WKRL31CQDHDRK0PKUVMFGHTXT5RPP3TMP1CI5JD0O"/>
							<code code="CONC" codeSystem="2.16.840.1.113883.5.6" displayName="Concern"/>
							<statusCode code="active"/>
							<effectiveTime>
								<low value="20221018"/>
								<high nullFlavor="UNK"/>
							</effectiveTime>
							<entryRelationship typeCode="SUBJ" inversionInd="false">
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.4" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.4"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDMBHZEOOFB24WKRL31CQDHDRK0PKUVMFGHTXT5RPP3TMP1CI5JD0O"/>
									<code code="55607006" displayName="Problem" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
										<translation code="75326-9" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Problem"/>
									</code>
									<text>
										<reference value="#problemDescription6"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20221018"/>
										<high nullFlavor="UNK"/>
									</effectiveTime>
									<value xsi:type="CD" code="54150009" displayName="Upper respiratory infection" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
										<originalText>
											<reference value="#problemDescription6"/>
										</originalText>
										<translation code="465.9" displayName="Acute upper respiratory infections of unspecified site" codeSystem="2.16.840.1.113883.6.104" codeSystemName="ICD-9-CD"/>
										<translation code="J06.9" displayName="Acute upper respiratory infection, unspecified" codeSystem="2.16.840.1.113883.6.3" codeSystemName="ICD10CM"/>
									</value>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<streetAddressLine>Suite D</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406-4181</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ajackson@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<given>Allen</given>
													<given>B</given>
													<family>Jackson</family>
													<suffix>MD</suffix>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<observation classCode="OBS" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.6"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDMBHZEOOFB24WKRL31CQDHDRK0PKUVMFGHTXT5RPP3TMP1CI5JD0O"/>
											<code code="33999-4" displayName="Status" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
											<text>
												<reference value="#problemStatus6"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20221018"/>
												<high nullFlavor="UNK"/>
											</effectiveTime>
											<value xsi:type="CE" code="55561003" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
												<originalText>
													<reference value="#problemStatus6"/>
												</originalText>
											</value>
										</observation>
									</entryRelationship>
								</observation>
							</entryRelationship>
						</act>
					</entry>
					<entry typeCode="DRIV">
						<act classCode="ACT" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.3" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.3"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDDWZMNWQXPLZTJ51ZRKD3EJLUFJ5G00QJ32SPJILNRUODF3YBEB1C"/>
							<code code="CONC" codeSystem="2.16.840.1.113883.5.6" displayName="Concern"/>
							<statusCode code="active"/>
							<effectiveTime>
								<low value="20221018"/>
								<high nullFlavor="UNK"/>
							</effectiveTime>
							<entryRelationship typeCode="SUBJ" inversionInd="false">
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.4" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.4"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDDWZMNWQXPLZTJ51ZRKD3EJLUFJ5G00QJ32SPJILNRUODF3YBEB1C"/>
									<code code="55607006" displayName="Problem" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
										<translation code="75326-9" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Problem"/>
									</code>
									<text>
										<reference value="#problemDescription7"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20221018"/>
										<high nullFlavor="UNK"/>
									</effectiveTime>
									<value xsi:type="CD" code="243791004" displayName="Viral screening" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
										<originalText>
											<reference value="#problemDescription7"/>
										</originalText>
										<translation code="Z11.52" displayName="Encounter for screening for COVID-19" codeSystem="2.16.840.1.113883.6.3" codeSystemName="ICD10CM"/>
									</value>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<streetAddressLine>Suite D</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406-4181</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ajackson@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<given>Allen</given>
													<given>B</given>
													<family>Jackson</family>
													<suffix>MD</suffix>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<observation classCode="OBS" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.6"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDDWZMNWQXPLZTJ51ZRKD3EJLUFJ5G00QJ32SPJILNRUODF3YBEB1C"/>
											<code code="33999-4" displayName="Status" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
											<text>
												<reference value="#problemStatus7"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20221018"/>
												<high nullFlavor="UNK"/>
											</effectiveTime>
											<value xsi:type="CE" code="55561003" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
												<originalText>
													<reference value="#problemStatus7"/>
												</originalText>
											</value>
										</observation>
									</entryRelationship>
								</observation>
							</entryRelationship>
						</act>
					</entry>
					<entry typeCode="DRIV">
						<act classCode="ACT" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.3" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.3"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDLHGAT1MMRLS14JBUBB2ES3BBLS0NRUY3IPDNODRVMCJFSAUCIWP"/>
							<code code="CONC" codeSystem="2.16.840.1.113883.5.6" displayName="Concern"/>
							<statusCode code="active"/>
							<effectiveTime>
								<low value="20220419"/>
								<high nullFlavor="UNK"/>
							</effectiveTime>
							<entryRelationship typeCode="SUBJ" inversionInd="false">
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.4" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.4"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDLHGAT1MMRLS14JBUBB2ES3BBLS0NRUY3IPDNODRVMCJFSAUCIWP"/>
									<code codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" code="55607006" displayName="Problem">
										<translation code="75326-9" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Problem"/>
									</code>
									<text>
										<reference value="#problemDescription8"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20220419"/>
										<high nullFlavor="UNK"/>
									</effectiveTime>
									<value xsi:type="CD" nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
										<originalText>
											<reference value="#problemDescription8"/>
										</originalText>
									</value>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<streetAddressLine>Suite D</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406-4181</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ajackson@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<given>Allen</given>
													<given>B</given>
													<family>Jackson</family>
													<suffix>MD</suffix>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<observation classCode="OBS" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.6"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDLHGAT1MMRLS14JBUBB2ES3BBLS0NRUY3IPDNODRVMCJFSAUCIWP"/>
											<code code="33999-4" displayName="Status" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
											<text>
												<reference value="#problemStatus8"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20220419"/>
												<high nullFlavor="UNK"/>
											</effectiveTime>
											<value xsi:type="CE" code="55561003" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
												<originalText>
													<reference value="#problemStatus8"/>
												</originalText>
											</value>
										</observation>
									</entryRelationship>
								</observation>
							</entryRelationship>
						</act>
					</entry>
					<entry typeCode="DRIV">
						<act classCode="ACT" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.3" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.3"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDAQYJIGAAXSGEBEMZROZ00FQR3IEAZ2M4IWOY1VMTNNNGZR2GZY4H"/>
							<code code="CONC" codeSystem="2.16.840.1.113883.5.6" displayName="Concern"/>
							<statusCode code="active"/>
							<effectiveTime>
								<low value="20221018"/>
								<high nullFlavor="UNK"/>
							</effectiveTime>
							<entryRelationship typeCode="SUBJ" inversionInd="false">
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.4" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.4"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDAQYJIGAAXSGEBEMZROZ00FQR3IEAZ2M4IWOY1VMTNNNGZR2GZY4H"/>
									<code codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" code="55607006" displayName="Problem">
										<translation code="75326-9" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Problem"/>
									</code>
									<text>
										<reference value="#problemDescription9"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20221018"/>
										<high nullFlavor="UNK"/>
									</effectiveTime>
									<value xsi:type="CD" nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
										<originalText>
											<reference value="#problemDescription9"/>
										</originalText>
									</value>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<streetAddressLine>Suite D</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406-4181</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ajackson@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<given>Allen</given>
													<given>B</given>
													<family>Jackson</family>
													<suffix>MD</suffix>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<observation classCode="OBS" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.6"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDAQYJIGAAXSGEBEMZROZ00FQR3IEAZ2M4IWOY1VMTNNNGZR2GZY4H"/>
											<code code="33999-4" displayName="Status" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
											<text>
												<reference value="#problemStatus9"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20221018"/>
												<high nullFlavor="UNK"/>
											</effectiveTime>
											<value xsi:type="CE" code="55561003" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
												<originalText>
													<reference value="#problemStatus9"/>
												</originalText>
											</value>
										</observation>
									</entryRelationship>
								</observation>
							</entryRelationship>
						</act>
					</entry>
					<entry typeCode="DRIV">
						<act classCode="ACT" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.3" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.3"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDXYSIWU0U5TE3LY0RVSXTVST5IHAAJAUQJYPONKOCGROHSSEIQMAN"/>
							<code code="CONC" codeSystem="2.16.840.1.113883.5.6" displayName="Concern"/>
							<statusCode code="active"/>
							<effectiveTime>
								<low value="20230418"/>
								<high nullFlavor="UNK"/>
							</effectiveTime>
							<entryRelationship typeCode="SUBJ" inversionInd="false">
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.4" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.4"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDXYSIWU0U5TE3LY0RVSXTVST5IHAAJAUQJYPONKOCGROHSSEIQMAN"/>
									<code codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" code="55607006" displayName="Problem">
										<translation code="75326-9" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Problem"/>
									</code>
									<text>
										<reference value="#problemDescription10"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418"/>
										<high nullFlavor="UNK"/>
									</effectiveTime>
									<value xsi:type="CD" nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
										<originalText>
											<reference value="#problemDescription10"/>
										</originalText>
									</value>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<observation classCode="OBS" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.6"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDXYSIWU0U5TE3LY0RVSXTVST5IHAAJAUQJYPONKOCGROHSSEIQMAN"/>
											<code code="33999-4" displayName="Status" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
											<text>
												<reference value="#problemStatus10"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418"/>
												<high nullFlavor="UNK"/>
											</effectiveTime>
											<value xsi:type="CE" code="55561003" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
												<originalText>
													<reference value="#problemStatus10"/>
												</originalText>
											</value>
										</observation>
									</entryRelationship>
								</observation>
							</entryRelationship>
						</act>
					</entry>
				</section>
			</component>
			<!--******************************** Results (Observations) *********************-->
			<component>
				<section>
					<templateId root="2.16.840.1.113883.10.20.22.2.3.1" extension="2015-08-01"/>
					<templateId root="2.16.840.1.113883.10.20.22.2.3.1"/>
					<code code="30954-2" displayName="Relevant diagnostic tests and/or laboratory data" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<title>Lab Tests and Results</title>
					<text>
						<table border="1" width="100%">
							<thead>
								<tr>
									<th>Date</th>
									<th>Test Name</th>
									<th>Result</th>
									<th>Flag</th>
									<th>Ref Range</th>
									<th>Comment</th>
									<th>FillerOrderNumber</th>
									<th>LabProvider</th>
									<th>Status</th>
									<th>ReportDate</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>eGFR</td>
									<td>85.1 mL/min/1.73m2</td>
									<td/>
									<td>&gt;60.0</td>
									<td>
										<content ID="labResultsComment1"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>WBC</td>
									<td>7.2 10</td>
									<td/>
									<td>3.6-10.2</td>
									<td>
										<content ID="labResultsComment2"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>VLDL CHOL</td>
									<td>19.6 </td>
									<td/>
									<td></td>
									<td>
										<content ID="labResultsComment3"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>VITAMIN D, 25</td>
									<td>21 ng/mL</td>
									<td>Low</td>
									<td>30-100</td>
									<td>
										<content ID="labResultsComment4"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>VITAMIN B12</td>
									<td>248 pg/mL</td>
									<td/>
									<td>180-914</td>
									<td>
										<content ID="labResultsComment5"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>TSH</td>
									<td>1.37 mIU/mL</td>
									<td/>
									<td>0.40-4.50</td>
									<td>
										<content ID="labResultsComment6"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>TRIGLYCERIDES</td>
									<td>98 mg/dL</td>
									<td/>
									<td>&lt;150</td>
									<td>
										<content ID="labResultsComment7"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>TOTAL PROTEIN</td>
									<td>7.20 g/dL</td>
									<td/>
									<td>6.00-8.30</td>
									<td>
										<content ID="labResultsComment8"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>T4 FREE</td>
									<td>0.77 ng/dL</td>
									<td/>
									<td>0.61-1.12</td>
									<td>
										<content ID="labResultsComment9"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>SODIUM</td>
									<td>139 mmol</td>
									<td/>
									<td>136-145</td>
									<td>
										<content ID="labResultsComment10"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>RDW</td>
									<td>12.6 %</td>
									<td/>
									<td>12.1-16.2</td>
									<td>
										<content ID="labResultsComment11"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>RBC</td>
									<td>4.24 10</td>
									<td/>
									<td>4.06-5.63</td>
									<td>
										<content ID="labResultsComment12"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>PSA</td>
									<td>0.88 ng/mL</td>
									<td/>
									<td>0.00-4.00</td>
									<td>
										<content ID="labResultsComment13"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>POTASSIUM</td>
									<td>3.4 mmol/L</td>
									<td>Low</td>
									<td>3.5-5.1</td>
									<td>
										<content ID="labResultsComment14"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>PLATELETS</td>
									<td>356.0 10</td>
									<td/>
									<td>140.0-440.0</td>
									<td>
										<content ID="labResultsComment15"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>NON-HDL CHOLEST</td>
									<td>126.0 mg/dL</td>
									<td/>
									<td></td>
									<td>
										<content ID="labResultsComment16"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>MPV</td>
									<td>8.2 fL</td>
									<td/>
									<td>7.4-11.4</td>
									<td>
										<content ID="labResultsComment17"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>MCV</td>
									<td>90.1 fL</td>
									<td/>
									<td>73.0-96.2</td>
									<td>
										<content ID="labResultsComment18"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>MCHC</td>
									<td>34.1 g/dL</td>
									<td/>
									<td>31.5-35.7</td>
									<td>
										<content ID="labResultsComment19"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>MCH</td>
									<td>30.7 pg</td>
									<td/>
									<td>23.8-33.4</td>
									<td>
										<content ID="labResultsComment20"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>LDL-CHOLESTEROL</td>
									<td>106 mg/dL</td>
									<td/>
									<td>&lt;130</td>
									<td>
										<content ID="labResultsComment21"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>IRON, SERUM</td>
									<td>85 ug/dL</td>
									<td/>
									<td>50-212</td>
									<td>
										<content ID="labResultsComment22"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>HGB A1C</td>
									<td>4.7 %</td>
									<td>Low</td>
									<td>5.4-6.6</td>
									<td>
										<content ID="labResultsComment23"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>HEMOGLOBIN</td>
									<td>13.0 g/dL</td>
									<td>Low</td>
									<td>14.0-18.0</td>
									<td>
										<content ID="labResultsComment24"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>HEMATOCRIT</td>
									<td>38.2 %</td>
									<td>Low</td>
									<td>42.0-52.0</td>
									<td>
										<content ID="labResultsComment25"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>HDL-CHOLESTEROL</td>
									<td>54 mg/dL</td>
									<td/>
									<td>23-92</td>
									<td>
										<content ID="labResultsComment26"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>GLUCOSE</td>
									<td>101 mg/dL</td>
									<td/>
									<td>70-105</td>
									<td>
										<content ID="labResultsComment27"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>GLOBULIN</td>
									<td>2.9 g/dL</td>
									<td/>
									<td>1.9-3.7</td>
									<td>
										<content ID="labResultsComment28"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>FOLIC ACID</td>
									<td>10.6 ng/mL</td>
									<td>Normal</td>
									<td>5.9-24.8</td>
									<td>
										<content ID="labResultsComment29">&lt;3.4 Low
3.4 - 5.4 Borderline
&gt;5.4 Normal
&gt;49.5</content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>FERRITIN</td>
									<td>212 ng/mL</td>
									<td/>
									<td>24-336</td>
									<td>
										<content ID="labResultsComment30"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>CREATININE, SERUM</td>
									<td>1.0 mg/dL</td>
									<td/>
									<td>0.7-1.3</td>
									<td>
										<content ID="labResultsComment31"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>CO2</td>
									<td>31 mmol/L</td>
									<td/>
									<td>21-31</td>
									<td>
										<content ID="labResultsComment32"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>CHOLESTEROL</td>
									<td>180 mg/dL</td>
									<td/>
									<td>&lt;200</td>
									<td>
										<content ID="labResultsComment33"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>CHOL/HDL RATIO</td>
									<td>3.3 calc</td>
									<td/>
									<td>&lt;5.0</td>
									<td>
										<content ID="labResultsComment34"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>CHLORIDE</td>
									<td>98 mmol/L</td>
									<td/>
									<td>98-107</td>
									<td>
										<content ID="labResultsComment35"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>CALCIUM, SERUM</td>
									<td>9.0 mg/dL</td>
									<td/>
									<td>8.6-10.3</td>
									<td>
										<content ID="labResultsComment36"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>BUN/CREAT RATIO</td>
									<td>18.0 RATIO</td>
									<td/>
									<td>6.0-22.0</td>
									<td>
										<content ID="labResultsComment37"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>BUN</td>
									<td>18 mg/dL</td>
									<td/>
									<td>7-25</td>
									<td>
										<content ID="labResultsComment38"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>BILIRUBIN TOTAL</td>
									<td>0.7 mg/dL</td>
									<td/>
									<td>0.3-1.0</td>
									<td>
										<content ID="labResultsComment39"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>AST (SGOT)</td>
									<td>21 IU/L</td>
									<td/>
									<td>0-40</td>
									<td>
										<content ID="labResultsComment40"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>ANION GAP</td>
									<td>10.0 </td>
									<td>Normal</td>
									<td>3 - 20</td>
									<td>
										<content ID="labResultsComment41"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>ALT (SGPT)</td>
									<td>21 IU/L</td>
									<td/>
									<td>0-44</td>
									<td>
										<content ID="labResultsComment42"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>ALK PHOS</td>
									<td>50 IU/L</td>
									<td/>
									<td>30-115</td>
									<td>
										<content ID="labResultsComment43"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>ALBUMIN, SERUM</td>
									<td>4.3 g/dL</td>
									<td/>
									<td>3.5-5.7</td>
									<td>
										<content ID="labResultsComment44"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>AAGFR ESTIMATED</td>
									<td>103.0 mL/min/1.73m2</td>
									<td/>
									<td>&gt;60.0</td>
									<td>
										<content ID="labResultsComment45"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
									<td>A/G RATIO</td>
									<td>1.5 RATIO</td>
									<td/>
									<td>1.0-2.5</td>
									<td>
										<content ID="labResultsComment46"></content>
									</td>
									<td>356896</td>
									<td></td>
									<td>Final results - results stored and verified. Can only be changed with a corrected result</td>
									<td>Tuesday, April 18, 2023 at 10:12:00 am</td>
								</tr>
							</tbody>
						</table>
					</text>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDB3CY11HXGB2ODFG2HSCNP1G4HBTTREH3JUYYHKQRIUAS0UYA3QK"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime >
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDB3CY11HXGB2ODFG2HSCNP1G4HBTTREH3JUYYHKQRIUAS0UYA3QK"/>
									<code nullFlavor="UNK" displayName="eGFR" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment1"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime >
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="mL/min/1.73m2" value="85.1" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDB3CY11HXGB2ODFG2HSCNP1G4HBTTREH3JUYYHKQRIUAS0UYA3QK"/>
											<code nullFlavor="UNK" displayName="eGFR" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment1"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment1"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">&gt;60.0 mL/min/1.73m2</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDICRJBB0RIMOKGLYF30HYJW1JTKU0GXJK44NGV0O344FLVBEA2N2N"/>
							<code code="6690-2" displayName="WBC" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDICRJBB0RIMOKGLYF30HYJW1JTKU0GXJK44NGV0O344FLVBEA2N2N"/>
									<code code="6690-2" displayName="WBC" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment2"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="10" value="7.2" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDICRJBB0RIMOKGLYF30HYJW1JTKU0GXJK44NGV0O344FLVBEA2N2N"/>
											<code displayName="WBC" code="6690-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment2"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment2"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">3.6-10.2 10</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDIOJYHAWA4REELXE5BPMDXP2EIDDU44RO4NJIXJLTI30Q4FYDIG0J"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDIOJYHAWA4REELXE5BPMDXP2EIDDU44RO4NJIXJLTI30Q4FYDIG0J"/>
									<code nullFlavor="UNK" displayName="VLDL CHOL" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment3"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value value="19.6" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDIOJYHAWA4REELXE5BPMDXP2EIDDU44RO4NJIXJLTI30Q4FYDIG0J"/>
											<code nullFlavor="UNK" displayName="VLDL CHOL" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment3"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment3"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDQ5R5DE303ZF4DWHT5X4QD1141OHZYAKNROVAOWHCUPKRG1X4X30"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDQ5R5DE303ZF4DWHT5X4QD1141OHZYAKNROVAOWHCUPKRG1X4X30"/>
									<code nullFlavor="UNK" displayName="VITAMIN D, 25" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment4"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="ng/mL" value="21" xsi:type="PQ"/>
									<interpretationCode code="L" displayName="Low" codeSystem="2.16.840.1.113883.5.83" codeSystemName="ObservationInterpretation"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDQ5R5DE303ZF4DWHT5X4QD1141OHZYAKNROVAOWHCUPKRG1X4X30"/>
											<code nullFlavor="UNK" displayName="VITAMIN D, 25" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment4"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment4"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">30-100 ng/mL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDWQJL2GJXOXQ3MRQ53DR55QTWUNHBVBYIM1254RPXAZKJQJGYS1MO"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDWQJL2GJXOXQ3MRQ53DR55QTWUNHBVBYIM1254RPXAZKJQJGYS1MO"/>
									<code nullFlavor="UNK" displayName="VITAMIN B12" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment5"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="pg/mL" value="248" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDWQJL2GJXOXQ3MRQ53DR55QTWUNHBVBYIM1254RPXAZKJQJGYS1MO"/>
											<code nullFlavor="UNK" displayName="VITAMIN B12" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment5"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment5"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">180-914 pg/mL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDNWBY33DN3PWGJGDL1SBR4CTZMNHH2RLYZBKA5UDV4MEOEJ2O1QSL"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDNWBY33DN3PWGJGDL1SBR4CTZMNHH2RLYZBKA5UDV4MEOEJ2O1QSL"/>
									<code nullFlavor="UNK" displayName="TSH" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment6"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="mIU/mL" value="1.37" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDNWBY33DN3PWGJGDL1SBR4CTZMNHH2RLYZBKA5UDV4MEOEJ2O1QSL"/>
											<code nullFlavor="UNK" displayName="TSH" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment6"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment6"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">0.40-4.50 mIU/mL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDWDJQWS3QBYOXHE5VNEMXNRBRH4WN0X2AI4L03MJ01URI4INCJJ"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDWDJQWS3QBYOXHE5VNEMXNRBRH4WN0X2AI4L03MJ01URI4INCJJ"/>
									<code nullFlavor="UNK" displayName="TRIGLYCERIDES" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment7"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="mg/dL" value="98" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDWDJQWS3QBYOXHE5VNEMXNRBRH4WN0X2AI4L03MJ01URI4INCJJ"/>
											<code nullFlavor="UNK" displayName="TRIGLYCERIDES" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment7"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment7"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">&lt;150 mg/dL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDAJYFZKY1OFQCCPDTP3VEH2J3VKI5PXJFFABIUVMP133UEDQTAKIC"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDAJYFZKY1OFQCCPDTP3VEH2J3VKI5PXJFFABIUVMP133UEDQTAKIC"/>
									<code nullFlavor="UNK" displayName="TOTAL PROTEIN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment8"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="g/dL" value="7.20" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDAJYFZKY1OFQCCPDTP3VEH2J3VKI5PXJFFABIUVMP133UEDQTAKIC"/>
											<code nullFlavor="UNK" displayName="TOTAL PROTEIN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment8"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment8"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">6.00-8.30 g/dL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDT3C4IDGPU0YCLLQXHFIRD0PVEFNYSKT3QZ2FVDM5TLOHDHORRV4P"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDT3C4IDGPU0YCLLQXHFIRD0PVEFNYSKT3QZ2FVDM5TLOHDHORRV4P"/>
									<code nullFlavor="UNK" displayName="T4 FREE" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment9"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="ng/dL" value="0.77" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDT3C4IDGPU0YCLLQXHFIRD0PVEFNYSKT3QZ2FVDM5TLOHDHORRV4P"/>
											<code nullFlavor="UNK" displayName="T4 FREE" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment9"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment9"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">0.61-1.12 ng/dL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDWESPTKQ4DYB0EWPDA533YXCTPINILWSK32T4NFHVOZRXN4HAKXLH"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDWESPTKQ4DYB0EWPDA533YXCTPINILWSK32T4NFHVOZRXN4HAKXLH"/>
									<code nullFlavor="UNK" displayName="SODIUM" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment10"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="mmol" value="139" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDWESPTKQ4DYB0EWPDA533YXCTPINILWSK32T4NFHVOZRXN4HAKXLH"/>
											<code nullFlavor="UNK" displayName="SODIUM" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment10"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment10"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">136-145 mmol</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDBZ5FP3LJ2YM5OOA21F40TDJLZITSAIJJXYSJPNI140C1XHCYGSOM"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDBZ5FP3LJ2YM5OOA21F40TDJLZITSAIJJXYSJPNI140C1XHCYGSOM"/>
									<code nullFlavor="UNK" displayName="RDW" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment11"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="%" value="12.6" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDBZ5FP3LJ2YM5OOA21F40TDJLZITSAIJJXYSJPNI140C1XHCYGSOM"/>
											<code nullFlavor="UNK" displayName="RDW" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment11"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment11"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">12.1-16.2 %</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDKZ14C2FS0VEYLKJF0YEXNMAVXODINKZK40IYLUJR0PWASTTOHAM"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDKZ14C2FS0VEYLKJF0YEXNMAVXODINKZK40IYLUJR0PWASTTOHAM"/>
									<code nullFlavor="UNK" displayName="RBC" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment12"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="10" value="4.24" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDKZ14C2FS0VEYLKJF0YEXNMAVXODINKZK40IYLUJR0PWASTTOHAM"/>
											<code nullFlavor="UNK" displayName="RBC" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment12"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment12"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">4.06-5.63 10</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDG5MZHRP424SUBCUUCTPBQ0ZXEPKPYOOFULSLWTKR0CGZBJRPZBSF"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDG5MZHRP424SUBCUUCTPBQ0ZXEPKPYOOFULSLWTKR0CGZBJRPZBSF"/>
									<code nullFlavor="UNK" displayName="PSA" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment13"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="ng/mL" value="0.88" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDG5MZHRP424SUBCUUCTPBQ0ZXEPKPYOOFULSLWTKR0CGZBJRPZBSF"/>
											<code nullFlavor="UNK" displayName="PSA" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment13"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment13"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">0.00-4.00 ng/mL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDGBBII4EGUHUSNE4ZTAZY1YGTYK5I1YL5SKFBODFJZHVKDPTUMX4K"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDGBBII4EGUHUSNE4ZTAZY1YGTYK5I1YL5SKFBODFJZHVKDPTUMX4K"/>
									<code nullFlavor="UNK" displayName="POTASSIUM" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment14"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="mmol/L" value="3.4" xsi:type="PQ"/>
									<interpretationCode code="L" displayName="Low" codeSystem="2.16.840.1.113883.5.83" codeSystemName="ObservationInterpretation"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDGBBII4EGUHUSNE4ZTAZY1YGTYK5I1YL5SKFBODFJZHVKDPTUMX4K"/>
											<code nullFlavor="UNK" displayName="POTASSIUM" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment14"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment14"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">3.5-5.1 mmol/L</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDE2U4RXCKVBB3IP0Z3SJCUMP4FLMXZHN2IUKFGFI3S3B0DAA55AII"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDE2U4RXCKVBB3IP0Z3SJCUMP4FLMXZHN2IUKFGFI3S3B0DAA55AII"/>
									<code nullFlavor="UNK" displayName="PLATELETS" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment15"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="10" value="356.0" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDE2U4RXCKVBB3IP0Z3SJCUMP4FLMXZHN2IUKFGFI3S3B0DAA55AII"/>
											<code nullFlavor="UNK" displayName="PLATELETS" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment15"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment15"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">140.0-440.0 10</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID0U0IY3F3VSUHPFW1HZRFXSUE1MPTAVTQAX43ZNJH1U5U1JUQPEDM"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID0U0IY3F3VSUHPFW1HZRFXSUE1MPTAVTQAX43ZNJH1U5U1JUQPEDM"/>
									<code nullFlavor="UNK" displayName="NON-HDL CHOLEST" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment16"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="mg/dL" value="126.0" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="ID0U0IY3F3VSUHPFW1HZRFXSUE1MPTAVTQAX43ZNJH1U5U1JUQPEDM"/>
											<code nullFlavor="UNK" displayName="NON-HDL CHOLEST" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment16"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment16"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDAIZA0R04OQAAEQVMUI50VLLQ0HQ14IV2FX2BEMBMLDWFKF0MAURD"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDAIZA0R04OQAAEQVMUI50VLLQ0HQ14IV2FX2BEMBMLDWFKF0MAURD"/>
									<code nullFlavor="UNK" displayName="MPV" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment17"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="fL" value="8.2" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDAIZA0R04OQAAEQVMUI50VLLQ0HQ14IV2FX2BEMBMLDWFKF0MAURD"/>
											<code nullFlavor="UNK" displayName="MPV" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment17"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment17"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">7.4-11.4 fL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID4VDC3W1YTJSNH5S4ZQZPC1HKXEKQ0S1TSCTWDAM3ADSFTKKVVOZB"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID4VDC3W1YTJSNH5S4ZQZPC1HKXEKQ0S1TSCTWDAM3ADSFTKKVVOZB"/>
									<code nullFlavor="UNK" displayName="MCV" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment18"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="fL" value="90.1" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="ID4VDC3W1YTJSNH5S4ZQZPC1HKXEKQ0S1TSCTWDAM3ADSFTKKVVOZB"/>
											<code nullFlavor="UNK" displayName="MCV" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment18"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment18"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">73.0-96.2 fL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDUZDUWCUE4UBHNEDGXPRKOVYELPBJP2OBLJQR5NJYITZK4MIJLCSF"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDUZDUWCUE4UBHNEDGXPRKOVYELPBJP2OBLJQR5NJYITZK4MIJLCSF"/>
									<code nullFlavor="UNK" displayName="MCHC" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment19"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="g/dL" value="34.1" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDUZDUWCUE4UBHNEDGXPRKOVYELPBJP2OBLJQR5NJYITZK4MIJLCSF"/>
											<code nullFlavor="UNK" displayName="MCHC" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment19"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment19"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">31.5-35.7 g/dL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDGUGNBJJNYLONGORL0O3X0VQAD4H3A2WMF4RMEK5N1V0FORLAH3E"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDGUGNBJJNYLONGORL0O3X0VQAD4H3A2WMF4RMEK5N1V0FORLAH3E"/>
									<code nullFlavor="UNK" displayName="MCH" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment20"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="pg" value="30.7" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDGUGNBJJNYLONGORL0O3X0VQAD4H3A2WMF4RMEK5N1V0FORLAH3E"/>
											<code nullFlavor="UNK" displayName="MCH" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment20"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment20"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">23.8-33.4 pg</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDTPMGT5X3EKYZPWCE2MVEPCNVKCNQ5GDH3HUIMXFK1GDDVIGDVHXL"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDTPMGT5X3EKYZPWCE2MVEPCNVKCNQ5GDH3HUIMXFK1GDDVIGDVHXL"/>
									<code nullFlavor="UNK" displayName="LDL-CHOLESTEROL" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment21"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="mg/dL" value="106" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDTPMGT5X3EKYZPWCE2MVEPCNVKCNQ5GDH3HUIMXFK1GDDVIGDVHXL"/>
											<code nullFlavor="UNK" displayName="LDL-CHOLESTEROL" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment21"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment21"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">&lt;130 mg/dL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDT255UBZYONV1C40H1DVE2OSTBEIXH0VUHYEIARMH11SRFO1RXP0O"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDT255UBZYONV1C40H1DVE2OSTBEIXH0VUHYEIARMH11SRFO1RXP0O"/>
									<code nullFlavor="UNK" displayName="IRON, SERUM" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment22"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="ug/dL" value="85" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDT255UBZYONV1C40H1DVE2OSTBEIXH0VUHYEIARMH11SRFO1RXP0O"/>
											<code nullFlavor="UNK" displayName="IRON, SERUM" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment22"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment22"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">50-212 ug/dL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDTCTQFROUOR5QCF3ZYBR4U5ZTNNXKT5WEDIRRBYFF4XMYQGSPC2HG"/>
							<code code="17856-6" displayName="HGB A1C" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDTCTQFROUOR5QCF3ZYBR4U5ZTNNXKT5WEDIRRBYFF4XMYQGSPC2HG"/>
									<code code="17856-6" displayName="HGB A1C" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment23"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="%" value="4.7" xsi:type="PQ"/>
									<interpretationCode code="L" displayName="Low" codeSystem="2.16.840.1.113883.5.83" codeSystemName="ObservationInterpretation"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDTCTQFROUOR5QCF3ZYBR4U5ZTNNXKT5WEDIRRBYFF4XMYQGSPC2HG"/>
											<code displayName="HGB A1C" code="17856-6" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment23"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment23"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">5.4-6.6 %</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDQMAOSOIH5MNHEOEHBOFTMCBK2OBNSLHJVBBWQYFTUVTOGNMO4T4K"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDQMAOSOIH5MNHEOEHBOFTMCBK2OBNSLHJVBBWQYFTUVTOGNMO4T4K"/>
									<code nullFlavor="UNK" displayName="HEMOGLOBIN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment24"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="g/dL" value="13.0" xsi:type="PQ"/>
									<interpretationCode code="L" displayName="Low" codeSystem="2.16.840.1.113883.5.83" codeSystemName="ObservationInterpretation"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDQMAOSOIH5MNHEOEHBOFTMCBK2OBNSLHJVBBWQYFTUVTOGNMO4T4K"/>
											<code nullFlavor="UNK" displayName="HEMOGLOBIN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment24"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment24"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">14.0-18.0 g/dL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID15KCPPYIX1X0CJQDE22AU34YBJAFUPL0QBLO5SGHYSUYRISMGOLG"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID15KCPPYIX1X0CJQDE22AU34YBJAFUPL0QBLO5SGHYSUYRISMGOLG"/>
									<code nullFlavor="UNK" displayName="HEMATOCRIT" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment25"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="%" value="38.2" xsi:type="PQ"/>
									<interpretationCode code="L" displayName="Low" codeSystem="2.16.840.1.113883.5.83" codeSystemName="ObservationInterpretation"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="ID15KCPPYIX1X0CJQDE22AU34YBJAFUPL0QBLO5SGHYSUYRISMGOLG"/>
											<code nullFlavor="UNK" displayName="HEMATOCRIT" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment25"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment25"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">42.0-52.0 %</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID013S0ZPKZ5Y3NFCDXWV1P53QFJP5FFSH5K0HMXEJLLOCREQT3CMJ"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID013S0ZPKZ5Y3NFCDXWV1P53QFJP5FFSH5K0HMXEJLLOCREQT3CMJ"/>
									<code nullFlavor="UNK" displayName="HDL-CHOLESTEROL" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment26"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="mg/dL" value="54" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="ID013S0ZPKZ5Y3NFCDXWV1P53QFJP5FFSH5K0HMXEJLLOCREQT3CMJ"/>
											<code nullFlavor="UNK" displayName="HDL-CHOLESTEROL" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment26"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment26"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">23-92 mg/dL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDJ1OQ4YIFSSIQFN3ACT1JEMZ5GG5LDU3BFAHIVEPXHLWM4YPSVBUE"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDJ1OQ4YIFSSIQFN3ACT1JEMZ5GG5LDU3BFAHIVEPXHLWM4YPSVBUE"/>
									<code nullFlavor="UNK" displayName="GLUCOSE" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment27"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="mg/dL" value="101" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDJ1OQ4YIFSSIQFN3ACT1JEMZ5GG5LDU3BFAHIVEPXHLWM4YPSVBUE"/>
											<code nullFlavor="UNK" displayName="GLUCOSE" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment27"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment27"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">70-105 mg/dL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDY2XRKJDMW4PPEKZK1Y0BMXONUPK3RQUBINQEWYETYBYPAK4QEEG"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDY2XRKJDMW4PPEKZK1Y0BMXONUPK3RQUBINQEWYETYBYPAK4QEEG"/>
									<code nullFlavor="UNK" displayName="GLOBULIN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment28"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="g/dL" value="2.9" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDY2XRKJDMW4PPEKZK1Y0BMXONUPK3RQUBINQEWYETYBYPAK4QEEG"/>
											<code nullFlavor="UNK" displayName="GLOBULIN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment28"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment28"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">1.9-3.7 g/dL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID2BAGD2TZGPUGC0ZPEWJELW3CRDQ11FSCXSKKXDGRXGQ32RLZAXK"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID2BAGD2TZGPUGC0ZPEWJELW3CRDQ11FSCXSKKXDGRXGQ32RLZAXK"/>
									<code nullFlavor="UNK" displayName="FOLIC ACID" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment29"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="ng/mL" value="10.6" xsi:type="PQ"/>
									<interpretationCode code="N" displayName="Normal" codeSystem="2.16.840.1.113883.5.83" codeSystemName="ObservationInterpretation"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="ID2BAGD2TZGPUGC0ZPEWJELW3CRDQ11FSCXSKKXDGRXGQ32RLZAXK"/>
											<code nullFlavor="UNK" displayName="FOLIC ACID" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment29"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment29"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">5.9-24.8 ng/mL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDK1G3TQLN0Y11MBQEYZE1Z5HJEDJHAGVXVHHU4VGOTHYQZ5WW1WCG"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDK1G3TQLN0Y11MBQEYZE1Z5HJEDJHAGVXVHHU4VGOTHYQZ5WW1WCG"/>
									<code nullFlavor="UNK" displayName="FERRITIN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment30"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="ng/mL" value="212" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDK1G3TQLN0Y11MBQEYZE1Z5HJEDJHAGVXVHHU4VGOTHYQZ5WW1WCG"/>
											<code nullFlavor="UNK" displayName="FERRITIN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment30"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment30"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">24-336 ng/mL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID41RFNTPPAVOCFQUQSY0OB34FDNKT1CHP5FYG0ZNFJTDAUESEUNAI"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID41RFNTPPAVOCFQUQSY0OB34FDNKT1CHP5FYG0ZNFJTDAUESEUNAI"/>
									<code nullFlavor="UNK" displayName="CREATININE, SERUM" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment31"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="mg/dL" value="1.0" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="ID41RFNTPPAVOCFQUQSY0OB34FDNKT1CHP5FYG0ZNFJTDAUESEUNAI"/>
											<code nullFlavor="UNK" displayName="CREATININE, SERUM" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment31"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment31"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">0.7-1.3 mg/dL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID5NFVGVU0PKFNFIGIFIPVF3LVYHXV1CUK2HCN1AGFTHRCB1ERB3EN"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID5NFVGVU0PKFNFIGIFIPVF3LVYHXV1CUK2HCN1AGFTHRCB1ERB3EN"/>
									<code nullFlavor="UNK" displayName="CO2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment32"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="mmol/L" value="31" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="ID5NFVGVU0PKFNFIGIFIPVF3LVYHXV1CUK2HCN1AGFTHRCB1ERB3EN"/>
											<code nullFlavor="UNK" displayName="CO2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment32"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment32"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">21-31 mmol/L</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDWOSK0MGK2MWPPSEO4HRXTILNOB0EJVI1RSBTMPHEIERVKVC53OBI"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDWOSK0MGK2MWPPSEO4HRXTILNOB0EJVI1RSBTMPHEIERVKVC53OBI"/>
									<code nullFlavor="UNK" displayName="CHOLESTEROL" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment33"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="mg/dL" value="180" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDWOSK0MGK2MWPPSEO4HRXTILNOB0EJVI1RSBTMPHEIERVKVC53OBI"/>
											<code nullFlavor="UNK" displayName="CHOLESTEROL" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment33"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment33"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">&lt;200 mg/dL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDHEYPKASVXJSLLQ13DN03O0RP5HOLGKLFNRSRA2O1MGSALHIDMZQK"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDHEYPKASVXJSLLQ13DN03O0RP5HOLGKLFNRSRA2O1MGSALHIDMZQK"/>
									<code nullFlavor="UNK" displayName="CHOL/HDL RATIO" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment34"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="calc" value="3.3" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDHEYPKASVXJSLLQ13DN03O0RP5HOLGKLFNRSRA2O1MGSALHIDMZQK"/>
											<code nullFlavor="UNK" displayName="CHOL/HDL RATIO" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment34"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment34"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">&lt;5.0 calc</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDQW1K5IYCO0KNMUTYQR3J03MS4EPOIEAXZVGZIZLJTSBUT20FN5HH"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDQW1K5IYCO0KNMUTYQR3J03MS4EPOIEAXZVGZIZLJTSBUT20FN5HH"/>
									<code nullFlavor="UNK" displayName="CHLORIDE" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment35"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="mmol/L" value="98" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDQW1K5IYCO0KNMUTYQR3J03MS4EPOIEAXZVGZIZLJTSBUT20FN5HH"/>
											<code nullFlavor="UNK" displayName="CHLORIDE" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment35"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment35"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">98-107 mmol/L</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDKKJXLLUT5NIDMHNV5RF0FTXBIE3YAEYNX42SWMJFXS4YUEXPALYE"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDKKJXLLUT5NIDMHNV5RF0FTXBIE3YAEYNX42SWMJFXS4YUEXPALYE"/>
									<code nullFlavor="UNK" displayName="CALCIUM, SERUM" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment36"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="mg/dL" value="9.0" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDKKJXLLUT5NIDMHNV5RF0FTXBIE3YAEYNX42SWMJFXS4YUEXPALYE"/>
											<code nullFlavor="UNK" displayName="CALCIUM, SERUM" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment36"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment36"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">8.6-10.3 mg/dL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDKADPXQJLMG1MKGNNI0MN2WSUEEQSXHHPHNT4M0O12GMXV1K3ECSN"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDKADPXQJLMG1MKGNNI0MN2WSUEEQSXHHPHNT4M0O12GMXV1K3ECSN"/>
									<code nullFlavor="UNK" displayName="BUN/CREAT RATIO" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment37"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="RATIO" value="18.0" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDKADPXQJLMG1MKGNNI0MN2WSUEEQSXHHPHNT4M0O12GMXV1K3ECSN"/>
											<code nullFlavor="UNK" displayName="BUN/CREAT RATIO" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment37"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment37"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">6.0-22.0 RATIO</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID2J1TNF45OJ5DBAVO3IETZODBMMXULDKYNIAJJQH021ERCVHFBEVE"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID2J1TNF45OJ5DBAVO3IETZODBMMXULDKYNIAJJQH021ERCVHFBEVE"/>
									<code nullFlavor="UNK" displayName="BUN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment38"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="mg/dL" value="18" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="ID2J1TNF45OJ5DBAVO3IETZODBMMXULDKYNIAJJQH021ERCVHFBEVE"/>
											<code nullFlavor="UNK" displayName="BUN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment38"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment38"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">7-25 mg/dL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDQ3010J520P0ONJYJIVUSFTAFNC55VY0QKV0CHREIO1EHYBWLZTOL"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDQ3010J520P0ONJYJIVUSFTAFNC55VY0QKV0CHREIO1EHYBWLZTOL"/>
									<code nullFlavor="UNK" displayName="BILIRUBIN TOTAL" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment39"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="mg/dL" value="0.7" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDQ3010J520P0ONJYJIVUSFTAFNC55VY0QKV0CHREIO1EHYBWLZTOL"/>
											<code nullFlavor="UNK" displayName="BILIRUBIN TOTAL" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment39"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment39"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">0.3-1.0 mg/dL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDY0F5JZ3YF42FHYANNMCQ1QCKFJ4Q2555TJHFKFDFWPLJD3HJYPFI"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDY0F5JZ3YF42FHYANNMCQ1QCKFJ4Q2555TJHFKFDFWPLJD3HJYPFI"/>
									<code nullFlavor="UNK" displayName="AST (SGOT)" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment40"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="IU/L" value="21" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDY0F5JZ3YF42FHYANNMCQ1QCKFJ4Q2555TJHFKFDFWPLJD3HJYPFI"/>
											<code nullFlavor="UNK" displayName="AST (SGOT)" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment40"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment40"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">0-40 IU/L</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDP3YTF0T5C5NKOFQANSGQ0HYL5CCCLBPH0L4QVIB4UONE1ZQFAHTF"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDP3YTF0T5C5NKOFQANSGQ0HYL5CCCLBPH0L4QVIB4UONE1ZQFAHTF"/>
									<code nullFlavor="UNK" displayName="ANION GAP" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment41"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value value="10.0" xsi:type="PQ"/>
									<interpretationCode code="N" displayName="Normal" codeSystem="2.16.840.1.113883.5.83" codeSystemName="ObservationInterpretation"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDP3YTF0T5C5NKOFQANSGQ0HYL5CCCLBPH0L4QVIB4UONE1ZQFAHTF"/>
											<code nullFlavor="UNK" displayName="ANION GAP" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment41"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment41"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">3 - 20 </value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDRR2DUWEK2HZYLFRZZIFQ5RCJ1ERY2AGKC4YNMABLAZFG34THPQXH"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDRR2DUWEK2HZYLFRZZIFQ5RCJ1ERY2AGKC4YNMABLAZFG34THPQXH"/>
									<code nullFlavor="UNK" displayName="ALT (SGPT)" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment42"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="IU/L" value="21" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDRR2DUWEK2HZYLFRZZIFQ5RCJ1ERY2AGKC4YNMABLAZFG34THPQXH"/>
											<code nullFlavor="UNK" displayName="ALT (SGPT)" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment42"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment42"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">0-44 IU/L</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDAUVI0WASQCMJKH01XJ2AT2XMGO310NGZF5SGMYE0LPMHAFNE1QIL"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDAUVI0WASQCMJKH01XJ2AT2XMGO310NGZF5SGMYE0LPMHAFNE1QIL"/>
									<code nullFlavor="UNK" displayName="ALK PHOS" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment43"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="IU/L" value="50" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDAUVI0WASQCMJKH01XJ2AT2XMGO310NGZF5SGMYE0LPMHAFNE1QIL"/>
											<code nullFlavor="UNK" displayName="ALK PHOS" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment43"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment43"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">30-115 IU/L</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID0UIAAPKB1MM4CKO41VQZLKERVBRWBR5SYUAHLSNN23NVIJETETWO"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID0UIAAPKB1MM4CKO41VQZLKERVBRWBR5SYUAHLSNN23NVIJETETWO"/>
									<code nullFlavor="UNK" displayName="ALBUMIN, SERUM" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment44"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="g/dL" value="4.3" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="ID0UIAAPKB1MM4CKO41VQZLKERVBRWBR5SYUAHLSNN23NVIJETETWO"/>
											<code nullFlavor="UNK" displayName="ALBUMIN, SERUM" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment44"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment44"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">3.5-5.7 g/dL</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDFJSKNQ3C4I4VGP3KYUFKMDCP5GFNA1N0MYNVS4LKP3C4S4VK4END"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDFJSKNQ3C4I4VGP3KYUFKMDCP5GFNA1N0MYNVS4LKP3C4S4VK4END"/>
									<code nullFlavor="UNK" displayName="AAGFR ESTIMATED" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment45"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="mL/min/1.73m2" value="103.0" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDFJSKNQ3C4I4VGP3KYUFKMDCP5GFNA1N0MYNVS4LKP3C4S4VK4END"/>
											<code nullFlavor="UNK" displayName="AAGFR ESTIMATED" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment45"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment45"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">&gt;60.0 mL/min/1.73m2</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="BATTERY" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.1"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDGADJIMEZ2T5UE3WJMS55X0QAWLLYAAK1E0EI0CBXJCOTTC01RTXF"/>
							<code nullFlavor="UNK" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low value="20230418101200"/>
								<high value="20230418101200"/>
							</effectiveTime>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.2"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDGADJIMEZ2T5UE3WJMS55X0QAWLLYAAK1E0EI0CBXJCOTTC01RTXF"/>
									<code nullFlavor="UNK" displayName="A/G RATIO" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#labResultsComment46"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime>
										<low value="20230418101200"/>
									</effectiveTime>
									<value unit="RATIO" value="1.5" xsi:type="PQ"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
									<entryRelationship typeCode="REFR" inversionInd="false">
										<procedure classCode="PROC" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.13" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.13"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.99999999.900" extension="IDGADJIMEZ2T5UE3WJMS55X0QAWLLYAAK1E0EI0CBXJCOTTC01RTXF"/>
											<code nullFlavor="UNK" displayName="A/G RATIO" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
												<originalText>
													<reference value="#labResultsComment46"/>
												</originalText>
											</code>
											<text>
												<reference value="#labResultsComment46"/>
											</text>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418101200"/>
											</effectiveTime>
										</procedure>
									</entryRelationship>
									<referenceRange>
										<observationRange>
											<value xsi:type="ED">1.0-2.5 RATIO</value>
										</observationRange>
									</referenceRange>
								</observation>
							</component>
						</organizer>
					</entry>
				</section>
			</component>
			<!--******************************** Vital Signs ********************************-->
			<component>
				<section>
					<templateId root="2.16.840.1.113883.10.20.22.2.4.1" extension="2015-08-01"/>
					<templateId root="2.16.840.1.113883.10.20.22.2.4.1"/>
					<code code="8716-3" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Vital Signs"/>
					<title>Vital Signs</title>
					<text>
						<table border="1" width="100%">
							<thead>
								<tr>
									<th>Date</th>
									<th>Description</th>
									<th>Result</th>
									<th>Flag</th>
									<th>Ref Range</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Tuesday, April 18, 2023 at 9:20:00 am</td>
									<td>Weight Measured</td>
									<td>
										<content ID="vitalSignsValue1">108.41 kg</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 9:20:00 am</td>
									<td>Body Temperature</td>
									<td>
										<content ID="vitalSignsValue2">36.72 C</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 9:20:00 am</td>
									<td>BP Systolic</td>
									<td>
										<content ID="vitalSignsValue3">130 mmHg</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 9:20:00 am</td>
									<td>Respiratory Rate</td>
									<td>
										<content ID="vitalSignsValue5">18 /min</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 9:20:00 am</td>
									<td>Heart Rate</td>
									<td>
										<content ID="vitalSignsValue6">68 /min</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 9:20:00 am</td>
									<td>BMI (Body Mass Index)</td>
									<td>
										<content ID="vitalSignsValue7">31.53 kg/m2</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 9:20:00 am</td>
									<td>Height</td>
									<td>
										<content ID="vitalSignsValue8">185.42 cm</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, April 18, 2023 at 9:20:00 am</td>
									<td>BP Diastolic</td>
									<td>
										<content ID="vitalSignsValue10">85 mmHg</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, October 18, 2022 at 8:53:00 am</td>
									<td>Weight Measured</td>
									<td>
										<content ID="vitalSignsValue12">107.95 kg</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, October 18, 2022 at 8:53:00 am</td>
									<td>Body Temperature</td>
									<td>
										<content ID="vitalSignsValue13">36.72 C</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, October 18, 2022 at 8:53:00 am</td>
									<td>BP Systolic</td>
									<td>
										<content ID="vitalSignsValue14">158 mmHg</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, October 18, 2022 at 8:53:00 am</td>
									<td>Respiratory Rate</td>
									<td>
										<content ID="vitalSignsValue16">17 /min</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, October 18, 2022 at 8:53:00 am</td>
									<td>Heart Rate</td>
									<td>
										<content ID="vitalSignsValue17">74 /min</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, October 18, 2022 at 8:53:00 am</td>
									<td>BMI (Body Mass Index)</td>
									<td>
										<content ID="vitalSignsValue18">31.40 kg/m2</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, October 18, 2022 at 8:53:00 am</td>
									<td>Height</td>
									<td>
										<content ID="vitalSignsValue19">185.42 cm</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, October 18, 2022 at 8:53:00 am</td>
									<td>BP Diastolic</td>
									<td>
										<content ID="vitalSignsValue21">102 mmHg</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, April 19, 2022 at 9:11:00 am</td>
									<td>Weight Measured</td>
									<td>
										<content ID="vitalSignsValue23">112.04 kg</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, April 19, 2022 at 9:11:00 am</td>
									<td>Body Temperature</td>
									<td>
										<content ID="vitalSignsValue24">36.67 C</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, April 19, 2022 at 9:11:00 am</td>
									<td>BP Systolic</td>
									<td>
										<content ID="vitalSignsValue25">158 mmHg</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, April 19, 2022 at 9:11:00 am</td>
									<td>Respiratory Rate</td>
									<td>
										<content ID="vitalSignsValue27">17 /min</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, April 19, 2022 at 9:11:00 am</td>
									<td>Heart Rate</td>
									<td>
										<content ID="vitalSignsValue28">69 /min</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, April 19, 2022 at 9:11:00 am</td>
									<td>BMI (Body Mass Index)</td>
									<td>
										<content ID="vitalSignsValue29">32.59 kg/m2</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, April 19, 2022 at 9:11:00 am</td>
									<td>Height</td>
									<td>
										<content ID="vitalSignsValue30">185.42 cm</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>Tuesday, April 19, 2022 at 9:11:00 am</td>
									<td>BP Diastolic</td>
									<td>
										<content ID="vitalSignsValue32">101 mmHg</content>
									</td>
									<td>-</td>
									<td>-</td>
								</tr>
							</tbody>
						</table>
					</text>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDYAUA4NQS5P14E41XQUCCB10BDCMYP24YCK2OKSM2BNWX4EON0LBF"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20230418092000"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDYAUA4NQS5P14E41XQUCCB10BDCMYP24YCK2OKSM2BNWX4EON0LBF"/>
									<code code="29463-7" displayName="Weight Measured" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue1"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20230418092000"/>
									<value xsi:type="PQ" value="108.41" unit="kg"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDMLYRHPWRPFLJKWD02TVY54UTMKU5VW0N43PA5WLUZRAUU2BPXU2K"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20230418092000"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDMLYRHPWRPFLJKWD02TVY54UTMKU5VW0N43PA5WLUZRAUU2BPXU2K"/>
									<code code="8310-5" displayName="Body Temperature" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue2"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20230418092000"/>
									<value xsi:type="PQ" value="36.72" unit="Cel"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDXHDW0BCR4SNXK2ED5SDIPQQU5OUIVPHQWLLOQ0TNGXO1C02402L"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20230418092000"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDXHDW0BCR4SNXK2ED5SDIPQQU5OUIVPHQWLLOQ0TNGXO1C02402L"/>
									<code code="8480-6" displayName="BP Systolic" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue3"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20230418092000"/>
									<value xsi:type="PQ" value="130" unit="mm[Hg]"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDZQFS5ABENXK0L4LPTRUI2KPISFRKPCKL5004DOJYGGRFTTAEYBVK"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20230418092000"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDZQFS5ABENXK0L4LPTRUI2KPISFRKPCKL5004DOJYGGRFTTAEYBVK"/>
									<code code="9279-1" displayName="Respiratory Rate" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue5"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20230418092000"/>
									<value xsi:type="PQ" value="18" unit="/min"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDRB2IMS0QFFTGJ21JTREKD3QXLYN335MPSSZFR5JAKRIAC3WV4C"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20230418092000"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDRB2IMS0QFFTGJ21JTREKD3QXLYN335MPSSZFR5JAKRIAC3WV4C"/>
									<code code="8867-4" displayName="Heart Rate" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue6"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20230418092000"/>
									<value xsi:type="PQ" value="68" unit="/min"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDTAKAWO4AOO2MLFVOYFLCOV0HGBHPTOPXX4HC0WJFU5RIILXJGXRL"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20230418092000"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDTAKAWO4AOO2MLFVOYFLCOV0HGBHPTOPXX4HC0WJFU5RIILXJGXRL"/>
									<code code="39156-5" displayName="BMI (Body Mass Index)" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue7"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20230418092000"/>
									<value xsi:type="PQ" value="31.53" unit="kg/m2"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" nullFlavor="UNK"/>
											<code nullFlavor="UNK"/>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDCFBA2EJRJOVGCRSDJMQO34NLGOPJP23DOAREBOJT03L4RIG101UL"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20230418092000"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDCFBA2EJRJOVGCRSDJMQO34NLGOPJP23DOAREBOJT03L4RIG101UL"/>
									<code code="8302-2" displayName="Height" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue8"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20230418092000"/>
									<value xsi:type="PQ" value="185.42" unit="cm"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDW0U342DBSRJNBWJTNAIUUL0X4F2F2H2WE31G4APZ1NQAYWHUVTAJ"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20230418092000"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDW0U342DBSRJNBWJTNAIUUL0X4F2F2H2WE31G4APZ1NQAYWHUVTAJ"/>
									<code code="8462-4" displayName="BP Diastolic" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue10"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20230418092000"/>
									<value xsi:type="PQ" value="85" unit="mm[Hg]"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDI54NICRMA1BPDNHGUDITTOZNVL5U5I1PQGE41ZFYB5JFMCUMGXD"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20221018085300"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDI54NICRMA1BPDNHGUDITTOZNVL5U5I1PQGE41ZFYB5JFMCUMGXD"/>
									<code code="29463-7" displayName="Weight Measured" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue12"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20221018085300"/>
									<value xsi:type="PQ" value="107.95" unit="kg"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<streetAddressLine>Suite D</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406-4181</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ajackson@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<given>Allen</given>
													<given>B</given>
													<family>Jackson</family>
													<suffix>MD</suffix>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDQRMNAO1QVVCBLZDJLD2UTGRUAO2QQQISXGP0SJETW54ECH5KJUGB"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20221018085300"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDQRMNAO1QVVCBLZDJLD2UTGRUAO2QQQISXGP0SJETW54ECH5KJUGB"/>
									<code code="8310-5" displayName="Body Temperature" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue13"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20221018085300"/>
									<value xsi:type="PQ" value="36.72" unit="Cel"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<streetAddressLine>Suite D</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406-4181</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ajackson@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<given>Allen</given>
													<given>B</given>
													<family>Jackson</family>
													<suffix>MD</suffix>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDKB04K5KWORW4I2O0TJUNHZ5FCIQD424XTURR3RCCKSWD1XUDSJHI"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20221018085300"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDKB04K5KWORW4I2O0TJUNHZ5FCIQD424XTURR3RCCKSWD1XUDSJHI"/>
									<code code="8480-6" displayName="BP Systolic" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue14"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20221018085300"/>
									<value xsi:type="PQ" value="158" unit="mm[Hg]"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<streetAddressLine>Suite D</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406-4181</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ajackson@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<given>Allen</given>
													<given>B</given>
													<family>Jackson</family>
													<suffix>MD</suffix>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDFR5EWATJT1LSJCU1KJWQSHPMPPRQ2YW32C0W1OCPLEQBQFW1ACGK"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20221018085300"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDFR5EWATJT1LSJCU1KJWQSHPMPPRQ2YW32C0W1OCPLEQBQFW1ACGK"/>
									<code code="9279-1" displayName="Respiratory Rate" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue16"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20221018085300"/>
									<value xsi:type="PQ" value="17" unit="/min"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<streetAddressLine>Suite D</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406-4181</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ajackson@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<given>Allen</given>
													<given>B</given>
													<family>Jackson</family>
													<suffix>MD</suffix>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID1TZLPDS2SJ1IEPRF0F421X10NFGID1LBHL0KN2MQJAJV2YU4F2TJ"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20221018085300"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID1TZLPDS2SJ1IEPRF0F421X10NFGID1LBHL0KN2MQJAJV2YU4F2TJ"/>
									<code code="8867-4" displayName="Heart Rate" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue17"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20221018085300"/>
									<value xsi:type="PQ" value="74" unit="/min"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<streetAddressLine>Suite D</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406-4181</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ajackson@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<given>Allen</given>
													<given>B</given>
													<family>Jackson</family>
													<suffix>MD</suffix>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDECQU3PBS41MSP5GQRI0ZEFLTLMYRF5F3FTCNHDLE1RQVD2HM22FL"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20221018085300"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDECQU3PBS41MSP5GQRI0ZEFLTLMYRF5F3FTCNHDLE1RQVD2HM22FL"/>
									<code code="39156-5" displayName="BMI (Body Mass Index)" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue18"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20221018085300"/>
									<value xsi:type="PQ" value="31.40" unit="kg/m2"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" nullFlavor="UNK"/>
											<code nullFlavor="UNK"/>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDKLUA4XYOEK1FKUEVFCU0PUYDFPXK5NBMMVQAKPNUP5WEQCIOSXXO"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20221018085300"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDKLUA4XYOEK1FKUEVFCU0PUYDFPXK5NBMMVQAKPNUP5WEQCIOSXXO"/>
									<code code="8302-2" displayName="Height" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue19"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20221018085300"/>
									<value xsi:type="PQ" value="185.42" unit="cm"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<streetAddressLine>Suite D</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406-4181</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ajackson@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<given>Allen</given>
													<given>B</given>
													<family>Jackson</family>
													<suffix>MD</suffix>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDFLNLSLNY1BD0BE3OTSVPTMBO5O2P05EU01XCGVH5OUI3W4WOS4EC"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20221018085300"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDFLNLSLNY1BD0BE3OTSVPTMBO5O2P05EU01XCGVH5OUI3W4WOS4EC"/>
									<code code="8462-4" displayName="BP Diastolic" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue21"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20221018085300"/>
									<value xsi:type="PQ" value="102" unit="mm[Hg]"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<streetAddressLine>Suite D</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406-4181</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ajackson@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<given>Allen</given>
													<given>B</given>
													<family>Jackson</family>
													<suffix>MD</suffix>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDGR5ZXT1JQOUQKOPS0JP1BE5NTHWEYU3WG0GQXBO0CZMV0WJXDP4F"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20220419091100"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDGR5ZXT1JQOUQKOPS0JP1BE5NTHWEYU3WG0GQXBO0CZMV0WJXDP4F"/>
									<code code="29463-7" displayName="Weight Measured" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue23"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20220419091100"/>
									<value xsi:type="PQ" value="112.04" unit="kg"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<streetAddressLine>Suite D</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406-4181</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ajackson@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<given>Allen</given>
													<given>B</given>
													<family>Jackson</family>
													<suffix>MD</suffix>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID2LOXWEWQE1YWO1FPFBZY2LE5RMJP0OKWAY11BJIYV35JBJYMTVGJ"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20220419091100"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID2LOXWEWQE1YWO1FPFBZY2LE5RMJP0OKWAY11BJIYV35JBJYMTVGJ"/>
									<code code="8310-5" displayName="Body Temperature" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue24"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20220419091100"/>
									<value xsi:type="PQ" value="36.67" unit="Cel"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<streetAddressLine>Suite D</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406-4181</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ajackson@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<given>Allen</given>
													<given>B</given>
													<family>Jackson</family>
													<suffix>MD</suffix>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDBD5ALRUJWNR3LD2URSTMO4JGZBO2G5Q4VFN1IUFIEGRRA2YSTU2"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20220419091100"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDBD5ALRUJWNR3LD2URSTMO4JGZBO2G5Q4VFN1IUFIEGRRA2YSTU2"/>
									<code code="8480-6" displayName="BP Systolic" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue25"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20220419091100"/>
									<value xsi:type="PQ" value="158" unit="mm[Hg]"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<streetAddressLine>Suite D</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406-4181</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ajackson@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<given>Allen</given>
													<given>B</given>
													<family>Jackson</family>
													<suffix>MD</suffix>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID154OQJ0JDXCPMUVZ1GNU3DUAELGBVIULCBAHHCBZU200N4P4XRDN"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20220419091100"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="ID154OQJ0JDXCPMUVZ1GNU3DUAELGBVIULCBAHHCBZU200N4P4XRDN"/>
									<code code="9279-1" displayName="Respiratory Rate" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue27"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20220419091100"/>
									<value xsi:type="PQ" value="17" unit="/min"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<streetAddressLine>Suite D</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406-4181</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ajackson@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<given>Allen</given>
													<given>B</given>
													<family>Jackson</family>
													<suffix>MD</suffix>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDCRW5VMPR11QZPKX2MNRWYWGDBMABRYFNC5CMALLCPF0100ELDYSM"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20220419091100"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDCRW5VMPR11QZPKX2MNRWYWGDBMABRYFNC5CMALLCPF0100ELDYSM"/>
									<code code="8867-4" displayName="Heart Rate" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue28"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20220419091100"/>
									<value xsi:type="PQ" value="69" unit="/min"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<streetAddressLine>Suite D</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406-4181</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ajackson@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<given>Allen</given>
													<given>B</given>
													<family>Jackson</family>
													<suffix>MD</suffix>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDZ3B5JSYGYHUXHCFWHTAWH0LHPDZTGZAUKJ5P1K5ZV0GPZEXGIYL"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20220419091100"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDZ3B5JSYGYHUXHCFWHTAWH0LHPDZTGZAUKJ5P1K5ZV0GPZEXGIYL"/>
									<code code="39156-5" displayName="BMI (Body Mass Index)" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue29"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20220419091100"/>
									<value xsi:type="PQ" value="32.59" unit="kg/m2"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" nullFlavor="UNK"/>
											<code nullFlavor="UNK"/>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDK3GXXJPN5YHJLA5GNNEUP2JJAFDLBPT12EUV45M4SKCFVFAPHMHG"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20220419091100"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDK3GXXJPN5YHJLA5GNNEUP2JJAFDLBPT12EUV45M4SKCFVFAPHMHG"/>
									<code code="8302-2" displayName="Height" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue30"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20220419091100"/>
									<value xsi:type="PQ" value="185.42" unit="cm"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<streetAddressLine>Suite D</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406-4181</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ajackson@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<given>Allen</given>
													<given>B</given>
													<family>Jackson</family>
													<suffix>MD</suffix>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
					<entry typeCode="DRIV">
						<organizer classCode="CLUSTER" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.26" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.26"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDVSRWBOTVMF5KMZR111IDYZQB2LD2S3AWACRED0L43WFMFJEGXRQB"/>
							<code code="46680005" displayName="Vital Signs" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
								<translation code="74728-7" displayName="Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
							</code>
							<statusCode code="completed"/>
							<effectiveTime value="20220419091100"/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.27" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.27"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDVSRWBOTVMF5KMZR111IDYZQB2LD2S3AWACRED0L43WFMFJEGXRQB"/>
									<code code="8462-4" displayName="BP Diastolic" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<text>
										<reference value="#vitalSignsValue32"/>
									</text>
									<statusCode code="completed"/>
									<effectiveTime value="20220419091100"/>
									<value xsi:type="PQ" value="101" unit="mm[Hg]"/>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<streetAddressLine>Suite D</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406-4181</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770" use="WP"/>
											<telecom value="mailto:ajackson@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<given>Allen</given>
													<given>B</given>
													<family>Jackson</family>
													<suffix>MD</suffix>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</observation>
							</component>
						</organizer>
					</entry>
				</section>
			</component>
			<!--******************************** Allergy List *******************************-->
			<component>
				<section>
					<templateId root="2.16.840.1.113883.10.20.22.2.6.1" extension="2015-08-01"/>
					<templateId root="2.16.840.1.113883.10.20.22.2.6.1"/>
					<templateId root="2.16.840.1.113883.10.20.22.2.6"/>
					<code code="48765-2" displayName="Allergies, Adverse Reactions, Alerts" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<title>Allergies and Adverse Reactions</title>
					<text>No allergies included in this record.</text>
					<entry>
						<act classCode="ACT" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.30" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.30"/>
							<id nullFlavor="NA"/>
							<code code="48765-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Allergies, adverse reactions, alerts"/>
							<statusCode code="completed"/>
							<effectiveTime>
								<low nullFlavor="NA"/>
								<high nullFlavor="NA"/>
							</effectiveTime>
							<entryRelationship typeCode="SUBJ">
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.7" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.7"/>
									<id nullFlavor="NA"/>
									<code nullFlavor="NA"/>
									<statusCode code="completed"/>
									<effectiveTime>
										<low nullFlavor="NA"/>
										<high nullFlavor="NA"/>
									</effectiveTime>
									<value xsi:type="CD" nullFlavor="NA"/>
									<participant typeCode="CSM">
										<participantRole classCode="MANU">
											<playingEntity classCode="MMAT">
												<code nullFlavor="NA"/>
											</playingEntity>
										</participantRole>
									</participant>
								</observation>
							</entryRelationship>
						</act>
					</entry>
				</section>
			</component>
			<!--******************************** Medication History *********************-->
			<component>
				<section>
					<templateId root="2.16.840.1.113883.10.20.22.2.1"/>
					<templateId root="2.16.840.1.113883.10.20.22.2.1.1" extension="2014-06-09"/>
					<templateId root="2.16.840.1.113883.10.20.22.2.1.1"/>
					<templateId root="2.16.840.1.113883.10.20.22.2.1" extension="2014-06-09"/>
					<code code="10160-0" displayName="HISTORY OF MEDICATION USE" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<title>Medication History</title>
					<text>
						<table border="1" width="100%">
							<thead>
								<tr>
									<th>Medication</th>
									<th>Instructions</th>
									<th>Total Fills</th>
									<th>Date</th>
									<th>Provider</th>
									<th>Note</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<content ID="HistoricalmedicationDescription1">Lipitor 20 mg tablet</content>
									</td>
									<td>
										<content ID="HistoricalmedicationInstruction1">take 1 tablet (20 mg) by oral route once daily</content>
										<content ID="HistoricalpatientInstruction1"/>
									</td>
									<td>3</td>
									<td>Tuesday, April 18, 2023</td>
									<td>Koke, Christopher </td>
									<td>
										<content ID="HistoricalmedicationComment1"/>
									</td>
								</tr>
								<tr>
									<td>
										<content ID="HistoricalmedicationDescription2">hydroCHLOROthiazide 25 mg tablet</content>
									</td>
									<td>
										<content ID="HistoricalmedicationInstruction2">take 1 tablet (25 mg) by oral route 1 time per day</content>
										<content ID="HistoricalpatientInstruction2"/>
									</td>
									<td>3</td>
									<td>Tuesday, April 18, 2023</td>
									<td>Koke, Christopher </td>
									<td>
										<content ID="HistoricalmedicationComment2"/>
									</td>
								</tr>
								<tr>
									<td>
										<content ID="HistoricalmedicationDescription3">benazepriL 40 mg tablet</content>
									</td>
									<td>
										<content ID="HistoricalmedicationInstruction3">take 1 tablet (40 mg) by oral route once daily</content>
										<content ID="HistoricalpatientInstruction3"/>
									</td>
									<td>3</td>
									<td>Tuesday, April 18, 2023</td>
									<td>Koke, Christopher </td>
									<td>
										<content ID="HistoricalmedicationComment3"/>
									</td>
								</tr>
							</tbody>
						</table>
					</text>
					<entry typeCode="DRIV">
						<substanceAdministration classCode="SBADM" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.16" extension="2014-06-09"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.16"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDWATE5J104KMCNCMAHUHVI3N1OPIQASYSRIZFL3NZTAMI2ZLJ5Q3L"/>
							<text>
								<reference value="#HistoricalmedicationInstruction1"/>
							</text>
							<statusCode code="completed"/>
							<effectiveTime xsi:type="IVL_TS">
								<low value="20230418"/>
								<high nullFlavor="UNK"/>
							</effectiveTime>
							<effectiveTime operator="A" xsi:type="PIVL_TS" nullFlavor="UNK"/>
							<doseQuantity value="20" unit="mg"/>
							<consumable>
								<manufacturedProduct classCode="MANU">
									<templateId root="2.16.840.1.113883.10.20.22.4.23" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.23"/>
									<manufacturedMaterial classCode="MMAT" determinerCode="KIND">
										<code displayName="LIPITOR 20 " code="617318" codeSystem="2.16.840.1.113883.6.88" codeSystemName="RxNorm">
											<originalText>
												<reference value="#HistoricalmedicationDescription1"/>
											</originalText>
											<translation codeSystem="2.16.840.1.113883.6.69" codeSystemName="NDC" code="00071015623">
											</translation>
										</code>
										<name>LIPITOR</name>
									</manufacturedMaterial>
								</manufacturedProduct>
							</consumable>
							<entryRelationship typeCode="REFR" inversionInd="false">
								<supply classCode="SPLY" moodCode="INT">
									<templateId root="2.16.840.1.113883.10.20.22.4.17" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.17"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDWATE5J104KMCNCMAHUHVI3N1OPIQASYSRIZFL3NZTAMI2ZLJ5Q3L"/>
									<statusCode code="completed"/>
									<repeatNumber value="3"/>
									<quantity value="90" unit="Tablet"/>
									<product>
										<manufacturedProduct classCode="MANU">
											<templateId root="2.16.840.1.113883.10.20.22.4.23" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.23"/>
											<manufacturedMaterial classCode="MMAT" determinerCode="KIND">
												<code displayName="LIPITOR 20 " code="617318" codeSystem="2.16.840.1.113883.6.88" codeSystemName="RxNorm">
													<originalText>
														<reference value="#HistoricalmedicationDescription1"/>
													</originalText>
													<translation codeSystem="2.16.840.1.113883.6.69" codeSystemName="NDC" code="00071015623">
													</translation>
												</code>
											</manufacturedMaterial>
										</manufacturedProduct>
									</product>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="CK2"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770;ext=" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</supply>
							</entryRelationship>
							<entryRelationship typeCode="SUBJ" inversionInd="true">
								<act classCode="ACT" moodCode="INT">
									<templateId root="2.16.840.1.113883.10.20.22.4.20" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.20"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDWATE5J104KMCNCMAHUHVI3N1OPIQASYSRIZFL3NZTAMI2ZLJ5Q3L"/>
									<code code="PINSTRUCT" codeSystem="1.3.6.1.4.1.19376.1.5.3.2" codeSystemName="IHEActCode" displayName="Patient Instructions"/>
									<text>
										<reference value="#HistoricalpatientInstruction1"/>
									</text>
									<statusCode code="completed"/>
								</act>
							</entryRelationship>
							<entryRelationship typeCode="REFR" inversionInd="false">
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.1.47"/>
									<templateId root="2.16.840.1.113883.10.20.1.57"/>
									<code code="33999-4" displayName="Status" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<statusCode code="completed"/>
									<value code="55561003" displayName="Active" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" xsi:type="CE"/>
								</observation>
							</entryRelationship>
						</substanceAdministration>
					</entry>
					<entry typeCode="DRIV">
						<substanceAdministration classCode="SBADM" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.16" extension="2014-06-09"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.16"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDBHKQHVV131DWPJPDRUERKCGDPFA3M3R1OHL5AJFJEBOGZYUY5DLD"/>
							<text>
								<reference value="#HistoricalmedicationInstruction2"/>
							</text>
							<statusCode code="completed"/>
							<effectiveTime xsi:type="IVL_TS">
								<low value="20230418"/>
								<high nullFlavor="UNK"/>
							</effectiveTime>
							<effectiveTime operator="A" xsi:type="PIVL_TS" nullFlavor="UNK"/>
							<doseQuantity value="25" unit="mg"/>
							<consumable>
								<manufacturedProduct classCode="MANU">
									<templateId root="2.16.840.1.113883.10.20.22.4.23" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.23"/>
									<manufacturedMaterial classCode="MMAT" determinerCode="KIND">
										<code displayName="HYDROCHLOROTHIAZIDE 25 " code="310798" codeSystem="2.16.840.1.113883.6.88" codeSystemName="RxNorm">
											<originalText>
												<reference value="#HistoricalmedicationDescription2"/>
											</originalText>
											<translation codeSystem="2.16.840.1.113883.6.69" codeSystemName="NDC" code="00172208360">
											</translation>
										</code>
										<name>HYDROCHLOROTHIAZIDE</name>
									</manufacturedMaterial>
								</manufacturedProduct>
							</consumable>
							<entryRelationship typeCode="REFR" inversionInd="false">
								<supply classCode="SPLY" moodCode="INT">
									<templateId root="2.16.840.1.113883.10.20.22.4.17" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.17"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDBHKQHVV131DWPJPDRUERKCGDPFA3M3R1OHL5AJFJEBOGZYUY5DLD"/>
									<statusCode code="completed"/>
									<repeatNumber value="3"/>
									<quantity value="90" unit="Tablet"/>
									<product>
										<manufacturedProduct classCode="MANU">
											<templateId root="2.16.840.1.113883.10.20.22.4.23" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.23"/>
											<manufacturedMaterial classCode="MMAT" determinerCode="KIND">
												<code displayName="HYDROCHLOROTHIAZIDE 25 " code="310798" codeSystem="2.16.840.1.113883.6.88" codeSystemName="RxNorm">
													<originalText>
														<reference value="#HistoricalmedicationDescription2"/>
													</originalText>
													<translation codeSystem="2.16.840.1.113883.6.69" codeSystemName="NDC" code="00172208360">
													</translation>
												</code>
											</manufacturedMaterial>
										</manufacturedProduct>
									</product>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="CK2"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770;ext=" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</supply>
							</entryRelationship>
							<entryRelationship typeCode="SUBJ" inversionInd="true">
								<act classCode="ACT" moodCode="INT">
									<templateId root="2.16.840.1.113883.10.20.22.4.20" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.20"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDBHKQHVV131DWPJPDRUERKCGDPFA3M3R1OHL5AJFJEBOGZYUY5DLD"/>
									<code code="PINSTRUCT" codeSystem="1.3.6.1.4.1.19376.1.5.3.2" codeSystemName="IHEActCode" displayName="Patient Instructions"/>
									<text>
										<reference value="#HistoricalpatientInstruction2"/>
									</text>
									<statusCode code="completed"/>
								</act>
							</entryRelationship>
							<entryRelationship typeCode="REFR" inversionInd="false">
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.1.47"/>
									<templateId root="2.16.840.1.113883.10.20.1.57"/>
									<code code="33999-4" displayName="Status" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<statusCode code="completed"/>
									<value code="55561003" displayName="Active" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" xsi:type="CE"/>
								</observation>
							</entryRelationship>
						</substanceAdministration>
					</entry>
					<entry typeCode="DRIV">
						<substanceAdministration classCode="SBADM" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.16" extension="2014-06-09"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.16"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDFLVVOGAPWSQ2GHSP0KADEIPUMJUFTTXQGNI2VIH0YMSBFDJKLOO"/>
							<text>
								<reference value="#HistoricalmedicationInstruction3"/>
							</text>
							<statusCode code="completed"/>
							<effectiveTime xsi:type="IVL_TS">
								<low value="20230418"/>
								<high nullFlavor="UNK"/>
							</effectiveTime>
							<effectiveTime operator="A" xsi:type="PIVL_TS" nullFlavor="UNK"/>
							<doseQuantity value="40" unit="mg"/>
							<consumable>
								<manufacturedProduct classCode="MANU">
									<templateId root="2.16.840.1.113883.10.20.22.4.23" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.23"/>
									<manufacturedMaterial classCode="MMAT" determinerCode="KIND">
										<code displayName="BENAZEPRIL 40 " code="898719" codeSystem="2.16.840.1.113883.6.88" codeSystemName="RxNorm">
											<originalText>
												<reference value="#HistoricalmedicationDescription3"/>
											</originalText>
											<translation codeSystem="2.16.840.1.113883.6.69" codeSystemName="NDC" code="43547033803">
											</translation>
										</code>
										<name>BENAZEPRIL</name>
									</manufacturedMaterial>
								</manufacturedProduct>
							</consumable>
							<entryRelationship typeCode="REFR" inversionInd="false">
								<supply classCode="SPLY" moodCode="INT">
									<templateId root="2.16.840.1.113883.10.20.22.4.17" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.17"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDFLVVOGAPWSQ2GHSP0KADEIPUMJUFTTXQGNI2VIH0YMSBFDJKLOO"/>
									<statusCode code="completed"/>
									<repeatNumber value="3"/>
									<quantity value="90" unit="Tablet"/>
									<product>
										<manufacturedProduct classCode="MANU">
											<templateId root="2.16.840.1.113883.10.20.22.4.23" extension="2014-06-09"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.23"/>
											<manufacturedMaterial classCode="MMAT" determinerCode="KIND">
												<code displayName="BENAZEPRIL 40 " code="898719" codeSystem="2.16.840.1.113883.6.88" codeSystemName="RxNorm">
													<originalText>
														<reference value="#HistoricalmedicationDescription3"/>
													</originalText>
													<translation codeSystem="2.16.840.1.113883.6.69" codeSystemName="NDC" code="43547033803">
													</translation>
												</code>
											</manufacturedMaterial>
										</manufacturedProduct>
									</product>
									<author>
										<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
										<time value="20230727120011-0400"/>
										<assignedAuthor classCode="ASSIGNED">
											<id root="2.16.840.1.113883.4.6" extension="CK2"/>
											<addr>
												<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
												<city>North Charleston</city>
												<state>SC</state>
												<postalCode>29406</postalCode>
												<country>US</country>
											</addr>
											<telecom value="tel:+1-843-764-0770;ext=" use="WP"/>
											<telecom value="mailto:ckoke@libertydoctors.com"/>
											<assignedPerson>
												<name>
													<prefix>DO</prefix>
													<given>Christopher</given>
													<family>Koke</family>
												</name>
											</assignedPerson>
											<representedOrganization>
												<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
												<name>Liberty Doctors</name>
												<telecom value="tel:+1-843-795-5362" use="WP"/>
												<telecom value="fax:+1-843-795-1921" use="WP"/>
												<addr>
													<streetAddressLine>418 Folly Rd</streetAddressLine>
													<streetAddressLine>Ste A</streetAddressLine>
													<city>Charleston</city>
													<state>SC</state>
													<postalCode>29412-2625</postalCode>
													<country>US</country>
												</addr>
											</representedOrganization>
										</assignedAuthor>
									</author>
								</supply>
							</entryRelationship>
							<entryRelationship typeCode="SUBJ" inversionInd="true">
								<act classCode="ACT" moodCode="INT">
									<templateId root="2.16.840.1.113883.10.20.22.4.20" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.20"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="IDFLVVOGAPWSQ2GHSP0KADEIPUMJUFTTXQGNI2VIH0YMSBFDJKLOO"/>
									<code code="PINSTRUCT" codeSystem="1.3.6.1.4.1.19376.1.5.3.2" codeSystemName="IHEActCode" displayName="Patient Instructions"/>
									<text>
										<reference value="#HistoricalpatientInstruction3"/>
									</text>
									<statusCode code="completed"/>
								</act>
							</entryRelationship>
							<entryRelationship typeCode="REFR" inversionInd="false">
								<observation classCode="OBS" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.1.47"/>
									<templateId root="2.16.840.1.113883.10.20.1.57"/>
									<code code="33999-4" displayName="Status" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
									<statusCode code="completed"/>
									<value code="55561003" displayName="Active" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" xsi:type="CE"/>
								</observation>
							</entryRelationship>
						</substanceAdministration>
					</entry>
				</section>
			</component>
			<!--******************************** Medications Administered ************************-->
			<component>
				<section>
					<templateId root="2.16.840.1.113883.10.20.22.2.1"/>
					<templateId root="2.16.840.1.113883.10.20.22.2.38" extension="2014-06-09"/>
					<templateId root="2.16.840.1.113883.10.20.22.2.38"/>
					<code code="29549-3" displayName="MEDICATIONS ADMINISTERED" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<title>Medications Administered</title>
					<text>No Medications Administered.</text>
					<entry typeCode="DRIV">
						<substanceAdministration classCode="SBADM" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.16" extension="2014-06-09"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.16"/>
							<id nullFlavor="NA"/>
							<statusCode code="completed"/>
							<effectiveTime xsi:type="IVL_TS">
								<low nullFlavor="NA"/>
								<high nullFlavor="NA"/>
							</effectiveTime>
							<doseQuantity nullFlavor="NA"/>
							<consumable>
								<manufacturedProduct classCode="MANU">
									<templateId root="2.16.840.1.113883.10.20.22.4.23" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.23"/>
									<id nullFlavor="NA"/>
									<manufacturedMaterial>
										<code nullFlavor="OTH" codeSystem="2.16.840.1.113883.6.88">
											<translation code="410942007" displayName="drug or medication" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
										</code>
									</manufacturedMaterial>
								</manufacturedProduct>
							</consumable>
						</substanceAdministration>
					</entry>
				</section>
			</component>
			<!--******************************** Social History *****************************-->
			<component>
				<section>
					<templateId root="2.16.840.1.113883.10.20.22.2.17" extension="2015-08-01"/>
					<templateId root="2.16.840.1.113883.10.20.22.2.17"/>
					<code code="29762-2" codeSystem="2.16.840.1.113883.6.1" displayName="Social History"/>
					<title>Social History</title>
					<text>
						<table>
							<thead>
								<tr>
									<th>Date</th>
									<th>Smoking Status</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Tuesday, April 18, 2023</td>
									<td>Never smoker</td>
								</tr>
							</tbody>
						</table>
					</text>
					<!--*** Smoking Status ***-->
					<entry typeCode="DRIV">
						<observation classCode="OBS" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.78" extension="2014-06-09"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.78"/>
							<id extension="123456789" root="2.16.840.1.113883.19"/>
							<code code="72166-2" codeSystem="2.16.840.1.113883.6.1" displayName="Tobacco smoking status NHIS"/>
							<statusCode code="completed"/>
							<effectiveTime value="20230418092000"/>
							<value xsi:type="CD" code="266919005" displayName="Never smoker" codeSystem="2.16.840.1.113883.6.96"/>
							<author>
								<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
								<time value="20230727120011-0400"/>
								<assignedAuthor classCode="ASSIGNED">
									<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
									<addr>
										<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
										<city>North Charleston</city>
										<state>SC</state>
										<postalCode>29406</postalCode>
										<country>US</country>
									</addr>
									<telecom value="tel:+1-843-764-0770" use="WP"/>
									<telecom value="mailto:ckoke@libertydoctors.com"/>
									<assignedPerson>
										<name>
											<prefix>DO</prefix>
											<given>Christopher</given>
											<family>Koke</family>
										</name>
									</assignedPerson>
									<representedOrganization>
										<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
										<name>Liberty Doctors</name>
										<telecom value="tel:+1-843-795-5362" use="WP"/>
										<telecom value="fax:+1-843-795-1921" use="WP"/>
										<addr>
											<streetAddressLine>418 Folly Rd</streetAddressLine>
											<streetAddressLine>Ste A</streetAddressLine>
											<city>Charleston</city>
											<state>SC</state>
											<postalCode>29412-2625</postalCode>
											<country>US</country>
										</addr>
									</representedOrganization>
								</assignedAuthor>
							</author>
						</observation>
					</entry>
				</section>
			</component>
			<!--******************************** Advance Directives ********************************-->
			<component>
				<section nullFlavor="NI">
					<templateId root="2.16.840.1.113883.10.20.22.2.21"/>
					<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.900" extension="881870b5-b1a8-4e21-91c6-0dd24ced344c"/>
					<code code="42348-3" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Advance directives"/>
					<title>Advance Directives</title>
					<text>
						<content ID="advanceDirectiveDescription1">No advance directives included in this record</content>
					</text>
				</section>
			</component>
			<!--******************************** Procedure List *****************************-->
			<component>
				<section>
					<templateId root="2.16.840.1.113883.10.20.22.2.7.1" extension="2014-06-09"/>
					<templateId root="2.16.840.1.113883.10.20.22.2.7.1"/>
					<code code="47519-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="PROCEDURES"/>
					<title>Procedures</title>
					<text>
						<table border="1" width="100%">
							<thead>
								<tr>
									<th>Description</th>
									<th>Procedure</th>
									<th>Provider</th>
									<th>Service Date</th>
									<th>Note</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<content ID="procedureDescription1">BMI Above Normal Parameters; follow-up plan d ...</content>
									</td>
									<td>G8417 (CPT-4)</td>
									<td>Jackson, Allen B, MD<br/>
									</td>
									<td>Tuesday, April 19, 2022 at 9:16:00 am</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="procedureDescription2">BMI DOCUMENTED IN CHART</content>
									</td>
									<td>3008F (CPT-4)</td>
									<td>Jackson, Allen B, MD<br/>
									</td>
									<td>Tuesday, April 19, 2022 at 9:16:00 am</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="procedureDescription3">Office Visit Level 4</content>
									</td>
									<td>99214 (CPT-4)</td>
									<td>Jackson, Allen B, MD<br/>
									</td>
									<td>Tuesday, April 19, 2022 at 9:16:00 am</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="procedureDescription4">BMI Above Normal Parameters; follow-up plan d ...</content>
									</td>
									<td>G8417 (CPT-4)</td>
									<td>Jackson, Allen B, MD<br/>
									</td>
									<td>Tuesday, October 18, 2022 at 8:58:00 am</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="procedureDescription5">Covid Antigen, Rapid</content>
									</td>
									<td>87811 (CPT-4)</td>
									<td>Jackson, Allen B, MD<br/>
									</td>
									<td>Tuesday, October 18, 2022 at 8:58:00 am</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="procedureDescription6">Office Visit Level 4</content>
									</td>
									<td>99214 (CPT-4)</td>
									<td>Jackson, Allen B, MD<br/>
									</td>
									<td>Tuesday, October 18, 2022 at 8:58:00 am</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="procedureDescription7">BMI Above Normal Parameters; follow-up plan d ...</content>
									</td>
									<td>G8417 (CPT-4)</td>
									<td>Koke, Christopher <br/>
									</td>
									<td>Tuesday, April 18, 2023 at 9:33:00 am</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="procedureDescription8">COLLECTION VENOUS BLOOD VENIPUNCTURE</content>
									</td>
									<td>36415 (CPT-4)</td>
									<td>Koke, Christopher <br/>
									</td>
									<td>Tuesday, April 18, 2023 at 9:33:00 am</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="procedureDescription9">Doc in record obtaining, updating or reviewin ...</content>
									</td>
									<td>G8427 (CPT-4)</td>
									<td>Koke, Christopher <br/>
									</td>
									<td>Tuesday, April 18, 2023 at 9:33:00 am</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="procedureDescription10">MEDICATION LIST DOCUMENTED IN MEDICAL RECORD</content>
									</td>
									<td>1159F (CPT-4)</td>
									<td>Koke, Christopher <br/>
									</td>
									<td>Tuesday, April 18, 2023 at 9:33:00 am</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="procedureDescription11">Office Visit Level 1</content>
									</td>
									<td>99211 (CPT-4)</td>
									<td>Koke, Christopher <br/>
									</td>
									<td>Tuesday, April 18, 2023 at 9:33:00 am</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="procedureDescription12">Office Visit Level 4</content>
									</td>
									<td>99214 (CPT-4)</td>
									<td>Koke, Christopher <br/>
									</td>
									<td>Tuesday, April 18, 2023 at 9:33:00 am</td>
									<td/>
								</tr>
								<tr>
									<td>
										<content ID="procedureDescription13">RVW ALL MEDS BY RXNG PRCTIONR OR CLIN RPH DOCD</content>
									</td>
									<td>1160F (CPT-4)</td>
									<td>Koke, Christopher <br/>
									</td>
									<td>Tuesday, April 18, 2023 at 9:33:00 am</td>
									<td/>
								</tr>
							</tbody>
						</table>
					</text>
					<entry typeCode="DRIV">
						<procedure classCode="PROC" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.14" extension="2014-06-09"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.14"/>
							<id extension="123456789" root="2.16.840.1.113883.19"/>
							<code code="G8417" displayName="BMI Above Normal Parameters; follow-up plan d ..." codeSystem="2.16.840.1.113883.6.12" codeSystemName="CPT-4">
								<originalText>
									<reference value="#procedureDescription1"/>
								</originalText>
							</code>
							<text>
								<reference value="#procedureDescription1"/>
							</text>
							<statusCode code="completed"/>
							<effectiveTime value="20220419091600"/>
							<author>
								<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
								<time value="20230727120011-0400"/>
								<assignedAuthor classCode="ASSIGNED">
									<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
									<addr>
										<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
										<streetAddressLine>Suite D</streetAddressLine>
										<city>North Charleston</city>
										<state>SC</state>
										<postalCode>29406-4181</postalCode>
										<country>US</country>
									</addr>
									<telecom value="tel:+1-843-764-0770" use="WP"/>
									<telecom value="mailto:ajackson@libertydoctors.com"/>
									<assignedPerson>
										<name>
											<given>Allen</given>
											<given>B</given>
											<family>Jackson</family>
											<suffix>MD</suffix>
										</name>
									</assignedPerson>
									<representedOrganization>
										<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
										<name>Liberty Doctors</name>
										<telecom value="tel:+1-843-795-5362" use="WP"/>
										<telecom value="fax:+1-843-795-1921" use="WP"/>
										<addr>
											<streetAddressLine>418 Folly Rd</streetAddressLine>
											<streetAddressLine>Ste A</streetAddressLine>
											<city>Charleston</city>
											<state>SC</state>
											<postalCode>29412-2625</postalCode>
											<country>US</country>
										</addr>
									</representedOrganization>
								</assignedAuthor>
							</author>
						</procedure>
					</entry>
					<entry typeCode="DRIV">
						<procedure classCode="PROC" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.14" extension="2014-06-09"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.14"/>
							<id extension="123456789" root="2.16.840.1.113883.19"/>
							<code code="3008F" displayName="BMI DOCUMENTED IN CHART" codeSystem="2.16.840.1.113883.6.12" codeSystemName="CPT-4">
								<originalText>
									<reference value="#procedureDescription2"/>
								</originalText>
							</code>
							<text>
								<reference value="#procedureDescription2"/>
							</text>
							<statusCode code="completed"/>
							<effectiveTime value="20220419091600"/>
							<author>
								<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
								<time value="20230727120011-0400"/>
								<assignedAuthor classCode="ASSIGNED">
									<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
									<addr>
										<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
										<streetAddressLine>Suite D</streetAddressLine>
										<city>North Charleston</city>
										<state>SC</state>
										<postalCode>29406-4181</postalCode>
										<country>US</country>
									</addr>
									<telecom value="tel:+1-843-764-0770" use="WP"/>
									<telecom value="mailto:ajackson@libertydoctors.com"/>
									<assignedPerson>
										<name>
											<given>Allen</given>
											<given>B</given>
											<family>Jackson</family>
											<suffix>MD</suffix>
										</name>
									</assignedPerson>
									<representedOrganization>
										<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
										<name>Liberty Doctors</name>
										<telecom value="tel:+1-843-795-5362" use="WP"/>
										<telecom value="fax:+1-843-795-1921" use="WP"/>
										<addr>
											<streetAddressLine>418 Folly Rd</streetAddressLine>
											<streetAddressLine>Ste A</streetAddressLine>
											<city>Charleston</city>
											<state>SC</state>
											<postalCode>29412-2625</postalCode>
											<country>US</country>
										</addr>
									</representedOrganization>
								</assignedAuthor>
							</author>
						</procedure>
					</entry>
					<entry typeCode="DRIV">
						<procedure classCode="PROC" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.14" extension="2014-06-09"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.14"/>
							<id extension="123456789" root="2.16.840.1.113883.19"/>
							<code code="99214" displayName="Office Visit Level 4" codeSystem="2.16.840.1.113883.6.12" codeSystemName="CPT-4">
								<originalText>
									<reference value="#procedureDescription3"/>
								</originalText>
							</code>
							<text>
								<reference value="#procedureDescription3"/>
							</text>
							<statusCode code="completed"/>
							<effectiveTime value="20220419091600"/>
							<author>
								<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
								<time value="20230727120011-0400"/>
								<assignedAuthor classCode="ASSIGNED">
									<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
									<addr>
										<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
										<streetAddressLine>Suite D</streetAddressLine>
										<city>North Charleston</city>
										<state>SC</state>
										<postalCode>29406-4181</postalCode>
										<country>US</country>
									</addr>
									<telecom value="tel:+1-843-764-0770" use="WP"/>
									<telecom value="mailto:ajackson@libertydoctors.com"/>
									<assignedPerson>
										<name>
											<given>Allen</given>
											<given>B</given>
											<family>Jackson</family>
											<suffix>MD</suffix>
										</name>
									</assignedPerson>
									<representedOrganization>
										<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
										<name>Liberty Doctors</name>
										<telecom value="tel:+1-843-795-5362" use="WP"/>
										<telecom value="fax:+1-843-795-1921" use="WP"/>
										<addr>
											<streetAddressLine>418 Folly Rd</streetAddressLine>
											<streetAddressLine>Ste A</streetAddressLine>
											<city>Charleston</city>
											<state>SC</state>
											<postalCode>29412-2625</postalCode>
											<country>US</country>
										</addr>
									</representedOrganization>
								</assignedAuthor>
							</author>
						</procedure>
					</entry>
					<entry typeCode="DRIV">
						<procedure classCode="PROC" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.14" extension="2014-06-09"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.14"/>
							<id extension="123456789" root="2.16.840.1.113883.19"/>
							<code code="G8417" displayName="BMI Above Normal Parameters; follow-up plan d ..." codeSystem="2.16.840.1.113883.6.12" codeSystemName="CPT-4">
								<originalText>
									<reference value="#procedureDescription4"/>
								</originalText>
							</code>
							<text>
								<reference value="#procedureDescription4"/>
							</text>
							<statusCode code="completed"/>
							<effectiveTime value="20221018085800"/>
							<author>
								<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
								<time value="20230727120011-0400"/>
								<assignedAuthor classCode="ASSIGNED">
									<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
									<addr>
										<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
										<streetAddressLine>Suite D</streetAddressLine>
										<city>North Charleston</city>
										<state>SC</state>
										<postalCode>29406-4181</postalCode>
										<country>US</country>
									</addr>
									<telecom value="tel:+1-843-764-0770" use="WP"/>
									<telecom value="mailto:ajackson@libertydoctors.com"/>
									<assignedPerson>
										<name>
											<given>Allen</given>
											<given>B</given>
											<family>Jackson</family>
											<suffix>MD</suffix>
										</name>
									</assignedPerson>
									<representedOrganization>
										<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
										<name>Liberty Doctors</name>
										<telecom value="tel:+1-843-795-5362" use="WP"/>
										<telecom value="fax:+1-843-795-1921" use="WP"/>
										<addr>
											<streetAddressLine>418 Folly Rd</streetAddressLine>
											<streetAddressLine>Ste A</streetAddressLine>
											<city>Charleston</city>
											<state>SC</state>
											<postalCode>29412-2625</postalCode>
											<country>US</country>
										</addr>
									</representedOrganization>
								</assignedAuthor>
							</author>
						</procedure>
					</entry>
					<entry typeCode="DRIV">
						<procedure classCode="PROC" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.14" extension="2014-06-09"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.14"/>
							<id extension="123456789" root="2.16.840.1.113883.19"/>
							<code code="87811" displayName="Covid Antigen, Rapid" codeSystem="2.16.840.1.113883.6.12" codeSystemName="CPT-4">
								<originalText>
									<reference value="#procedureDescription5"/>
								</originalText>
							</code>
							<text>
								<reference value="#procedureDescription5"/>
							</text>
							<statusCode code="completed"/>
							<effectiveTime value="20221018085800"/>
							<author>
								<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
								<time value="20230727120011-0400"/>
								<assignedAuthor classCode="ASSIGNED">
									<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
									<addr>
										<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
										<streetAddressLine>Suite D</streetAddressLine>
										<city>North Charleston</city>
										<state>SC</state>
										<postalCode>29406-4181</postalCode>
										<country>US</country>
									</addr>
									<telecom value="tel:+1-843-764-0770" use="WP"/>
									<telecom value="mailto:ajackson@libertydoctors.com"/>
									<assignedPerson>
										<name>
											<given>Allen</given>
											<given>B</given>
											<family>Jackson</family>
											<suffix>MD</suffix>
										</name>
									</assignedPerson>
									<representedOrganization>
										<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
										<name>Liberty Doctors</name>
										<telecom value="tel:+1-843-795-5362" use="WP"/>
										<telecom value="fax:+1-843-795-1921" use="WP"/>
										<addr>
											<streetAddressLine>418 Folly Rd</streetAddressLine>
											<streetAddressLine>Ste A</streetAddressLine>
											<city>Charleston</city>
											<state>SC</state>
											<postalCode>29412-2625</postalCode>
											<country>US</country>
										</addr>
									</representedOrganization>
								</assignedAuthor>
							</author>
						</procedure>
					</entry>
					<entry typeCode="DRIV">
						<procedure classCode="PROC" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.14" extension="2014-06-09"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.14"/>
							<id extension="123456789" root="2.16.840.1.113883.19"/>
							<code code="99214" displayName="Office Visit Level 4" codeSystem="2.16.840.1.113883.6.12" codeSystemName="CPT-4">
								<originalText>
									<reference value="#procedureDescription6"/>
								</originalText>
							</code>
							<text>
								<reference value="#procedureDescription6"/>
							</text>
							<statusCode code="completed"/>
							<effectiveTime value="20221018085800"/>
							<author>
								<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
								<time value="20230727120011-0400"/>
								<assignedAuthor classCode="ASSIGNED">
									<id root="2.16.840.1.113883.4.6" extension="1902866965"/>
									<addr>
										<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
										<streetAddressLine>Suite D</streetAddressLine>
										<city>North Charleston</city>
										<state>SC</state>
										<postalCode>29406-4181</postalCode>
										<country>US</country>
									</addr>
									<telecom value="tel:+1-843-764-0770" use="WP"/>
									<telecom value="mailto:ajackson@libertydoctors.com"/>
									<assignedPerson>
										<name>
											<given>Allen</given>
											<given>B</given>
											<family>Jackson</family>
											<suffix>MD</suffix>
										</name>
									</assignedPerson>
									<representedOrganization>
										<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
										<name>Liberty Doctors</name>
										<telecom value="tel:+1-843-795-5362" use="WP"/>
										<telecom value="fax:+1-843-795-1921" use="WP"/>
										<addr>
											<streetAddressLine>418 Folly Rd</streetAddressLine>
											<streetAddressLine>Ste A</streetAddressLine>
											<city>Charleston</city>
											<state>SC</state>
											<postalCode>29412-2625</postalCode>
											<country>US</country>
										</addr>
									</representedOrganization>
								</assignedAuthor>
							</author>
						</procedure>
					</entry>
					<entry typeCode="DRIV">
						<procedure classCode="PROC" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.14" extension="2014-06-09"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.14"/>
							<id extension="123456789" root="2.16.840.1.113883.19"/>
							<code code="G8417" displayName="BMI Above Normal Parameters; follow-up plan d ..." codeSystem="2.16.840.1.113883.6.12" codeSystemName="CPT-4">
								<originalText>
									<reference value="#procedureDescription7"/>
								</originalText>
							</code>
							<text>
								<reference value="#procedureDescription7"/>
							</text>
							<statusCode code="completed"/>
							<effectiveTime value="20230418093300"/>
							<author>
								<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
								<time value="20230727120011-0400"/>
								<assignedAuthor classCode="ASSIGNED">
									<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
									<addr>
										<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
										<city>North Charleston</city>
										<state>SC</state>
										<postalCode>29406</postalCode>
										<country>US</country>
									</addr>
									<telecom value="tel:+1-843-764-0770" use="WP"/>
									<telecom value="mailto:ckoke@libertydoctors.com"/>
									<assignedPerson>
										<name>
											<prefix>DO</prefix>
											<given>Christopher</given>
											<family>Koke</family>
										</name>
									</assignedPerson>
									<representedOrganization>
										<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
										<name>Liberty Doctors</name>
										<telecom value="tel:+1-843-795-5362" use="WP"/>
										<telecom value="fax:+1-843-795-1921" use="WP"/>
										<addr>
											<streetAddressLine>418 Folly Rd</streetAddressLine>
											<streetAddressLine>Ste A</streetAddressLine>
											<city>Charleston</city>
											<state>SC</state>
											<postalCode>29412-2625</postalCode>
											<country>US</country>
										</addr>
									</representedOrganization>
								</assignedAuthor>
							</author>
						</procedure>
					</entry>
					<entry typeCode="DRIV">
						<procedure classCode="PROC" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.14" extension="2014-06-09"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.14"/>
							<id extension="123456789" root="2.16.840.1.113883.19"/>
							<code code="36415" displayName="COLLECTION VENOUS BLOOD VENIPUNCTURE" codeSystem="2.16.840.1.113883.6.12" codeSystemName="CPT-4">
								<originalText>
									<reference value="#procedureDescription8"/>
								</originalText>
							</code>
							<text>
								<reference value="#procedureDescription8"/>
							</text>
							<statusCode code="completed"/>
							<effectiveTime value="20230418093300"/>
							<author>
								<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
								<time value="20230727120011-0400"/>
								<assignedAuthor classCode="ASSIGNED">
									<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
									<addr>
										<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
										<city>North Charleston</city>
										<state>SC</state>
										<postalCode>29406</postalCode>
										<country>US</country>
									</addr>
									<telecom value="tel:+1-843-764-0770" use="WP"/>
									<telecom value="mailto:ckoke@libertydoctors.com"/>
									<assignedPerson>
										<name>
											<prefix>DO</prefix>
											<given>Christopher</given>
											<family>Koke</family>
										</name>
									</assignedPerson>
									<representedOrganization>
										<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
										<name>Liberty Doctors</name>
										<telecom value="tel:+1-843-795-5362" use="WP"/>
										<telecom value="fax:+1-843-795-1921" use="WP"/>
										<addr>
											<streetAddressLine>418 Folly Rd</streetAddressLine>
											<streetAddressLine>Ste A</streetAddressLine>
											<city>Charleston</city>
											<state>SC</state>
											<postalCode>29412-2625</postalCode>
											<country>US</country>
										</addr>
									</representedOrganization>
								</assignedAuthor>
							</author>
						</procedure>
					</entry>
					<entry typeCode="DRIV">
						<procedure classCode="PROC" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.14" extension="2014-06-09"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.14"/>
							<id extension="123456789" root="2.16.840.1.113883.19"/>
							<code code="G8427" displayName="Doc in record obtaining, updating or reviewin ..." codeSystem="2.16.840.1.113883.6.12" codeSystemName="CPT-4">
								<originalText>
									<reference value="#procedureDescription9"/>
								</originalText>
							</code>
							<text>
								<reference value="#procedureDescription9"/>
							</text>
							<statusCode code="completed"/>
							<effectiveTime value="20230418093300"/>
							<author>
								<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
								<time value="20230727120011-0400"/>
								<assignedAuthor classCode="ASSIGNED">
									<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
									<addr>
										<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
										<city>North Charleston</city>
										<state>SC</state>
										<postalCode>29406</postalCode>
										<country>US</country>
									</addr>
									<telecom value="tel:+1-843-764-0770" use="WP"/>
									<telecom value="mailto:ckoke@libertydoctors.com"/>
									<assignedPerson>
										<name>
											<prefix>DO</prefix>
											<given>Christopher</given>
											<family>Koke</family>
										</name>
									</assignedPerson>
									<representedOrganization>
										<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
										<name>Liberty Doctors</name>
										<telecom value="tel:+1-843-795-5362" use="WP"/>
										<telecom value="fax:+1-843-795-1921" use="WP"/>
										<addr>
											<streetAddressLine>418 Folly Rd</streetAddressLine>
											<streetAddressLine>Ste A</streetAddressLine>
											<city>Charleston</city>
											<state>SC</state>
											<postalCode>29412-2625</postalCode>
											<country>US</country>
										</addr>
									</representedOrganization>
								</assignedAuthor>
							</author>
						</procedure>
					</entry>
					<entry typeCode="DRIV">
						<procedure classCode="PROC" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.14" extension="2014-06-09"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.14"/>
							<id extension="123456789" root="2.16.840.1.113883.19"/>
							<code code="1159F" displayName="MEDICATION LIST DOCUMENTED IN MEDICAL RECORD" codeSystem="2.16.840.1.113883.6.12" codeSystemName="CPT-4">
								<originalText>
									<reference value="#procedureDescription10"/>
								</originalText>
							</code>
							<text>
								<reference value="#procedureDescription10"/>
							</text>
							<statusCode code="completed"/>
							<effectiveTime value="20230418093300"/>
							<author>
								<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
								<time value="20230727120011-0400"/>
								<assignedAuthor classCode="ASSIGNED">
									<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
									<addr>
										<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
										<city>North Charleston</city>
										<state>SC</state>
										<postalCode>29406</postalCode>
										<country>US</country>
									</addr>
									<telecom value="tel:+1-843-764-0770" use="WP"/>
									<telecom value="mailto:ckoke@libertydoctors.com"/>
									<assignedPerson>
										<name>
											<prefix>DO</prefix>
											<given>Christopher</given>
											<family>Koke</family>
										</name>
									</assignedPerson>
									<representedOrganization>
										<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
										<name>Liberty Doctors</name>
										<telecom value="tel:+1-843-795-5362" use="WP"/>
										<telecom value="fax:+1-843-795-1921" use="WP"/>
										<addr>
											<streetAddressLine>418 Folly Rd</streetAddressLine>
											<streetAddressLine>Ste A</streetAddressLine>
											<city>Charleston</city>
											<state>SC</state>
											<postalCode>29412-2625</postalCode>
											<country>US</country>
										</addr>
									</representedOrganization>
								</assignedAuthor>
							</author>
						</procedure>
					</entry>
					<entry typeCode="DRIV">
						<procedure classCode="PROC" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.14" extension="2014-06-09"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.14"/>
							<id extension="123456789" root="2.16.840.1.113883.19"/>
							<code code="99211" displayName="Office Visit Level 1" codeSystem="2.16.840.1.113883.6.12" codeSystemName="CPT-4">
								<originalText>
									<reference value="#procedureDescription11"/>
								</originalText>
							</code>
							<text>
								<reference value="#procedureDescription11"/>
							</text>
							<statusCode code="completed"/>
							<effectiveTime value="20230418093300"/>
							<author>
								<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
								<time value="20230727120011-0400"/>
								<assignedAuthor classCode="ASSIGNED">
									<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
									<addr>
										<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
										<city>North Charleston</city>
										<state>SC</state>
										<postalCode>29406</postalCode>
										<country>US</country>
									</addr>
									<telecom value="tel:+1-843-764-0770" use="WP"/>
									<telecom value="mailto:ckoke@libertydoctors.com"/>
									<assignedPerson>
										<name>
											<prefix>DO</prefix>
											<given>Christopher</given>
											<family>Koke</family>
										</name>
									</assignedPerson>
									<representedOrganization>
										<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
										<name>Liberty Doctors</name>
										<telecom value="tel:+1-843-795-5362" use="WP"/>
										<telecom value="fax:+1-843-795-1921" use="WP"/>
										<addr>
											<streetAddressLine>418 Folly Rd</streetAddressLine>
											<streetAddressLine>Ste A</streetAddressLine>
											<city>Charleston</city>
											<state>SC</state>
											<postalCode>29412-2625</postalCode>
											<country>US</country>
										</addr>
									</representedOrganization>
								</assignedAuthor>
							</author>
						</procedure>
					</entry>
					<entry typeCode="DRIV">
						<procedure classCode="PROC" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.14" extension="2014-06-09"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.14"/>
							<id extension="123456789" root="2.16.840.1.113883.19"/>
							<code code="99214" displayName="Office Visit Level 4" codeSystem="2.16.840.1.113883.6.12" codeSystemName="CPT-4">
								<originalText>
									<reference value="#procedureDescription12"/>
								</originalText>
							</code>
							<text>
								<reference value="#procedureDescription12"/>
							</text>
							<statusCode code="completed"/>
							<effectiveTime value="20230418093300"/>
							<author>
								<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
								<time value="20230727120011-0400"/>
								<assignedAuthor classCode="ASSIGNED">
									<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
									<addr>
										<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
										<city>North Charleston</city>
										<state>SC</state>
										<postalCode>29406</postalCode>
										<country>US</country>
									</addr>
									<telecom value="tel:+1-843-764-0770" use="WP"/>
									<telecom value="mailto:ckoke@libertydoctors.com"/>
									<assignedPerson>
										<name>
											<prefix>DO</prefix>
											<given>Christopher</given>
											<family>Koke</family>
										</name>
									</assignedPerson>
									<representedOrganization>
										<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
										<name>Liberty Doctors</name>
										<telecom value="tel:+1-843-795-5362" use="WP"/>
										<telecom value="fax:+1-843-795-1921" use="WP"/>
										<addr>
											<streetAddressLine>418 Folly Rd</streetAddressLine>
											<streetAddressLine>Ste A</streetAddressLine>
											<city>Charleston</city>
											<state>SC</state>
											<postalCode>29412-2625</postalCode>
											<country>US</country>
										</addr>
									</representedOrganization>
								</assignedAuthor>
							</author>
						</procedure>
					</entry>
					<entry typeCode="DRIV">
						<procedure classCode="PROC" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.14" extension="2014-06-09"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.14"/>
							<id extension="123456789" root="2.16.840.1.113883.19"/>
							<code code="1160F" displayName="RVW ALL MEDS BY RXNG PRCTIONR OR CLIN RPH DOCD" codeSystem="2.16.840.1.113883.6.12" codeSystemName="CPT-4">
								<originalText>
									<reference value="#procedureDescription13"/>
								</originalText>
							</code>
							<text>
								<reference value="#procedureDescription13"/>
							</text>
							<statusCode code="completed"/>
							<effectiveTime value="20230418093300"/>
							<author>
								<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
								<time value="20230727120011-0400"/>
								<assignedAuthor classCode="ASSIGNED">
									<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
									<addr>
										<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
										<city>North Charleston</city>
										<state>SC</state>
										<postalCode>29406</postalCode>
										<country>US</country>
									</addr>
									<telecom value="tel:+1-843-764-0770" use="WP"/>
									<telecom value="mailto:ckoke@libertydoctors.com"/>
									<assignedPerson>
										<name>
											<prefix>DO</prefix>
											<given>Christopher</given>
											<family>Koke</family>
										</name>
									</assignedPerson>
									<representedOrganization>
										<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
										<name>Liberty Doctors</name>
										<telecom value="tel:+1-843-795-5362" use="WP"/>
										<telecom value="fax:+1-843-795-1921" use="WP"/>
										<addr>
											<streetAddressLine>418 Folly Rd</streetAddressLine>
											<streetAddressLine>Ste A</streetAddressLine>
											<city>Charleston</city>
											<state>SC</state>
											<postalCode>29412-2625</postalCode>
											<country>US</country>
										</addr>
									</representedOrganization>
								</assignedAuthor>
							</author>
						</procedure>
					</entry>
				</section>
			</component>
			<!--******************************** Immunizations *******************************-->
			<component>
				<section>
					<templateId root="2.16.840.1.113883.10.20.22.2.1" extension="2015-08-01"/>
					<templateId root="2.16.840.1.113883.10.20.22.2.2.1"/>
					<code code="11369-6" displayName="History of immunizations" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<title>Immunizations</title>
					<text>No immunizations included in this record.</text>
					<entry>
						<substanceAdministration classCode="SBADM" moodCode="INT" negationInd="false">
							<templateId root="2.16.840.1.113883.10.20.22.4.52" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.52"/>
							<id nullFlavor="NA"/>
							<statusCode code="completed"/>
							<effectiveTime nullFlavor="NA"/>
							<consumable>
								<manufacturedProduct classCode="MANU">
									<templateId root="2.16.840.1.113883.10.20.22.4.54" extension="2014-06-09"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.54"/>
									<manufacturedMaterial>
										<code nullFlavor="NA"/>
									</manufacturedMaterial>
								</manufacturedProduct>
							</consumable>
						</substanceAdministration>
					</entry>
				</section>
			</component>
			<!--******************************** Plan of Treatment ********************************-->
			<component>
				<section>
					<templateId root="2.16.840.1.113883.10.20.22.2.10" extension="2014-06-09"/>
					<templateId root="2.16.840.1.113883.10.20.22.2.10"/>
					<code code="18776-5" displayName="Treatment Plan" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<title>Treatment Plan</title>
					<text>
						<table border="1" width="100%">
							<thead>
								<tr>
									<th>Date</th>
									<th>Activity</th>
									<th>Provider</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Tuesday, April 18, 2023</td>
									<td>
										<content ID="PendingTest1">Ordered: FOLATE</content>
									</td>
									<td>Koke, Christopher </td>
								</tr>
							</tbody>
						</table>
					</text>
					<!--*** Pending Test ***-->
					<entry>
						<observation classCode="OBS" moodCode="RQO">
							<templateId root="2.16.840.1.113883.10.20.22.4.44" extension="2014-06-09"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.44"/>
							<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
							<code code="24357-6" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="FOLATE"/>
							<statusCode code="active"/>
							<effectiveTime value="20230418101249"/>
							<author>
								<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
								<time value="20230727120011-0400"/>
								<assignedAuthor classCode="ASSIGNED">
									<id root="2.16.840.1.113883.4.6" extension="1386958080"/>
									<addr>
										<streetAddressLine>2175 Ashley Phosphate Rd</streetAddressLine>
										<city>North Charleston</city>
										<state>SC</state>
										<postalCode>29406</postalCode>
										<country>US</country>
									</addr>
									<telecom value="tel:+1-843-764-0770" use="WP"/>
									<telecom value="mailto:ckoke@libertydoctors.com"/>
									<assignedPerson>
										<name>
											<prefix>DO</prefix>
											<given>Christopher</given>
											<family>Koke</family>
										</name>
									</assignedPerson>
									<representedOrganization>
										<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
										<name>Liberty Doctors</name>
										<telecom value="tel:+1-843-795-5362" use="WP"/>
										<telecom value="fax:+1-843-795-1921" use="WP"/>
										<addr>
											<streetAddressLine>418 Folly Rd</streetAddressLine>
											<streetAddressLine>Ste A</streetAddressLine>
											<city>Charleston</city>
											<state>SC</state>
											<postalCode>29412-2625</postalCode>
											<country>US</country>
										</addr>
									</representedOrganization>
								</assignedAuthor>
							</author>
						</observation>
					</entry>
				</section>
			</component>
			<!--******************************** Medical Equipment *******************************-->
			<component>
				<section>
					<templateId root="2.16.840.1.113883.10.20.22.2.23"/>
					<templateId root="2.16.840.1.113883.10.20.22.2.23" extension="2014-06-09"/>
					<code code="46264-8" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Medical Equipment"/>
					<title>Implants</title>
					<text>No implants were placed.</text>
				</section>
			</component>
			<!--******************************** Health Concerns *******************************-->
			<component>
				<section>
					<templateId root="2.16.840.1.113883.10.20.22.2.58" extension="2015-08-01"/>
					<templateId root="2.16.840.1.113883.10.20.22.2.58"/>
					<code code="75310-3" displayName="Health Concerns Document" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<title>Health Concerns</title>
					<text>No Health Concerns Reported.</text>
					<entry>
						<act classCode="ACT" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.132" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.132"/>
							<id nullFlavor="NA"/>
							<code code="75310-3" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Health Concern"/>
							<statusCode code="completed"/>
							<effectiveTime nullFlavor="NA"/>
						</act>
					</entry>
				</section>
			</component>
			<!--******************************** Goals *******************************-->
			<component>
				<section>
					<templateId root="2.16.840.1.113883.10.20.22.2.60"/>
					<code code="61146-7" displayName="Goals" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<title>Goals Section</title>
					<text>No Goals Reported.</text>
					<entry>
						<observation classCode="OBS" moodCode="GOL">
							<templateId root="2.16.840.1.113883.10.20.22.4.121"/>
							<id nullFlavor="NA"/>
							<code nullFlavor="UNK"/>
							<statusCode code="active"/>
							<effectiveTime nullFlavor="NA"/>
							<author>
								<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
								<time nullFlavor="NA"/>
								<assignedAuthor>
									<id nullFlavor="NA"/>
								</assignedAuthor>
							</author>
							<author typeCode="AUT">
								<templateId root="2.16.840.1.113883.10.20.22.4.119"/>
								<time nullFlavor="NA"/>
								<assignedAuthor>
									<id nullFlavor="NA"/>
								</assignedAuthor>
							</author>
						</observation>
					</entry>
				</section>
			</component>
			<!--******************************** Assessments *******************************-->
			<component>
				<section>
					<templateId root="2.16.840.1.113883.10.20.22.2.8"/>
					<code code="51848-0" displayName="Assessments" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<title>Assessment</title>
					<text>No Assessments Reported.</text>
				</section>
			</component>
			<!--******************************** Instructions (Patient) ********************************-->
			<component>
				<section>
					<templateId root="2.16.840.1.113883.10.20.22.2.45"/>
					<code code="69730-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="INSTRUCTIONS"/>
					<title>Instructions</title>
					<text>
						<table border="1">
							<thead>
								<tr>
									<th>Title</th>
									<th>Note</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>RETURN OFFICE VISIT FOR MEDICAL MANAGEMENT  OFFICE</td>
									<td>
										<content ID="generalInstruction1"> VISIT <br/><br/>Patient Name: Jerome Bennett<br/>Date of Birth: 05/20/75<br/><br/>Provider Seeing Patient Today:<br/>Providers: ABJ<br/><br/>Primary Care Provider:  Allen B Jackson<br/><br/>Vital Signs:<br/>Patient Age: 46 year<br/>BP: 158/101, Right Arm, Pulse: 69<br/>Temperature: 98.0 F, Height: 6'1", Weight: 247 lbs<br/>BMI:  32.59 kg/m2<br/><br/>Current Medications: <br/>Rx:   ATORVASTATIN CALCIUM 20MG Oral Tablet Ref: 6 Rx:   benazepriL 20 mg-hydrochlorothiazide 25 mg tablet Ref: 6 Rx:   benazepriL 20 mg-hydrochlorothiazide 25 mg tablet Ref: 1     Instructions: take 1 tablet by oral route once daily Rx:   Lipitor 20 mg tablet Ref: 1     Instructions: take 1 tablet (20 mg) by oral route once daily<br/>Medication Allergies:   NKDA<br/>Chief Complaint(s): BLOOD PRESSURE STILL RUNNING HIGH<br/>12 MONTH F/U<br/><br/>Subjective:<br/>Smoking status is recorded today as: Never smoker<br/>Alcohol: socially drinks alcohol <br/><br/>This 46 year old male returns for medical management of the following:<br/>Hypertension<br/>Hyperlipidemia<br/>Anemia<br/><br/><br/>BMI: BMI of 32.59 kg/m2 qualifies as obese.<br/>Procedure: BMI DOCUMENTED IN CHART: 3008F<br/>BMI is ABOVE prescribed range for patient.<br/>Procedure: BMI Above Normal Parameters; follow-up plan documented: G8417<br/>discussed plan to increase exercise, decease caloric intake and  decrease carbohydrates.<br/>Diagnosis: Body Mass Index 32.0-32.9, adult : ICD9 = V85.32 / ICD10 = Z68.32 / SNOMED = 162864005<br/><br/><br/>Review of System:<br/>Constitutional: Negative<br/>Eyes: Patient wears glasses  <br/>Ears:  Negative  <br/>Nose/Mouth/Throat: Negative  <br/>Cardiovascular:  Negative  <br/>Respiratory:  Negative  <br/>Gastrointestinal:  Negative  <br/>Genitourinary:  Negative  <br/>Musculoskeletal:  Negative  <br/>Skin:  Negative  <br/>Neurological:  Negative  <br/>Psychiatric:  Negative  <br/>Hematologic/Lymphatic: Negative  <br/>Allergic/Immunologic: Negative  <br/>Endocrine:  Negative <br/><br/><br/>Reviewed past medical history, social history, and family history.<br/>Past Medical History: <br/>Hypertension<br/>Hyperlipidemia<br/><br/><br/>Surgical / Procedural History: None<br/><br/>Social History: <br/>Referred by:  website<br/>Emergency Contact/Telephone#:Viola Drayton 843-327-9401<br/>Marital status:  single<br/>Children:  3 <br/>Lives with:  no one (lives alone)<br/>Occupation:  employed full-time <br/>Nutrition:  average diet <br/>Exercise:  walking<br/>Tobacco exposure:  No smokers in home. <br/>Clinical Elements: Alcohol:  socially drinks alcohol<br/>Illicit drugs:  no<br/>Seatbelt:  yes <br/>Smoking status is recorded today as: Never smoker<br/>Alcohol: socially drinks alcohol <br/><br/>Family History:  <br/>Mother:  deceased <br/>Father:  deceased <br/>Sibling(s):  4 brother(s) <br/>
											<br/>Objective:<br/>General: Obese African-American male,  no distress. <br/>Heart: RRR, no murmur.<br/>Lungs:  CTA bilaterally, no wheezes, rhonchi, rales.  <br/>Extremities: No deformities, clubbing, cyanosis, or edema.  <br/>Neurologic:  A/O x 3. <br/><br/>LABS-Most common:<br/>WBC: 6.2 on 03/26/2021   <br/>RBC: 4.07 on 03/26/2021  <br/>HEMOGLOBIN: 12.6 on 03/26/2021 <br/>HEMATOCRIT: 35.9 on 03/26/2021 <br/>PLATELETS: 339.0 on 03/26/2021  <br/>MCHC: 35.0 on 03/26/2021<br/>MCH: 30.9 on 03/26/2021<br/>MCV: 88.3 on 03/26/2021<br/>MPV: 7.8 on 03/26/2021 <br/>RDW: 12.9 on 03/26/2021<br/><br/>CMP/BMP:<br/>GLUCOSE: 99 on 03/26/2021<br/>BUN: 12 on 03/26/2021<br/>CREATININE, SERUM: 0.9 on 03/26/2021   <br/>eGFR: 97.0 on 03/26/2021<br/>BUN/CREAT RATIO: 13.3 on 03/26/2021<br/>SODIUM: 139 on 03/26/2021<br/>POTASSIUM: 3.8 on 03/26/2021<br/>CHLORIDE: 103 on 03/26/2021<br/>CO2: 27 on 03/26/2021<br/>CALCIUM, SERUM: 9.2 on 03/26/2021<br/>ANION GAP: 9.0 on 03/26/2021<br/>TOTAL PROTEIN: 6.8 on 03/26/2021<br/>ALBUMIN, SERUM: 4.1 on 03/26/2021<br/>GLOBULIN: 2.7 on 03/26/2021<br/>A/G RATIO: 1.5 on 03/26/2021<br/>BILIRUBIN TOTAL: 0.7 on 03/26/2021<br/>ALK PHOS: 49 on 03/26/2021<br/>AST (SGOT): 16 on 03/26/2021<br/>ALT (SGPT): 15 on 03/26/2021<br/>AAGFR ESTIMATED: 117.4 on 03/26/2021<br/><br/>LIPID PANEL:<br/>CHOLESTEROL: 216 on 03/26/2021<br/>HDL-CHOLESTEROL: 54 on 03/26/2021<br/>LDL-CHOLESTEROL: 148 on 03/26/2021 <br/>TRIGLYCERIDES: 70 on 03/26/2021<br/>VLDL CHOL: 14.0 on 03/26/2021<br/>CHOL/HDL RATIO: 4.0 on 03/26/2021<br/>NON-HDL CHOLEST: 162.0 on 03/26/2021 <br/><br/>OTHER COMMON:<br/>TSH: 0.94 on 03/26/2021<br/>T4 FREE: 0.94 on 03/26/2021<br/><br/>Assessment:<br/>Major Problem:  Hypertensive heart disease without heart failure: ICD10 = I11.9 / ICD9 = 402.90 / SNOMED = 60899001<br/>Major Problem:  Hyperlipidemia, unspecified: ICD10 = E78.5 / ICD9 = 272.4 / SNOMED = 55822004<br/>Major Problem:  Anemia, unspecified: ICD10 = D64.9 / ICD9 = 285.9 / SNOMED = 271737000<br/><br/>Plan:<br/>Hypertension unstable, refilled patient's Benazepril 40mg and /HCTZ 25mg. Discussed the risk of uncontrolled/untreated hypertension and the silent nature of the disease.<br/>Hyperlipidemia stable, refilled patient's Lipitor 20mg prescription.<br/>Anemia 12.6/25.9 stable, discussed with patient.<br/><br/>Reviewed labs with patient and all questions addressed.<br/>Continue current medication(s)  Refill(s) provided.<br/><br/><br/>Obesity / Weight Gain:<br/>Urged that patient be realistic in terms of weight reduction and stressed that modest degrees of weight loss can have important health benefits. Counseled against weight loss program unless patient is willing to make it a long-term effort, since weight loss and regain could be more deleterious than maintaining body weight and avoiding weight gain.  Stressed the importance that dietary intervention and exercise are both essential in the treatment of obesity.<br/><br/>Follow-up:  F/U 6 months<br/><br/>Procedure: Office Visit Level 4 : 99214<br/>Evaluation and Management code calculated based on Time using 2021 guidelines. Total Time: 30<br/><br/>Rx: Lipitor 20 mg tablet, 90, Ref: 0, take 1 tablet (20 mg) by oral route once daily<br/>Rx: hydroCHLOROthiazide 25 mg tablet, 90, Ref: 0, take 1 tablet (25 mg) by oral route 1 time per day<br/>Rx: benazepriL 40 mg tablet, 90, Ref: 0, take 1 tablet (40 mg) by oral route once daily<br/>#        SIGNED BY Allen B Jackson, MD  (ABJ)       04/19/2022 11:52AM</content>
									</td>
								</tr>
								<tr>
									<td>RETURN OFFICE VISIT FOR MEDICAL MANAGEMENT OFFICE</td>
									<td>
										<content ID="generalInstruction2"> VISIT <br/><br/>Patient Name: Jerome Bennett<br/>Date of Birth: 05/20/75<br/><br/>Provider Seeing Patient Today:<br/>Providers: ABJ<br/><br/>Primary Care Provider:  Allen B Jackson<br/><br/>Vital Signs:<br/>Patient Age: 47 year<br/>BP: 158/102, Right Arm, Pulse: 74<br/>Temperature: 98.1 F, Height: 6'1", Weight: 238 lbs<br/>BMI:  31.40 kg/m2<br/><br/>Current Medications: <br/>Rx:   benazepriL 40 mg tablet Ref: 2     Instructions: take 1 tablet (40 mg) by oral route once daily Rx:   hydroCHLOROthiazide 25 mg tablet Ref: 2     Instructions: take 1 tablet (25 mg) by oral route 1 time per day Rx:   Lipitor 20 mg tablet Ref: 2     Instructions: take 1 tablet (20 mg) by oral route once daily<br/>Medication Allergies:   NKDA<br/><br/><br/>Chief Complaint(s): Cold &amp; flu symptoms<br/>Subjective:<br/>Smoking status is recorded today as: Never smoker<br/>Alcohol: socially drinks alcohol <br/><br/>This 47 year old male presents with an URI and returns for medical management of the following:<br/>Hypertension<br/>Hyperlipidemia<br/>Anemia<br/>Mr. Bennett is c/o having aching joints, nausea, and fatigue. Patient denies getting Covid 19 Vaccines.<br/><br/><br/>BMI: BMI of 31.40 kg/m2 qualifies as obese.<br/>BMI is ABOVE prescribed range for patient.<br/>Procedure: BMI Above Normal Parameters; follow-up plan documented: G8417<br/>discussed plan to increase exercise, decease caloric intake and  decrease carbohydrates.<br/>Diagnosis: Body Mass Index 31.0-31.9, adult : ICD9 = V85.31 / ICD10 = Z68.31 / SNOMED = 162864005<br/><br/><br/>Review of System:<br/>Constitutional: 9 lb weight loss since last visit<br/>Eyes: Patient wears glasses  <br/>Ears:  Negative  <br/>Nose/Mouth/Throat: No sense of smell  <br/>Cardiovascular:  Negative  <br/>Respiratory:  Negative  <br/>Gastrointestinal:  Nausea  <br/>Genitourinary:  Negative  <br/>Musculoskeletal:  Negative  <br/>Skin:  Negative  <br/>Neurological:  Negative  <br/>Psychiatric:  Negative  <br/>Hematologic/Lymphatic: Negative  <br/>Allergic/Immunologic: Negative  <br/>Endocrine:  Negative <br/><br/><br/>Reviewed past medical history, social history, and family history.<br/>Past Medical History: <br/>Hypertension<br/>Hyperlipidemia<br/><br/><br/>Surgical / Procedural History: None<br/><br/>Social History: <br/>Referred by:  website<br/>Emergency Contact/Telephone#:Viola Drayton 843-327-9401<br/>Marital status:  single<br/>Children:  3 <br/>Lives with:  no one (lives alone)<br/>Occupation:  employed full-time <br/>Nutrition:  average diet <br/>Exercise:  walking<br/>Tobacco exposure:  No smokers in home. <br/>Clinical Elements: Alcohol:  socially drinks alcohol<br/>Illicit drugs:  no<br/>Seatbelt:  yes <br/>Smoking status is recorded today as: Never smoker<br/>Alcohol: socially drinks alcohol <br/><br/>Family History:  <br/>Mother:  deceased <br/>Father:  deceased <br/>Sibling(s):  4 brother(s) <br/>
											<br/>Objective:<br/>General: Obese African-American male,  no distress. <br/>Heart: RRR, no murmur.<br/>Lungs:  CTA bilaterally, no wheezes, rhonchi, rales.  <br/>Extremities: No deformities, clubbing, cyanosis, or edema.  <br/>Neurologic:  A/O x 3. <br/><br/><br/>Covid Antigen, Rapid testing performed:<br/><br/>Lab: Covid Antigen, Rapid:  Negative <br/><br/>Pt tested negative for COVID 19.  Although the pt has been exposed to a person/persons who have tested positive, the pt does not meet the present DHEC guidelines for self-quarantine measures.  Should symptoms manifest, persist, or worsen, pt has been instructed to seek medical attention with their PCP or the ER.<br/>
											<br/><br/>Procedure:Covid Antigen, Rapid : 87811<br/><br/>COVID<br/>Have you traveled to any of these locations in the last 14 days?<br/>China:   no<br/>Iran:   no<br/>South Korea:   no<br/>Italy:   no<br/>Japan:   no<br/><br/>Have you traveled elsewhere, internationally?  no<br/><br/>If yes, where did you travel to?:<br/><br/>Have you traveled domestically?  no<br/><br/>If yes, where did you travel to?:<br/><br/>Have you had contact with anyone with confirmed COVID-19 in the last 14 days?   no<br/><br/><br/>Are you currently experiencing fever over 100 degrees, difficulty breathing or cough?   no<br/><br/>LABS-Most common:<br/>WBC: 6.2 on 03/26/2021   <br/>RBC: 4.07 on 03/26/2021  <br/>HEMOGLOBIN: 12.6 on 03/26/2021 <br/>HEMATOCRIT: 35.9 on 03/26/2021 <br/>PLATELETS: 339.0 on 03/26/2021  <br/>MCHC: 35.0 on 03/26/2021<br/>MCH: 30.9 on 03/26/2021<br/>MCV: 88.3 on 03/26/2021<br/>MPV: 7.8 on 03/26/2021 <br/>RDW: 12.9 on 03/26/2021<br/><br/>CMP/BMP:<br/>GLUCOSE: 99 on 03/26/2021<br/>BUN: 12 on 03/26/2021<br/>CREATININE, SERUM: 0.9 on 03/26/2021   <br/>eGFR: 97.0 on 03/26/2021<br/>BUN/CREAT RATIO: 13.3 on 03/26/2021<br/>SODIUM: 139 on 03/26/2021<br/>POTASSIUM: 3.8 on 03/26/2021<br/>CHLORIDE: 103 on 03/26/2021<br/>CO2: 27 on 03/26/2021<br/>CALCIUM, SERUM: 9.2 on 03/26/2021<br/>ANION GAP: 9.0 on 03/26/2021<br/>TOTAL PROTEIN: 6.8 on 03/26/2021<br/>ALBUMIN, SERUM: 4.1 on 03/26/2021<br/>GLOBULIN: 2.7 on 03/26/2021<br/>A/G RATIO: 1.5 on 03/26/2021<br/>BILIRUBIN TOTAL: 0.7 on 03/26/2021<br/>ALK PHOS: 49 on 03/26/2021<br/>AST (SGOT): 16 on 03/26/2021<br/>ALT (SGPT): 15 on 03/26/2021<br/>AAGFR ESTIMATED: 117.4 on 03/26/2021<br/><br/>LIPID PANEL:<br/>CHOLESTEROL: 216 on 03/26/2021<br/>HDL-CHOLESTEROL: 54 on 03/26/2021<br/>LDL-CHOLESTEROL: 148 on 03/26/2021 <br/>TRIGLYCERIDES: 70 on 03/26/2021<br/>VLDL CHOL: 14.0 on 03/26/2021<br/>CHOL/HDL RATIO: 4.0 on 03/26/2021<br/>NON-HDL CHOLEST: 162.0 on 03/26/2021 <br/><br/>OTHER COMMON:<br/>TSH: 0.94 on 03/26/2021<br/>T4 FREE: 0.94 on 03/26/2021<br/><br/>Assessment:<br/>Major Problem:  Hypertensive heart disease without heart failure: ICD10 = I11.9 / ICD9 = 402.90 / SNOMED = 60899001<br/>Major Problem:  Hyperlipidemia, unspecified: ICD10 = E78.5 / ICD9 = 272.4 / SNOMED = 55822004<br/>Major Problem:  Anemia, unspecified: ICD10 = D64.9 / ICD9 = 285.9 / SNOMED = 271737000<br/>Major Problem:  Acute upper respiratory infection, unspecified: ICD10 = J06.9 / ICD9 = 465.9 / SNOMED = 54150009<br/>Major Problem:  Encounter for screening for COVID-19: ICD10 = Z11.52 / ICD9 =  / SNOMED = 243791004<br/><br/><br/>Plan:<br/>Hypertension stable, refilled patient's Benazepril 40mg and /HCTZ 25mg prescription.<br/>Hyperlipidemia stable, refilled patient's Lipitor 20mg prescription.<br/>Anemia 12.6/35.9 stable, discussed with patient.<br/>URI?/Covid 19 stable, patient given Rapid Covid Test in office today showing negative results.<br/><br/>Reviewed labs with patient and all questions addressed.<br/>Continue current medication(s)  Refill(s) provided.<br/><br/><br/>Obesity / Weight Gain:<br/>Urged that patient be realistic in terms of weight reduction and stressed that modest degrees of weight loss can have important health benefits. Counseled against weight loss program unless patient is willing to make it a long-term effort, since weight loss and regain could be more deleterious than maintaining body weight and avoiding weight gain.  Stressed the importance that dietary intervention and exercise are both essential in the treatment of obesity.<br/><br/>Follow-up:  F/U 6 months<br/><br/>Procedure: Office Visit Level 4 : 99214<br/>Evaluation and Management code calculated based on Time using 2021 guidelines. Total Time: 30<br/>Rx: Lipitor 20 mg tablet, 90, Ref: 2, take 1 tablet (20 mg) by oral route once daily<br/>Rx: hydroCHLOROthiazide 25 mg tablet, 90, Ref: 2, take 1 tablet (25 mg) by oral route 1 time per day<br/>Rx: benazepriL 40 mg tablet, 90, Ref: 2, take 1 tablet (40 mg) by oral route once daily<br/>#        SIGNED BY Allen B Jackson, MD  (ABJ)       10/18/2022 12:17PM</content>
									</td>
								</tr>
								<tr>
									<td>RETURN OFFICE VISIT FOR MEDICAL MANAGEMENT OFFICE</td>
									<td>
										<content ID="generalInstruction3"> VISIT <br/><br/>Patient Name: Jerome Bennett<br/>Date of Birth: 05/20/75<br/><br/>Provider Seeing Patient Today:<br/>Providers: CK2<br/><br/>Primary Care Provider:  Christopher Koke<br/><br/><br/>Vital Signs:<br/>Patient Age: 47 year<br/>BP: 130/85, Right Arm, Pulse: 68<br/>Temperature: 98.1 F, Height: 6'1", Weight: 239 lbs<br/>BMI:  31.53 kg/m2<br/><br/>Current Medications:    Rx:   benazepriL 40 mg tablet Ref: 2     Instructions: take 1 tablet (40 mg) by oral route once daily Rx:   hydroCHLOROthiazide 25 mg tablet Ref: 2     Instructions: take 1 tablet (25 mg) by oral route 1 time per day Rx:   Lipitor 20 mg tablet Ref: 2     Instructions: take 1 tablet (20 mg) by oral route once daily <br/>.MRC: CKOKE<br/>Procedure: Doc in record obtaining, updating or reviewing pt current meds: G8427<br/>Procedure: RVW ALL MEDS BY RXNG PRCTIONR OR CLIN RPH DOCD : 1160F<br/>Procedure: MEDICATION LIST DOCUMENTED IN MEDICAL RECORD : 1159F<br/>Medication Allergies:   NKDA<br/><br/><br/>Chief Complaint(s): 6 MONTH F/U<br/>Subjective:<br/>Smoking status is recorded today as: Never smoker<br/>Alcohol: socially drinks alcohol <br/><br/><br/>This  47 year old male presents with  6 MONTH F/U and returns for medical management of the following:<br/>Hypertension<br/>Hyperlipidemia<br/>Normocytic Anemia<br/><br/>Never had Colonoscopy<br/><br/>Pos h/o anemia,  no known blood loss or concerns. <br/><br/>Pt feels well today without any concerns. Tolerating medications well.<br/><br/>
											<br/><br/>BMI: BMI of 31.53 kg/m2 qualifies as obese.<br/>BMI is ABOVE (Obese) prescribed range for patient.<br/>Procedure: BMI Above Normal Parameters; follow-up plan documented: G8417<br/>discussed plan to increase exercise, decease caloric intake and  decrease carbohydrates.<br/>Diagnosis: Body Mass Index 31.0-31.9, adult : ICD9 = V85.31 / ICD10 = Z68.31 / SNOMED = 162864005<br/><br/><br/>Review of Systems:<br/>Constitutional:  negative <br/>Cardiovascular:  negative <br/>Respiratory:  negative<br/><br/>
											<br/><br/>Reviewed past medical history, social history, and family history.<br/>Past Medical History: <br/>Hypertension<br/>Hyperlipidemia<br/><br/>Surgical / Procedural History: None<br/><br/>Social History: <br/>Referred by:  website<br/>Emergency Contact/Telephone#:Viola Drayton 843-327-9401<br/>Marital status:  single<br/>Children:  3 <br/>Lives with:  no one (lives alone)<br/>Occupation:  employed full-time <br/>Nutrition:  average diet <br/>Exercise:  walking<br/>Tobacco exposure:  No smokers in home. <br/>Clinical Elements: Alcohol:  socially drinks alcohol<br/>Illicit drugs:  no<br/>Seatbelt:  yes <br/>Smoking status is recorded today as: Never smoker<br/>Alcohol: socially drinks alcohol <br/><br/>Family History:  <br/>Mother:  deceased <br/>Father:  deceased <br/>Sibling(s):  4 brother(s) <br/>
											<br/>Objective:<br/>General: Obese African-American male,  no distress. <br/>Heart: RRR, no murmur.<br/>Lungs:  CTA bilaterally, no wheezes, rhonchi, rales.  <br/><br/>Venipuncture<br/>Procedure: COLLECTION VENOUS BLOOD VENIPUNCTURE : 36415<br/>Draw site left  : antecubital <br/>Number of vials drawn:  4<br/>Status of patient after draw:  Well tolerated.<br/><br/>Labwork ordered.<br/><br/>Assessment:<br/>Major Problem:  Hypertensive heart disease without heart failure: ICD10 = I11.9 / ICD9 = 402.90 / SNOMED = 60899001<br/>Major Problem:  Hyperlipidemia, unspecified: ICD10 = E78.5 / ICD9 = 272.4 / SNOMED = 55822004<br/>Major Problem:  Anemia, unspecified: ICD10 = D64.9 / ICD9 = 285.9 / SNOMED = 271737000<br/>Diagnosis: Folate deficiency anemia, unspecified : ICD10 = D52.9 / ICD9 = 281.2 / SNOMED = 85649008<br/><br/><br/>Plan:<br/>Hypertension stable, resume Benazepril 40mg and HCTZ 25mg as prescribed.<br/>Hyperlipidemia stable, resume Lipitor 20mg as prescribed.<br/>Normocytic anemia stable, labwork ordered.<br/><br/>Continue current medication(s)  Refill(s) provided.<br/><br/>Obesity / Weight Gain:<br/>Urged that patient be realistic in terms of weight reduction and stressed that modest degrees of weight loss can have important health benefits. Counseled against weight loss program unless patient is willing to make it a long-term effort, since weight loss and regain could be more deleterious than maintaining body weight and avoiding weight gain.  Stressed the importance that dietary intervention and exercise are both essential in the treatment of obesity.<br/>Problems Reviewed with Patient and Reconciled<br/>Allergies Reviewed with Patient and Reconciled<br/>.ARC: CKOKE<br/><br/>Follow-up:  F/U 1 month<br/><br/>Procedure: Office Visit Level 4 : 99214<br/>Evaluation and Management code calculated based on Time using 2021 guidelines. Total Time: 30<br/><br/>Rx: Lipitor 20 mg tablet, 90, Ref: 2, take 1 tablet (20 mg) by oral route once daily<br/>Rx: hydroCHLOROthiazide 25 mg tablet, 90, Ref: 2, take 1 tablet (25 mg) by oral route 1 time per day<br/>Rx: benazepriL 40 mg tablet, 90, Ref: 2, take 1 tablet (40 mg) by oral route once daily<br/><br/>#Orders: CBC, No Diff [Do in Routine days]<br/>#Orders: CMP [Do in Routine days]<br/>#Orders: FERRITIN [Do in Routine days]<br/>#Orders: FOLATE [Do in Routine days]<br/>#Orders: HGB A1C [Do in Routine days]<br/>#Orders: Iron, Serum [Do in Routine days]<br/>#Orders: Lipid Panel [Do in Routine days]<br/>#Orders: PSA, TOTAL [Do in Routine days]<br/>#Orders: T4 FREE [Do in Routine days]<br/>#Orders: TSH [Do in Routine days]<br/>#Orders: VITAMIN B12 [Do in Routine days]<br/>#Orders: VITAMIN D, 25 [Do in Routine days]<br/><br/><br/><br/>Procedure: Office Visit Level 1 : 99211<br/>Evaluation and Management code calculated based on Medical Decision Making using 2021 guidelines.Number and Complexity of Problems: N/AAmount and/or Compelxity of Data to be Reviewed: N/ARisk of Complications and/or Morbidity: N/A<br/>#        SIGNED BY Christopher Koke, DO  (CK2)       04/19/2023 10:06AM<br/>#       REVISED BY Christopher Koke, DO  (CK2)       07/27/2023 11:55AM</content>
									</td>
								</tr>
							</tbody>
						</table>
					</text>
					<entry>
						<act classCode="ACT" moodCode="INT">
							<templateId root="2.16.840.1.113883.10.20.22.4.20"/>
							<code code="409073007" codeSystem="2.16.840.1.113883.6.96" displayName="Instructions"/>
							<text>
								<reference value="#generalInstruction1"/>
							</text>
							<statusCode code="completed"/>
						</act>
					</entry>
					<entry>
						<act classCode="ACT" moodCode="INT">
							<templateId root="2.16.840.1.113883.10.20.22.4.20"/>
							<code code="409073007" codeSystem="2.16.840.1.113883.6.96" displayName="Instructions"/>69730-0^^2.16.840.1.113883.6.1
							<text>
								<reference value="#generalInstruction2"/>
							</text>
							<statusCode code="completed"/>
						</act>
					</entry>
					<entry>
						<act classCode="ACT" moodCode="INT">
							<templateId root="2.16.840.1.113883.10.20.22.4.20"/>
							<code code="409073007" codeSystem="2.16.840.1.113883.6.96" displayName="Instructions"/>
							<text>
								<reference value="#generalInstruction3"/>
							</text>
							<statusCode code="completed"/>
						</act>
					</entry>
				</section>
			</component>
			<!--******************************** Instructions (Patient Education Materials) ********************************-->
			<component>
				<section>
					<templateId root="2.16.840.1.113883.10.20.22.2.45"/>
					<code code="69730-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="INSTRUCTIONS"/>
					<title>Instructions</title>
					<text>No instructions included in this record.</text>
				</section>
			</component>
			<!--******************************** Encounters **********************************-->
			<component>
				<section>
					<templateId root="2.16.840.1.113883.10.20.22.2.22.1" extension="2015-08-01"/>
					<templateId root="2.16.840.1.113883.10.20.22.2.22.1"/>
					<code code="46240-8" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="History of encounters"/>
					<title>Encounters</title>
					<text>
						<table border="1" width="100%">
							<thead>
								<tr>
									<th>Location</th>
									<th>Date</th>
									<th>Encounter Diagnoses</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td ID="Encounter1">Liberty Doctors</td>
									<td>Tuesday, April 19, 2022</td>
									<td ID="encounterDiagnosisDescription1-1">Anemia, unspecified</td>
									<td ID="encounterDiagnosisDescription1-2">Body Mass Index 32.0-32.9, adult</td>
								</tr>
								<tr>
									<td ID="Encounter2">Liberty Doctors</td>
									<td>Tuesday, October 18, 2022</td>
									<td ID="encounterDiagnosisDescription2-1">Encounter for screening for COVID-19</td>
									<td ID="encounterDiagnosisDescription2-2">Acute upper respiratory infection, unspecified</td>
									<td ID="encounterDiagnosisDescription2-3">Body Mass Index 31.0-31.9, adult</td>
								</tr>
								<tr>
									<td ID="Encounter3">Liberty Doctors</td>
									<td>Tuesday, April 18, 2023</td>
									<td ID="encounterDiagnosisDescription3-1">Body Mass Index 31.0-31.9, adult</td>
									<td ID="encounterDiagnosisDescription3-2">Folate deficiency anemia, unspecified</td>
								</tr>
							</tbody>
						</table>
					</text>
					<entry typeCode="DRIV">
						<encounter classCode="ENC" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.49" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.49"/>
							<id root="2a620155-9d11-439e-92b3-5d9815ff4de8" extension="436688"/>
							<code codeSystemName="CPT-4" codeSystem="2.16.840.1.113883.6.12" code="99211" displayName="Office Visit">
								<originalText>
									<reference value="#Encounter1"/>
								</originalText>
							</code>
							<effectiveTime>
								<low value="20220419"/>
							</effectiveTime>
							<entryRelationship typeCode="SUBJ">
								<act classCode="ACT" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.80" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.80"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.19"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
									<code xsi:type="CE" code="29308-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="ENCOUNTER DIAGNOSIS"/>
									<effectiveTime>
										<low value="20220419"/>
									</effectiveTime>
									<entryRelationship typeCode="SUBJ" inversionInd="false">
										<observation classCode="OBS" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.4" extension="2015-08-01"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.4"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
											<code code="55607006" displayName="Problem" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
												<translation code="75326-9" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Problem"/>
											</code>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20220419"/>
											</effectiveTime>
											<value xsi:type="CD" code="271737000" displayName="Anemia" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
												<originalText>
													<reference value="#encounterDiagnosisDescription1-1"/>
												</originalText>
												<translation code="285.9" displayName="Anemia, unspecified" codeSystem="2.16.840.1.113883.6.104" codeSystemName="ICD-9-CD"/>
												<translation code="D64.9" displayName="Anemia, unspecified" codeSystem="2.16.840.1.113883.6.3" codeSystemName="ICD10CM"/>
											</value>
										</observation>
									</entryRelationship>
									<entryRelationship typeCode="SUBJ" inversionInd="false">
										<observation classCode="OBS" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.4" extension="2015-08-01"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.4"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
											<code codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" code="282291009" displayName="Diagnosis">
												<translation code="29308-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Diagnosis"/>
											</code>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20220419"/>
											</effectiveTime>
											<value xsi:type="CD" code="162864005" displayName="Body mass index 30+ - obesity" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
												<originalText>
													<reference value="#encounterDiagnosisDescription1-2"/>
												</originalText>
												<translation code="V85.32" displayName="Body Mass Index 32.0-32.9, adult" codeSystem="2.16.840.1.113883.6.104" codeSystemName="ICD-9-CD"/>
												<translation code="Z68.32" displayName="Body mass index [BMI] 32.0-32.9, adult" codeSystem="2.16.840.1.113883.6.3" codeSystemName="ICD10CM"/>
											</value>
										</observation>
									</entryRelationship>
								</act>
							</entryRelationship>
						</encounter>
					</entry>
					<entry typeCode="DRIV">
						<encounter classCode="ENC" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.49" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.49"/>
							<id root="2a620155-9d11-439e-92b3-5d9815ff4de8" extension="511249"/>
							<code codeSystemName="CPT-4" codeSystem="2.16.840.1.113883.6.12" code="99211" displayName="Office Visit">
								<originalText>
									<reference value="#Encounter2"/>
								</originalText>
							</code>
							<effectiveTime>
								<low value="20221018"/>
							</effectiveTime>
							<entryRelationship typeCode="SUBJ">
								<act classCode="ACT" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.80" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.80"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.19"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
									<code xsi:type="CE" code="29308-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="ENCOUNTER DIAGNOSIS"/>
									<effectiveTime>
										<low value="20221018"/>
									</effectiveTime>
									<entryRelationship typeCode="SUBJ" inversionInd="false">
										<observation classCode="OBS" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.4" extension="2015-08-01"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.4"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
											<code code="55607006" displayName="Problem" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
												<translation code="75326-9" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Problem"/>
											</code>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20221018"/>
											</effectiveTime>
											<value xsi:type="CD" code="243791004" displayName="Viral screening" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
												<originalText>
													<reference value="#encounterDiagnosisDescription2-1"/>
												</originalText>
												<translation code="Z11.52" displayName="Encounter for screening for COVID-19" codeSystem="2.16.840.1.113883.6.3" codeSystemName="ICD10CM"/>
											</value>
										</observation>
									</entryRelationship>
									<entryRelationship typeCode="SUBJ" inversionInd="false">
										<observation classCode="OBS" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.4" extension="2015-08-01"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.4"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
											<code code="55607006" displayName="Problem" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
												<translation code="75326-9" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Problem"/>
											</code>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20221018"/>
											</effectiveTime>
											<value xsi:type="CD" code="54150009" displayName="Upper respiratory infection" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
												<originalText>
													<reference value="#encounterDiagnosisDescription2-2"/>
												</originalText>
												<translation code="465.9" displayName="Acute upper respiratory infections of unspecified site" codeSystem="2.16.840.1.113883.6.104" codeSystemName="ICD-9-CD"/>
												<translation code="J06.9" displayName="Acute upper respiratory infection, unspecified" codeSystem="2.16.840.1.113883.6.3" codeSystemName="ICD10CM"/>
											</value>
										</observation>
									</entryRelationship>
									<entryRelationship typeCode="SUBJ" inversionInd="false">
										<observation classCode="OBS" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.4" extension="2015-08-01"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.4"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
											<code codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" code="282291009" displayName="Diagnosis">
												<translation code="29308-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Diagnosis"/>
											</code>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20221018"/>
											</effectiveTime>
											<value xsi:type="CD" code="162864005" displayName="Body mass index 30+ - obesity" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
												<originalText>
													<reference value="#encounterDiagnosisDescription2-3"/>
												</originalText>
												<translation code="V85.31" displayName="Body Mass Index 31.0-31.9, adult" codeSystem="2.16.840.1.113883.6.104" codeSystemName="ICD-9-CD"/>
												<translation code="Z68.31" displayName="Body mass index [BMI] 31.0-31.9, adult" codeSystem="2.16.840.1.113883.6.3" codeSystemName="ICD10CM"/>
											</value>
										</observation>
									</entryRelationship>
								</act>
							</entryRelationship>
						</encounter>
					</entry>
					<entry typeCode="DRIV">
						<encounter classCode="ENC" moodCode="EVN">
							<templateId root="2.16.840.1.113883.10.20.22.4.49" extension="2015-08-01"/>
							<templateId root="2.16.840.1.113883.10.20.22.4.49"/>
							<id root="2a620155-9d11-439e-92b3-5d9815ff4de8" extension="587934"/>
							<code codeSystemName="CPT-4" codeSystem="2.16.840.1.113883.6.12" code="99211" displayName="Office Visit">
								<originalText>
									<reference value="#Encounter3"/>
								</originalText>
							</code>
							<effectiveTime>
								<low value="20230418"/>
							</effectiveTime>
							<entryRelationship typeCode="SUBJ">
								<act classCode="ACT" moodCode="EVN">
									<templateId root="2.16.840.1.113883.10.20.22.4.80" extension="2015-08-01"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.80"/>
									<templateId root="2.16.840.1.113883.10.20.22.4.19"/>
									<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
									<code xsi:type="CE" code="29308-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="ENCOUNTER DIAGNOSIS"/>
									<effectiveTime>
										<low value="20230418"/>
									</effectiveTime>
									<entryRelationship typeCode="SUBJ" inversionInd="false">
										<observation classCode="OBS" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.4" extension="2015-08-01"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.4"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
											<code codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" code="282291009" displayName="Diagnosis">
												<translation code="29308-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Diagnosis"/>
											</code>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418"/>
											</effectiveTime>
											<value xsi:type="CD" code="162864005" displayName="Body mass index 30+ - obesity" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
												<originalText>
													<reference value="#encounterDiagnosisDescription3-1"/>
												</originalText>
												<translation code="V85.31" displayName="Body Mass Index 31.0-31.9, adult" codeSystem="2.16.840.1.113883.6.104" codeSystemName="ICD-9-CD"/>
												<translation code="Z68.31" displayName="Body mass index [BMI] 31.0-31.9, adult" codeSystem="2.16.840.1.113883.6.3" codeSystemName="ICD10CM"/>
											</value>
										</observation>
									</entryRelationship>
									<entryRelationship typeCode="SUBJ" inversionInd="false">
										<observation classCode="OBS" moodCode="EVN">
											<templateId root="2.16.840.1.113883.10.20.22.4.4" extension="2015-08-01"/>
											<templateId root="2.16.840.1.113883.10.20.22.4.4"/>
											<id root="1.3.6.1.4.1.21367.2008.1.2.164.2.99999999.100" extension="99999999"/>
											<code codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" code="282291009" displayName="Diagnosis">
												<translation code="29308-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Diagnosis"/>
											</code>
											<statusCode code="completed"/>
											<effectiveTime>
												<low value="20230418"/>
											</effectiveTime>
											<value xsi:type="CD" code="85649008" displayName="Megaloblastic anemia due to folate deficiency" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
												<originalText>
													<reference value="#encounterDiagnosisDescription3-2"/>
												</originalText>
												<translation code="281.2" displayName="Folate-deficiency anemia" codeSystem="2.16.840.1.113883.6.104" codeSystemName="ICD-9-CD"/>
												<translation code="D52.9" displayName="Folate deficiency anemia, unspecified" codeSystem="2.16.840.1.113883.6.3" codeSystemName="ICD10CM"/>
											</value>
										</observation>
									</entryRelationship>
								</act>
							</entryRelationship>
						</encounter>
					</entry>
				</section>
			</component>
		</structuredBody>
	</component>
</ClinicalDocument>
}

}
