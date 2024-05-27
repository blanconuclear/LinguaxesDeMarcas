<?xml version="1.0" encoding="UTF-8"?>
<xsl:package xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
             version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    
    
    <xsl:template match="/" mode="mode-name">
        <xsl:value-of select="//ciclo/@id"/>
    </xsl:template>
    
    
    
</xsl:package>