<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    
    <xsl:template match="/" mode="#all">
        <h1>Lista de Álbumes de Música</h1>
        
        <p>Filtrando por género: <strong><xsl:value-of select="//album[genre='Rock']/genre"/></strong></p>
        <ul>
            <xsl:apply-templates select="//album[genre='Rock']"/>
            
            
        </ul>
        
    </xsl:template>
    
    <xsl:template match="album" mode="#default">
        <h2><xsl:value-of select="title"/> - <xsl:value-of select="artist"/></h2>
        <p><strong>Año: </strong><xsl:value-of select="year"/></p>
        <p><strong>Genero: </strong><xsl:value-of select="genre"/></p>
        <h3><strong>Tracks:</strong></h3>
    </xsl:template>
    
    
</xsl:stylesheet>