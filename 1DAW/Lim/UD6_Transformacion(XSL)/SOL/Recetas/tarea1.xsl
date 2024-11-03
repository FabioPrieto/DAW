<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
			<head>
				<title>Recetas</title>
			</head>
			<body>
				<h1>Recetas</h1>
				<xsl:for-each select="//receta">
					<p><xsl:value-of select="titulo"></xsl:value-of></p>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
