<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <peliculas>
      <xsl:for-each select="//pelicula">
        <xsl:sort select="titulo"></xsl:sort>
        <pelicula>
          <titulo>
            <xsl:value-of select="titulo"></xsl:value-of>
          </titulo>
          <categoria>
            <xsl:value-of select="@categoria"></xsl:value-of>
          </categoria>
        </pelicula>
      </xsl:for-each>
    </peliculas>
  </xsl:template>
</xsl:stylesheet>
