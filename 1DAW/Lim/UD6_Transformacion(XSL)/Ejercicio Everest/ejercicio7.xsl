<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <expediciones>
      <xsl:for-each select="//rutas/expedicion">
      <xsl:sort select="precio/importe" order="descending"/>
        <expedicion>
          <xsl:attribute name="duracion">
            <xsl:value-of select="duracion/text()"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="duracion/@medida"/>
          </xsl:attribute>
          <nombre>
            <xsl:value-of select="nombre"/>
          </nombre>
          <importe>
            <xsl:value-of select="precio/importe"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="precio/@unidad"/>
          </importe>
        </expedicion>
      </xsl:for-each>
    </expediciones>
  </xsl:template>
</xsl:stylesheet>
