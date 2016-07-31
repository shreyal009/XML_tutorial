<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<body style="font-family:Arial;font-size:12pt;background-color:#EEEEEE">
 <table border="1"><tr><th>ROW NUMBER</th><th>EMPLOYEE NO</th><th>EMPLOYEE NAME</th></tr>
<xsl:for-each select="ROWSET/ROW">
   
   <tr><td>	<xsl:value-of select="ROWNUM"/></td>	<td><xsl:value-of select="EMPNO"/></td>
	       <td>	<xsl:value-of select="ENAME"/></td></tr>
              
</xsl:for-each>
  </table>
</body>
</html>
