<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" encoding="UTF-8" indent="yes"/>

<xsl:template match="/">
<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE vxml SYSTEM "http://www.w3.org/TR/voicexml120/vxml.dtd"&gt;</xsl:text>

<vxml version = "2.0" xmlns='http://www.w3.org/2001/vxml'
 xmlns:xsi='http:www.w3.org/2001/XMLSchema-instance'
 xsi:schemaLocation='http://www.w3.org/2001/vxm
  http://www.w3.org/TR/voicexml120/vxml.xsd'>
 <form id="getRequest">
  <field name="country">
   <prompt>
    <break/>
    Hello! My name is rush! <break/> This is my XML project, depends on the previous result of XQuery, now I get 5 target countries <break/> Please choose one country then I will give back the information about its government, overall gdp, inflation and its land area per capita.
    <break/>
    <enumerate>
     For <value expr="_prompt"/> 
     press
     <value expr="_dtmf"/> <break></break>
    </enumerate>
   </prompt>


   <option dtmf="1" value="1">Brazil</option>
   <option dtmf="2" value="2">Mexico</option>
   <option dtmf="3" value="3">Pakistan</option>
   <option dtmf="4" value="4">India</option>
   <option dtmf="5" value="5">Korea</option>

   <noinput>Sorry I did not hear any input or receive any d t m f from your phone.</noinput>

   <nomatch>Sorry, I did not understand that country you choiced, please try again.</nomatch>
   

  </field>
  
  <block>
   <prompt>
    Good job! Your have picked the <value expr="country"/>.
   </prompt>
   <submit next="http://lyle.smu.edu/~ruixuanz/cse7347/rush/project/control.php" namelist="country"/>
  </block>
 </form>
</vxml>
</xsl:template>
</xsl:stylesheet>