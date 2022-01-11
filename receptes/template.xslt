<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
  <table border="2">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Nom</th>
      <th style="text-align:left">Duració</th>
      <th style="text-align:left">Ingredients</th>
      <th style="text-align:left">Resum</th>
    </tr>
    <xsl:for-each select="catalog/cd">
    <tr>
      <td style="text-align:center"><xsl:value-of select="title"/></td>
      <td style="text-align:center"><xsl:value-of select="time"/></td>
      <td style="text-align:center"><xsl:value-of select="ingredient"/></td>
      <td style="text-align:center"><xsl:value-of select="resum"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>