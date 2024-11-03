<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Recetas</title>
        <link rel="stylesheet" href="./ejercicio7.css"/>
      </head>
      <body>
        <h1>Recetas</h1>
        <xsl:for-each select="//receta">
          <h2>
            <xsl:value-of select="titulo"/>
          </h2>
          <h3>Pasos:</h3>
          <ol>
            <xsl:for-each select="pasos/paso">
            <xsl:sort select="@orden"/>
              <li>
                <xsl:value-of select="@accion"/>
              </li>
            </xsl:for-each>
          </ol>
          <h3>Personas:</h3>
          <xsl:value-of select="@personas"/>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
