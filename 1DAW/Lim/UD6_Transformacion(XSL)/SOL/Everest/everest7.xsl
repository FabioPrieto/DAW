<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <expediciones>
      <xsl:for-each select="//rutas/expedicion">
        <xsl:sort select="precio/importe" order="descending"/>
        <xsl:element name="expedicion">
          <xsl:attribute name="duracion">
            <xsl:value-of select="concat(duracion,' ',duracion/@medida)"/>
          </xsl:attribute>
          <xsl:element name="nombre">
            <xsl:value-of select="nombre"/>
          </xsl:element>
          <xsl:element name="importe">
            <xsl:value-of select="concat(precio/importe, ' ', precio/@unidad)"/>
          </xsl:element>
        </xsl:element>
      </xsl:for-each>
    </expediciones>
  </xsl:template>
</xsl:stylesheet>
