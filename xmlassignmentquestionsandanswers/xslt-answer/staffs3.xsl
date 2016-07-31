<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html><body>
<table border="1">
<tr bgcolor="lightgray">
<td colspan="4"><center>Employee List of 2012,ABC Enterprises </center></td>
</tr>
<xsl:for-each select="Staffs/EMPLOYEE">
<tr bgcolor="Black" >
<td colspan="4" style="color:white">Staff No : <xsl:value-of select="ID"/></td>
</tr>
<tr>
<td>Staff Name: <xsl:value-of select="NAME"/></td>
<td>Salary:<xsl:value-of select="SALARY"/></td>
<td>Gender:<xsl:value-of select="GENDER"/></td>
<xsl:choose>
<xsl:when test="SALARY &gt; 3000">
<td>Grade:CEO</td>
</xsl:when>
<xsl:when test="SALARY &gt; 2600">
<td>Grade:Senior Manager</td>
</xsl:when>
<xsl:when test="SALARY &gt; 2000">
<td>Grade:Manager</td>
</xsl:when>
<xsl:otherwise>
<td>Grade:Worker</td>
</xsl:otherwise>
</xsl:choose>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
