<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Ingredientes</title>
      </head>
      <body>
        <h1>Ingredientes</h1>
        <xsl:variable name="sum_ingredientes" select="count(//ingrediente)"/>
        <xsl:variable name="num_recetas" select="count(//receta/titulo)"/>
        <xsl:variable name="media_ingredientes" select="$sum_ingredientes div $num_recetas"/>
        <xsl:for-each select="//receta">
          <p><xsl:value-of select="titulo"/>: <xsl:value-of select="count(ingredientes/ingrediente)"/></p>
        </xsl:for-each>
        <p>
        Media de ingredientes por receta: <xsl:value-of select="$media_ingredientes"/>
      </p>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
