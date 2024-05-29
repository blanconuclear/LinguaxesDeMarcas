<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    
    
    <xsl:template match="/" mode="#all">
        <máquinas>
            <xsl:apply-templates select="//máquina"/>
        </máquinas>
    </xsl:template>
    <xsl:template match="máquina">
        <xsl:element name="máquina">
            <xsl:attribute name="tipo">
                <xsl:value-of select="hardware/tipo"/>
            </xsl:attribute>
            <xsl:attribute name="fabricante">
                <xsl:value-of select="hardware/fabricante"/>
            </xsl:attribute>
            <xsl:attribute name="procesador">
                <xsl:value-of select="hardware/procesador"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="hardware/procesador/@num_nucleos"/>
                <xsl:text> nucleos</xsl:text>
                <xsl:value-of select="hardware/procesador/@velocidade"/>
            </xsl:attribute>
        </xsl:element>
    </xsl:template>
    
    
</xsl:stylesheet>