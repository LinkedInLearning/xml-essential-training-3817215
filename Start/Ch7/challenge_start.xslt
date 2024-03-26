<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/BusinessCards">
		<html>
		<head>
			<title>Our Items</title>
			<style>
    			h1 { color:#0D3427 }
    			body { background-color: #bae0e0; font-family:Arial, Helvetica, sans-serif }
                table {border: 1px solid gray; border-spacing: 0}
                th {font-size: 18pt; border-bottom:1px solid gray}
                tbody {font-size: 15pt;}
                td {padding: 10pt}
			</style>
		</head>
		<body>
            <h1>Business Cards: <xsl:value-of select="count(BusinessCard)"/></h1>
            <table>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Primary Phone</th>
                        <th>Email</th>
                    </tr>
                </thead>
                <tbody>
                <xsl:for-each select="BusinessCard">
                <xsl:sort select="Name" order="ascending"/>
                    <tr>
                        <td><xsl:value-of select="Name"/></td>
                        <td><xsl:value-of select="phone[@primary]"/></td>
                        <td><xsl:value-of select="email"/></td>
                    </tr>
                </xsl:for-each>
                </tbody>
            </table>
        </body>
        </html>
    </xsl:template>

</xsl:stylesheet>