<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html><body>
<table border="1">
<tr bgcolor="lightgray">
<td colspan="3"><center>Employee List of 2012,ABC Enterprises </center></td>
</tr>
<xsl:for-each select="Staffs/EMPLOYEE">
<xsl:if test="GENDER='MALE'">
<tr bgcolor="Black">
<td colspan="3" style="color:white">Staff No : <xsl:value-of select="ID"/></td>
</tr>
<tr>
<td>Staff Name: <xsl:value-of select="NAME"/></td>
<td>Salary:<xsl:value-of select="SALARY"/></td>
<td>Gender:<xsl:value-of select="GENDER"/></td>
</tr>
</xsl:if>
</xsl:for-each>
<!-- <xsl:variable name="numberOfCats" select="count(DATA/ANIMAL[CATEGORY='Cat'])" /> -->
<tr>
<td colspan="1">Staff Count:<xsl:value-of select="count(Staffs/EMPLOYEE[GENDER='MALE'])"/></td>
<td colspan="2">Total Salary:<xsl:value-of select="sum(Staffs/EMPLOYEE[GENDER='MALE']/SALARY)"/></td>
</tr>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
