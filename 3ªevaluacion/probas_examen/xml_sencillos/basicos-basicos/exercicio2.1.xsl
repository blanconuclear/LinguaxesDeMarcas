<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    
    <xsl:template match="/" mode="#all">
        <html>
            <h1><xsl:value-of select="ies/@nome"/></h1>
            <xsl:apply-templates select="//ciclo"/>
        </html>
    </xsl:template>
    
    <xsl:template match="ciclo" >
        <p><xsl:value-of select=""/></p>
    </xsl:template>
    
</xsl:stylesheet>