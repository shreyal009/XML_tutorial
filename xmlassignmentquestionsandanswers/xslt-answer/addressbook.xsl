<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
	<html>
	<body>
	<h3>Summary</h3>
	<!-- //name  means "any <name> element under the root / element" -->
<p>There are <xsl:value-of select="count(//name)"/> names</p>
<!--//* means any element -->
<p>There are <xsl:value-of select="count(//*)"/> elements</p>

	<p><i>Start of document</i></p>
	<xsl:apply-templates/>
	<p><i>End of document</i></p>
	</body>
	</html>
</xsl:template>
<xsl:template match="addressBook">
	<h1>Address Book</h1>
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="entry">
	<hr/>
	<h2>Entry <xsl:value-of select="@id"/></h2>
		<xsl:apply-templates/>
</xsl:template>
<xsl:template match="name">
	<p>Name: 
	<xsl:apply-templates/>
	</p>
</xsl:template>
<xsl:template match="address">
	<p>Address:
	<xsl:apply-templates/>
	</p>
</xsl:template>
<xsl:template match="email">
	<p>E-mail:
			<xsl:apply-templates/>
	</p>
</xsl:template>
<xsl:template match="workphone">
	<p>Phone:
	<xsl:apply-templates/>
	</p>
</xsl:template>
</xsl:stylesheet>