<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
			<head>
				<title>Ingredientes</title>
				<style>
					table, tr, td, th
					{
						border: 1px solid black;
						border-collapse: collapse;
					}
				</style>
			</head>
			<body>
				<h1>Recetas</h1>
				<xsl:for-each select="//receta">
					<h2><xsl:value-of select="titulo"></xsl:value-of></h2>
					<table>
						<tr>
							<th>Nombre</th>
							<th>Cantidad</th>
							<th>Unidad</th>
						</tr>
						<xsl:for-each select="ingredientes/ingrediente">
							<tr>
								<td> <b> <xsl:value-of select="@nombre"></xsl:value-of> </b>	</td>
								<td> <xsl:value-of select="@cantidad"></xsl:value-of> </td>
								<td> <xsl:value-of select="@medida"></xsl:value-of> </td>
							</tr>
						</xsl:for-each>
					</table>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
