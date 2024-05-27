<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    
    <xsl:template match="/" mode="#all">
        <html>
            <!-- Ejercicio 1-2 Párrafos: -->
            <xsl:apply-templates select="//ciclo"/> 
            
            <!-- Ejercicio 1-3 Lista: -->
            <ul>
                <xsl:apply-templates select="//ciclo"/>
            </ul>
            
            <!-- Ejercicio 1-4 Tabla: -->
            
            <xsl:apply-templates select="//ciclo"/>
            
        </html>
    </xsl:template>
    
    <xsl:template match="ciclo">
        <p><xsl:value-of select="nombre"/></p>
    </xsl:template>
    
    <xsl:template match="ciclo">
        <li>
            <xsl:value-of select="nombre"/>
        </li>
    </xsl:template>
    
    
</xsl:stylesheet>