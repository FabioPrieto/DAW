<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <expediciones>
      <xsl:for-each select="//rutas/expedicion">
        <xsl:sort select="nombre"/>
        <xsl:element name="expedicion">
          <xsl:attribute name="codigo">
            <xsl:value-of select="@codigo"/>
          </xsl:attribute>
          <xsl:element name="nombre">
            <xsl:value-of select="nombre"/>
          </xsl:element>
          <xsl:element name="escaladores">
            <xsl:for-each select="escaladores/escalador[@sherpa='no']">
              <xsl:sort select="text()"/>
              <xsl:element name="escalador">
                <xsl:value-of select="text()"/>
              </xsl:element>
            </xsl:for-each>
          </xsl:element>
          <xsl:element name="sherpas">
            <xsl:for-each select="escaladores/escalador[@sherpa='si']">
              <xsl:sort select="text()"/>
              <xsl:element name="sherpa">
                <xsl:value-of select="text()"/>
              </xsl:element>
            </xsl:for-each>
          </xsl:element>
        </xsl:element>
      </xsl:for-each>
    </expediciones>
  </xsl:template>
</xsl:stylesheet>
