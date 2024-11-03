<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <sherpas>
      <xsl:for-each select="//empresa/datos_empresa[nombre='Mundoexplora']/../rutas/expedicion/escaladores/escalador[@sherpa='si']">
      <xsl:sort select="text()"/>
      <sherpa><xsl:value-of select="text()"/></sherpa>
      </xsl:for-each>
    </sherpas>
  </xsl:template>
</xsl:stylesheet>
