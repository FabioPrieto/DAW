<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"> 
  <xsl:template match="/">
    <galardones>
      <xsl:for-each select="//festival[@codigo=2]//premiado">
        <xsl:element name="galardon">
          <xsl:value-of select="galardon"/>
        </xsl:element>
      </xsl:for-each>
    </galardones>
  </xsl:template>
</xsl:stylesheet>
