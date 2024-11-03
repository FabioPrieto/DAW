<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <festivales>
      <xsl:for-each select="//festival">
        <xsl:sort select="sum(peliculas/pelicula/presupuesto)" order="descending"/>
          <festival>
            <pais>
              <xsl:value-of select="ambito"/>
            </pais>
            <total>
              <xsl:value-of select="sum(peliculas/pelicula/presupuesto)"/>
            </total>
            </festival>
      </xsl:for-each>
    </festivales>
  </xsl:template>
</xsl:stylesheet>
