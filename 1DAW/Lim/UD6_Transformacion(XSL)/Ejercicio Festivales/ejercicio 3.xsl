<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <galardones>
      <xsl:for-each select="//festival[@codigo=2]//premiado">
        <galardon>
          <xsl:value-of select="galardon"></xsl:value-of>
        </galardon>
      </xsl:for-each>
    </galardones>
  </xsl:template>
</xsl:stylesheet>
