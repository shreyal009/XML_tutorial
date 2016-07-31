<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<HTML>
<HEAD>
<TITLE>Welcome</TITLE>
</HEAD>
<BODY>
 <xsl:for-each select="/FitnessCenter/Member">
<xsl:sort select="Name" order="ascending"/>
<xsl:value-of select="Name"/>
<BR/>
</xsl:for-each>
</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>
