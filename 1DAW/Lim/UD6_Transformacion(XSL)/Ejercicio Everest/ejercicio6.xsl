<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Expedición EX102</title>
        <style>
          span.encabezado{ color:red;}
          ul.azul{ color:blue;}
          ul.verde{ color:green;}
          table,th,td{
            border: 1px solid black;
            border-collapse: collapse;
          }
        </style>
      </head>
      <body>
        <h1>Expedición EX102</h1>
        <xsl:for-each select="//empresa/datos_empresa[@codigo='ME199']/../rutas/expedicion[@codigo='EX102']">
          <p>
            <span class="encabezado">Nombre: </span>
            <xsl:value-of select="nombre"/>
          </p>
          <p>
            <span class="encabezado">Escaladores:</span>
          </p>
          <ul>
            <xsl:for-each select="escaladores/escalador">
              <xsl:sort select="text()"/>
              <xsl:choose>
                <xsl:when test="@sherpa='no'">
                  <ul class="azul">
                    <xsl:value-of select="text()"/>
                  </ul>
                </xsl:when>
                <xsl:when test="@sherpa='si'">
                  <ul class="verde">
                    <xsl:value-of select="text()"/>
                  </ul>
                </xsl:when>
              </xsl:choose>
            </xsl:for-each>
          </ul>
          <p><span class="encabezado">Itinerario:</span></p>
          <table>
            <tr>
              <th>Día</th>
              <th>Suceso</th>
            </tr>
            <xsl:for-each select="itinerario/dia">
              <tr>
                <td>
                  <xsl:value-of select="@num"/>
                </td>
                <td>
                  <xsl:value-of select="text()"/>
                </td>
              </tr>
            </xsl:for-each>
          </table>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
