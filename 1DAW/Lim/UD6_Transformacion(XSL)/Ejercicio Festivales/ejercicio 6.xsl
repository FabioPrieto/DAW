<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <peliculas>
      <xsl:for-each select="//pelicula">
        <xsl:sort select="estreno"/>
          <pelicula>
            <xsl:attribute name="presupuesto">
              <xsl:value-of select="presupuesto"/>
            </xsl:attribute>
            <xsl:value-of select="titulo"></xsl:value-of>
          </pelicula>
      </xsl:for-each>
    </peliculas>
  </xsl:template>
</xsl:stylesheet>
