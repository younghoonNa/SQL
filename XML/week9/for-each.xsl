<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:fo="http://www.w3.org/1999/XSL/Format">
	
	<xsl:template match="people">
		<xsl:for-each select="person">
			people !! <br/>
			name : <xsl:value-of select="name"/> <br/>
			pet : <xsl:value-of select="pet"/> <br/> 
		</xsl:for-each>
	</xsl:template>
	
</xsl:stylesheet>