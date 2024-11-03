<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
    <head>
      <title>Incidentes</title>
    </head>
    <body>
      <h1>Incidentes</h1>
      <xsl:for-each select="//incidente">
      <xsl:sort select="fecha" order="descending"/>
      <xsl:variable name="empresa" select="../@empresa"/>
      <xsl:variable name="cliente" select="../cliente"/>
      <p><b><i>Fecha: </i></b><xsl:value-of select="fecha"/></p>
      <p><b><i>Empresa: </i></b><xsl:value-of select="//empresa/datos_empresa[@codigo=$empresa]/nombre"/></p>
      <p><b><i>Cliente: </i></b><xsl:value-of select="//cliente[@numero=$cliente]/nombre"/></p>
      <p><b><i>Detalles: </i></b><xsl:value-of select="detalles"/></p>
      <br/>
      </xsl:for-each>
    </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
