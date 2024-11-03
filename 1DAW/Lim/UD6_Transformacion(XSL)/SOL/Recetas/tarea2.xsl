<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
			<head>
				<title>Recetas</title>
				<style>
					.verde{color: green;}
					.azul{color: blue;}
					.rojo{color: red;}
				</style>
			</head>
			<body>
				<h1>Recetas</h1>
				<xsl:for-each select="//receta">
					<xsl:choose>
						<xsl:when test="@dificultad='Baja'">
							<p class="verde"><xsl:value-of select="titulo"/></p>
						</xsl:when>
						<xsl:when test="@dificultad='Media'">
							<p class="azul"><xsl:value-of select="titulo"/></p>
						</xsl:when>
						<xsl:otherwise>
							<p class="rojo"><xsl:value-of select="titulo"/></p>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
