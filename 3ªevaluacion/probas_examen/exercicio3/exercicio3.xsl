<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    
    <xsl:template match="/" mode="#all">
        <html>
            <xsl:apply-templates select="//ciclo"/>
        </html>
    </xsl:template>
    <xsl:template match="//ciclo" mode="#default">
        <table border="1">
            <tr>
                <td><xsl:value-of select="nombre"/></td>
            </tr>
            
        </table>
    </xsl:template>
    
    
</xsl:stylesheet>