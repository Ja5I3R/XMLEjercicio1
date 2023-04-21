<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="array fn map math xhtml xs err" version="3.0">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/" name="xsl:initial-template">
		
		<html>
			<head>
				<title>Datos Persona</title>
				 <link rel="stylesheet" href="style.css"/>
			</head>
			<body>
				<div class="divcentral">
					<xsl:for-each select="datos/persona">
						<p> Sexo:
							<xsl:value-of select="sexo"></xsl:value-of>
						</p>
						<p> Nombre P:
							<xsl:value-of select="nombrep"></xsl:value-of>
						</p>
						<xsl:if test="amigode!='' ">
							<p> Amigo de:
								<xsl:value-of select="amigode"></xsl:value-of>
							</p>
						</xsl:if>
						<p> Nombre:
							<xsl:value-of select="nombre"></xsl:value-of>
						</p>
						<p> Email:
							<xsl:value-of select="email"></xsl:value-of>
						</p>
						<img alt="Imagen-Foto">
							<xsl:attribute name="src">
								<xsl:value-of select="imagen"></xsl:value-of>
							</xsl:attribute>
						</img>
					</xsl:for-each>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
