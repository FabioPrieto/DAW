<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <sherpas>
      <xsl:for-each select="//empresa[datos_empresa/nombre='Mundoexplora']//escalador[@sherpa='si']">
        <xsl:sort select="text()"/>
        <xsl:element name="sherpa">
          <xsl:value-of select="text()"/>
        </xsl:element>
      </xsl:for-each>
    </sherpas>
  </xsl:template>
</xsl:stylesheet>
