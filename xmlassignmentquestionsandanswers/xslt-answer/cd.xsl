<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="CDcollection">
    <html>
    <head>
      <link rel="stylesheet" href="cd-xsl.css" type="text/css" />
      <title>CD Collection</title>
    </head>
    <body>
        <h1>CD Collection</h1>
        <ul>
          <xsl:apply-templates/>
        </ul>
    </body>
    </html>
  </xsl:template>

  <xsl:template match="CD">
    <li>
      <xsl:value-of select="publisher"/>
      [<xsl:value-of select="number"/>]
      <ul>
      <xsl:for-each select="performance">
        <li>
        <xsl:apply-templates select="composer"/>
        <xsl:apply-templates select="../composer"/>
        <span style="color: blue"><xsl:value-of select="composition"/></span>,
        <xsl:apply-templates select="soloist"/>
        <xsl:apply-templates select="../soloist"/>
        <xsl:apply-templates select="orchestra"/>
        <xsl:apply-templates select="../orchestra"/>
        <xsl:apply-templates select="conductor"/>
        <xsl:apply-templates select="../conductor"/>
        <xsl:apply-templates select="date"/>
        <xsl:apply-templates select="../date"/>
        </li>
      </xsl:for-each>
      </ul>
    </li>
  </xsl:template>

  <xsl:template match="composer">
    <b><xsl:value-of select="."/></b>,
  </xsl:template>

  <xsl:template match="soloist">
    <i><xsl:value-of select="."/></i>,
  </xsl:template>

  <xsl:template match="orchestra">
    <span style="color: red"><xsl:value-of select="."/></span>,
  </xsl:template>

  <xsl:template match="conductor">
    <span style="color: red; font-style: italic"><xsl:value-of select="."/></span>
  </xsl:template>

  <xsl:template match="date">
    (<xsl:value-of select="."/>)
  </xsl:template>

</xsl:stylesheet>
