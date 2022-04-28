<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
 xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template match="people">
		<xsl:value-of select="person[1]" />
	</xsl:template>
	
	<xsl:template match="people">
		<xsl:value-of select="person[2]" />
	</xsl:template>
	
</xsl:stylesheet>
