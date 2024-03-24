<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<!-- this XSL stylesheet matches the <JavacoTea> tag in an associated XML
	file and replaces it with the HTML contents of the template. -->
	<xsl:template match="/JavacoTea">
		<html>
		<head>
			<title>New Herbal Tea Available!</title>
		</head>
		<body>
			<img src="photos/javaco_tea_logo.gif" />
		</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
