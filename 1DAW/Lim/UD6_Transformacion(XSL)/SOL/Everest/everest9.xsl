<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
	  <html>
			<head>
				<title>Empresas</title>
				<style>
				  li{list-style-type: square;}
				  .especial{color: red; text-decoration: underline;}
				</style>
			</head>
			<body>
				<h1>Empresas</h1>
				<xsl:for-each select="//empresas/empresa">
				  <xsl:sort select="datos_empresa/nombre"/>
					<h2><xsl:value-of select="datos_empresa/nombre"/></h2>
					<h3>Expediciones</h3>
					<xsl:for-each select="rutas/expedicion">
            <p><span class="especial">Nombre</span>: <xsl:value-of select="concat(@codigo, ' - ', nombre)"/> </p>
            <p><b>Idiomas:</b> <xsl:value-of select="count(idiomas/idioma)"/></p>
            <ul>
              <xsl:for-each select="idiomas/idioma">
                <xsl:sort select="text()"/>
                <li><xsl:value-of select="text()"/></li>
              </xsl:for-each>
            </ul>
          </xsl:for-each>
					<br/>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
