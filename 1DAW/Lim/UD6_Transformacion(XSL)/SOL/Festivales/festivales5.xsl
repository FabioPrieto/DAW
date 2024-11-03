<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"> 
  <xsl:template match="/">
    <peliculas>
      <bajo_presupuesto>
        <xsl:for-each select="//pelicula[presupuesto &lt; 3500]">
          <xsl:element name="pelicula">
            <xsl:attribute name="titulo">
              <xsl:value-of select="titulo"/>
            </xsl:attribute>
          </xsl:element>
        </xsl:for-each>
      </bajo_presupuesto>
      <alto_presupuesto>
        <xsl:for-each select="//pelicula[presupuesto &gt;= 3500]">
          <xsl:element name="pelicula">
            <xsl:attribute name="titulo">
              <xsl:value-of select="titulo"/>
            </xsl:attribute>
          </xsl:element>
        </xsl:for-each>
      </alto_presupuesto>
    </peliculas>
  </xsl:template>
</xsl:stylesheet>
