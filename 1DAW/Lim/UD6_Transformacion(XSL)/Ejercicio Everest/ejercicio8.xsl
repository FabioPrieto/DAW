<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <clientes>
    <xsl:for-each select="//clientes/cliente">
    <cliente>
      <nombre>
        <xsl:value-of select="nombre"/>
      </nombre>
      <identificacion>
        <tipo>
          <xsl:value-of select="@identificacion"/>
        </tipo>
        <numero>
          <xsl:value-of select="@numero"/>
        </numero>
      </identificacion>
    </cliente>
    </xsl:for-each>
  </clientes>
  </xsl:template>
</xsl:stylesheet>
