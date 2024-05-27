<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                               version="3.0">
   <!-- <xsl:output method="xml" indent="yes"/>
 
    <xsl:template match="/" mode="#all">
        <xsl:element name="almacenamento">
            <xsl:element name="discos">
                <xsl:attribute name="num">
                <xsl:value-of select="count(//disco)"/>
                </xsl:attribute>
                    <xsl:copy-of select="equipos/máquina/hardware/disco"/>
            </xsl:element>
        </xsl:element>
        <xsl:element name="memoria">
            <xsl:attribute name="num">
                <xsl:value-of select="count(//memoria)"/>
            </xsl:attribute>
            <xsl:copy-of select="equipos/máquina/hardware/memoria"/>
        </xsl:element>
    </xsl:template> -->



    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/" mode="#all">
        <html>
            <h1> máquinas </h1>
            <xsl:for-each select="//máquina">
                <a href = "#{@nome}"><xsl:value-of select="//equipos/máquina/@nome"/></a>
            </xsl:for-each>
           <h2> <xsl:value-of select="//máquina[1]/@nome"/> </h2>
            <ul>
               <xsl:apply-templates select="//máquina[1]/hardware"/>
            </ul>
            
        </html>
    </xsl:template>
    <xsl:template match="tipo" mode="#default">
        <xsl:value-of select="tipo"/>
    </xsl:template>
    <xsl:template match="fabricante" mode="#default">
        <xsl:value-of select="fabricante"/>
    </xsl:template>
    <xsl:template match="" mode="#default">
        
    </xsl:template>
</xsl:stylesheet>