<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"> 
  <xsl:template match="/">
    <peliculas>
      <xsl:for-each select="//pelicula">
        <xsl:sort select="titulo"></xsl:sort>
        <xsl:element name="pelicula">
          <xsl:element name="titulo">
            <xsl:value-of select="titulo"/>
          </xsl:element>
          <xsl:element name="categoria">
            <xsl:value-of select="@categoria"/>
          </xsl:element>
        </xsl:element>
      </xsl:for-each>
    </peliculas>
  </xsl:template>
</xsl:stylesheet>
