<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:template match="/items">
		<html>
		<head>
			<title>Our Items</title>
			<style>
    			h1 { color:#0D3427 }
                h1.no { color:#8A8A8A }
                h1.soon { color:#000077 }
                h1.yes { color:#0D3427 } 
	    		img { margin: 0px 10px 0px 10px }
		    	body { background-color: #DACFE5; font-family:Arial, Helvetica, sans-serif }
			</style>
		</head>
		<body>
			<xsl:for-each select="item">
            <xsl:sort select="name" order="ascending"/>

            <xsl:choose>
               <xsl:when test="@available = 'no'">
                  <h1 class="no">
                     <img>
                        <xsl:attribute name="src">
                           <xsl:value-of select="photo"/>
                        </xsl:attribute>
                     </img>
                     <xsl:text>Type: </xsl:text>
                     <xsl:value-of select="type"/>
                     <xsl:text>, </xsl:text>
                     <xsl:text>Name: </xsl:text>
                     <xsl:value-of select="name"/>
                  </h1>
               </xsl:when>
               <xsl:when test="@available = 'soon'">
                  <h1 class="soon">
                     <img>
                        <xsl:attribute name="src">
                           <xsl:value-of select="photo"/>
                        </xsl:attribute>
                     </img>
                     <xsl:text>Type: </xsl:text>
                     <xsl:value-of select="type"/>
                     <xsl:text>, </xsl:text>
                     <xsl:text>Name: </xsl:text>
                     <xsl:value-of select="name"/>
                  </h1>
               </xsl:when>
               <xsl:otherwise>
                  <h1 class="yes">
                     <img>
                        <xsl:attribute name="src">
                           <xsl:value-of select="photo"/>
                        </xsl:attribute>
                     </img>
                     <xsl:text>Type: </xsl:text>
                     <xsl:value-of select="type"/>
                     <xsl:text>, </xsl:text>
                     <xsl:text>Name: </xsl:text>
                     <xsl:value-of select="name"/>
                  </h1>
               </xsl:otherwise>
            </xsl:choose>
			</xsl:for-each>
		</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
