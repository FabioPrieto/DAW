<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <clientes>
      <xsl:for-each select="//clientes/cliente">
        <xsl:element name="cliente">
          <xsl:element name="nombre">
            <xsl:value-of select="nombre"/>
          </xsl:element>
          <xsl:element name="identificacion">
            <xsl:element name="tipo">
              <xsl:value-of select="@identificacion"/>
            </xsl:element>
            <xsl:element name="numero">
              <xsl:value-of select="@numero"/>
            </xsl:element>
          </xsl:element>
        </xsl:element>
      </xsl:for-each>
    </clientes>
  </xsl:template>
</xsl:stylesheet>
