	<xsl:template match="/hl7:ClinicalDocument/hl7:component/hl7:structuredBody/hl7:component/hl7:section[hl7:templateId/@root='2.16.840.1.113883.10.20.22.2.1.1']/hl7:entry/hl7:substanceAdministration/hl7:id">
			<!-- Add attribute assigningAuthorityName with -PlacerId -->
			
			<xsl:copy>
            	<xsl:attribute name="assigningAuthorityName">-PlacerId</xsl:attribute>
				<xsl:apply-templates select="@*"/>
			</xsl:copy>
	</xsl:template>
	
