<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
	<meta charset="utf-8" />
	<link rel="stylesheet" href="../css/xml.css" />
	<title>Llista Receptes</title>
</head>
<body>
  <header>
  <h1>
			<a href="../index.html">
				Delicias Kitchen
			</a>
	</h1>
  </header>
  <nav>
    <a href="../index.html">Inicio</a>
		<a href="#info">Sobre mí</a>
		<a href="./llistareceptes.html">Recetas</a>
		<a href="../contacte/contactform.html">Contacto</a>
		<a href="./llistareceptes.xml">XML</a>
  </nav>
  <table border="0">
    <tr class="exemples">
      <th style="text-align:left">Nom</th>
      <th style="text-align:left">Duració</th>
      <th style="text-align:left">Ingredients</th>
      <th style="text-align:left">Resum</th>
    </tr>
    <xsl:for-each select="catalog/cd">
    <tr class="elements">
      <td class="titols"><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="time"/></td>
      <td><xsl:value-of select="ingredient"/></td>
      <td><xsl:value-of select="resum"/></td>
    </tr>
    </xsl:for-each>
  </table>
  <footer>
  <a href="https://facebook.com" target="blank">Facebook</a>
		<a href="https://twitter.com" target="blank">Twitter</a>
		<a href="https://instagram.com" target="blank">Instagram</a>
		<a href="https://pinterest.com" target="blank">Pinterest</a>
		<a href="mailto:pol.egea.7e5@itb.cat" target="blank">Email</a>
		<a href="">RSS</a>
  </footer>
</body>
</html>
</xsl:template>
</xsl:stylesheet>