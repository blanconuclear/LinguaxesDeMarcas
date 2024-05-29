<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    
    
    
    <xsl:template match="/" mode="#all">
        <discos>
            <xsl:apply-templates select="//disco"/>
        </discos>
    </xsl:template>
    <xsl:template match="disco">
        <xsl:element name="disco">
            <xsl:attribute name="tecnoloxía">
                <xsl:value-of select="@tecnoloxía"/>
            </xsl:attribute>
            <xsl:attribute name="capacidade">
                <xsl:value-of select="@capacidade"/>
            </xsl:attribute>
            <xsl:attribute name="maquina">
                <xsl:value-of select="//máquina/@nome"/>
            </xsl:attribute>
            
        </xsl:element>
    </xsl:template>
    
    
</xsl:stylesheet>