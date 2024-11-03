<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
	  <html>
			<head>
				<title>Everest</title>
			</head>
			<body>
				<h1>Rutas</h1>
				<xsl:for-each select="//rutas/expedicion">
					<xsl:sort select="nombre"/>
					<h2><xsl:value-of select="nombre"/></h2>
					<ul>
					  <li><b>EMPRESA: </b><xsl:value-of select="../../datos_empresa/nombre"/></li>
					  <li><b>INICIO: </b><xsl:value-of select="inicio"/></li>
					  <li><b>PRECIO: </b><xsl:value-of select="concat(precio/importe, ' ', precio/@unidad)"/></li>
					</ul>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
