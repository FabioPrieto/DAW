<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <expediciones>
    <xsl:for-each select="//rutas/expedicion">
    <expedicion>
      <xsl:attribute name="empresa">
        <xsl:value-of select="../../datos_empresa/@codigo"/>
      </xsl:attribute>
      <xsl:value-of select="nombre"/>
    </expedicion>
    </xsl:for-each>
  </expediciones>
  </xsl:template>
</xsl:stylesheet>
