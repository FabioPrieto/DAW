<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output
    method="text"
	encoding="utf8"
    omit-xml-declaration="yes"/>
  <xsl:template match="/">
    <xsl:text>Titulo;Presupuesto;Estreno</xsl:text>
    <xsl:text>&#xA;</xsl:text>
    <xsl:for-each select="//pelicula">
      <xsl:text>"</xsl:text>
      <xsl:value-of select="titulo"/>
      <xsl:text>";</xsl:text>
      <xsl:value-of select="presupuesto"/>
      <xsl:text>;"</xsl:text>
      <xsl:value-of select="estreno"/>
      <xsl:text>"</xsl:text>
      <xsl:text>&#xA;</xsl:text>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
