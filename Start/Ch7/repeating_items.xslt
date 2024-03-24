<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:template match="/items">
		<html>
		<head>
			<title>Our Items</title>
			<style>
			h1 { color:#0D3427 }
			img { margin: 0px 10px 0px 10px }
			body { background-color: #DACFE5; font-family:Arial, Helvetica, sans-serif }
			</style>
		</head>
		<body>
            <!-- define the loop and content for each item tag -->
			<xsl:for-each select="item">
				<h1>
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="photo"/>
						</xsl:attribute>
					</img>
					<xsl:value-of select="name"/>
					<xsl:text>: </xsl:text>
					<xsl:value-of select="type"/>
				</h1>
			</xsl:for-each>
		</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
