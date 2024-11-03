<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <expediciones>
      <xsl:for-each select="//rutas/expedicion">
        <xsl:sort select="nombre"/>
        <expedicion>
          <xsl:attribute name="codigo">
            <xsl:value-of select="@codigo"/>
          </xsl:attribute>
          <nombre>
            <xsl:value-of select="nombre"/>
          </nombre>
          <escaladores>
            <xsl:for-each select="escaladores/escalador[@sherpa='no']">
              <xsl:sort select="text()"/>
              <escalador>
                <xsl:value-of select="text()"/>
              </escalador>
            </xsl:for-each>
          </escaladores>
          <sherpas>
            <xsl:for-each select="escaladores/escalador[@sherpa='si']">
              <xsl:sort select="text()"/>
              <sherpa>
                <xsl:value-of select="text()"/>
              </sherpa>
            </xsl:for-each>
          </sherpas>
        </expedicion>
      </xsl:for-each>
    </expediciones>
  </xsl:template>
</xsl:stylesheet>
