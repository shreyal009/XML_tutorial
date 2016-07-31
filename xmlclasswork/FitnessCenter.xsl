<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<HTML>
<HEAD>
<TITLE>Welcome</TITLE>
</HEAD>
<BODY bgcolor="{/FitnessCenter/Member[position()=2]/FavoriteColor}">
Welcome <xsl:value-of select="/FitnessCenter/Member[position()=2]/Name"/>
<BR/>
Your home phone number is:
<xsl:value-of select="/FitnessCenter/Member[position()=2]/Phone[@type='home']"/>
<BR/>
Your work phone number is:
<xsl:value-of select="/FitnessCenter/Member[position()=2]/Phone[@type='work']"/>
</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>
