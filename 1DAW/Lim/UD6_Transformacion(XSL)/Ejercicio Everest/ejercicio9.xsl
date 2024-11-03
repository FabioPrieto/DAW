<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Empresas</title>
        <style>
        .rojo{
          color:red;
         text-decoration: underline;
        }
      li{
        list-style: square;
      }
      </style>
      </head>
      <body>
        <h1>Empresas</h1>
        <xsl:for-each select="//empresa">
          <xsl:sort select="datos_empresa/nombre"/>
          <h2>
            <xsl:value-of select="datos_empresa/nombre"/>
          </h2>
          <h3>Expediciones</h3>
          <xsl:for-each select="rutas/expedicion">
            <p><span class="rojo">Nombre</span>: <xsl:value-of select="@codigo"/> - <xsl:value-of select="nombre"/></p>
            <p>
              <b>Idiomas: </b>
              <xsl:value-of select="count(idiomas/idioma)"/>
            </p>
            <xsl:for-each select="idiomas/idioma">
              <xsl:sort select="text()"/>
              <ul>
                <li>
                  <xsl:value-of select="text()"/>
                </li>
              </ul>
            </xsl:for-each>
          </xsl:for-each>
          <br/>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
