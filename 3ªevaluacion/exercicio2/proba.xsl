<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">

        <html>
        <!-- 2.1 Párrafos -->
            <h1><xsl:value-of select="//@nombre"/></h1>
            <xsl:for-each select="//ciclo">
            <p><xsl:value-of select="nombre"/></p>
            </xsl:for-each>

        <!-- Ejercicio 2-2 Lista -->
        <h1><xsl:value-of select="//@nombre"/></h1>
        <ul>
        <xsl:for-each select="//ciclo">
            <li><xsl:value-of select="nombre"/></li>
        </xsl:for-each>
        </ul>

        <!-- Ejercicio 2-3 Tabla -->

    <a href="{//ies/@web}"></a>

        </html>
    
    </xsl:template>
    
</xsl:stylesheet>