<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <premiados>
      <xsl:for-each select="//premiado">
        <premiado>
          <xsl:attribute name="premio">
            <xsl:value-of select="importe"></xsl:value-of>
          </xsl:attribute>
          <xsl:value-of select="nombre"></xsl:value-of>
        </premiado>
      </xsl:for-each>
    </premiados>
  </xsl:template>
</xsl:stylesheet>
