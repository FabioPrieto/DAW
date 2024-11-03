<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Recetas</title>
        <style type="text/css">
          table, th, td{border:1px solid black; border-collapse:collapse;}
          th{text-align:center;}
          td.ingrediente{font-weight:bold;}
        </style>
      </head>
      <body>
        <h1>Recetas</h1>
        <xsl:for-each select="//receta">
          <h2><xsl:value-of select="titulo"/></h2>
          <table>
            <tr>
              <th>Nombre</th>
              <th>Cantidad</th>
              <th>Unidad</th>
            </tr>
            <xsl:for-each select="ingredientes/ingrediente">
            <tr>
              <td class="ingrediente"><xsl:value-of select="@nombre"/></td>
              <td><xsl:value-of select="@cantidad"/></td>
              <td><xsl:value-of select="@medida"/></td>
            </tr>
            </xsl:for-each>
          </table>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
