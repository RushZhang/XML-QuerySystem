<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" encoding="UTF-8" indent="yes"/>

<xsl:param name="style">Pakistan</xsl:param>
<xsl:template match="/">
<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE vxml SYSTEM "http://www.w3.org/TR/voicexml120/vxml.dtd"&gt;</xsl:text>

<vxml version = "2.0" xmlns='http://www.w3.org/2001/vxml'
 xmlns:xsi='http:www.w3.org/2001/XMLSchema-instance'
 xsi:schemaLocation='http://www.w3.org/2001/vxm
  http://www.w3.org/TR/voicexml120/vxml.xsd'>

  <form><block> <prompt>
  <xsl:apply-templates select="/myData/country/name[text()='Pakistan']"/>
  </prompt></block></form>

</vxml>
</xsl:template>

  <xsl:template match="/myData/country/name[text()='Pakistan']">
  Oh yeah! I found the information about <xsl:value-of select="."/>. Let's take a look!  <break></break> 
  <xsl:value-of select="../name"/> <break></break> 
  The inflation of this country is <xsl:value-of select="../inflation"/> percentage<break></break> 
  The government of this country is <xsl:value-of select="../government"/><break></break>
  The overall gdp of this country is <xsl:value-of select="../gdp"/>million dollars<break></break>
  The land area per capita of <xsl:value-of select="."/> is <xsl:value-of select="../lapc"/>square meters<break></break>
  Thank you for your phone call, Have a nice day!
  </xsl:template>

</xsl:stylesheet>