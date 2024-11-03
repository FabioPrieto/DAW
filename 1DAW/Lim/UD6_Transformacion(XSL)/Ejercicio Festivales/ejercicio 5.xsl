<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <peliculas>
      <bajo_presupuesto>
        <xsl:for-each select="//pelicula">
          <xsl:if test="presupuesto &lt; 3500">
            <pelicula>
              <xsl:attribute name="titulo">
                <xsl:value-of select="titulo"/>
              </xsl:attribute>
            </pelicula>
          </xsl:if>
        </xsl:for-each>
      </bajo_presupuesto>
      <alto_presupuesto>
        <xsl:for-each select="//pelicula">
          <xsl:if test="presupuesto &gt;= 3500">
            <pelicula>
              <xsl:attribute name="titulo">
                <xsl:value-of select="titulo"/>
              </xsl:attribute>
            </pelicula>
          </xsl:if>
        </xsl:for-each>
      </alto_presupuesto>
    </peliculas>
  </xsl:template>
</xsl:stylesheet>
