<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
			<head>
				<title>Ingredientes</title>
			</head>
			<body>
				<h1>Ingredientes</h1>
				<xsl:for-each select="//receta">
				  <p>
				    <xsl:value-of select="titulo"/>: <xsl:value-of select="count(ingredientes/ingrediente)"/>
				  </p>
				</xsl:for-each>
				<xsl:variable name="total_recetas" select="count(//receta)"/>
				<xsl:variable name="total_ingredientes" select="count(//ingrediente)"/>
				<xsl:variable name="media" select="$total_ingredientes div $total_recetas"/>
				<p>Media de ingredientes por receta: <xsl:value-of select="$media"/></p>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
