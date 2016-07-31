<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html><body>
<table border="1">
<tr bgcolor="lightgray">
<td colspan="3"><center>Employee List of 2012,ABC Enterprises </center></td>
</tr>
<tr>
<td colspan="3"><center>Total Element Present in the document are <xsl:value-of select="count(//*)"/> </center></td>
</tr>
<xsl:for-each select="Staffs/EMPLOYEE">
<xsl:sort select="SALARY" order="ascending"/>
<tr bgcolor="Black" >
<td colspan="3" style="color:white">Staff No : <xsl:value-of select="ID"/></td>
</tr>
<tr>
<xsl:if test="position() mod 2 = 0">
<xsl:attribute name="bgcolor">yellow</xsl:attribute>
</xsl:if> 
<td>Staff Name: <xsl:value-of select="NAME"/></td>
<td>Salary:<xsl:value-of select="SALARY"/></td>
<td>Gender:<xsl:value-of select="GENDER"/></td>
</tr>
</xsl:for-each>
<tr>
<td>Total</td>
<td><xsl:value-of select="sum(//SALARY)"/></td>
<td>Staff Count:<xsl:value-of select="count(//NAME)"/></td>
</tr> 
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
