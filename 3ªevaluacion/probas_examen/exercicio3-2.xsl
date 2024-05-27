<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    <!-- Plantilla para el nodo raíz -->
    <xsl:template match="/">
        <html>
            <body>
                <!-- Aplicar plantilla para 'ies' con modo 'h1' -->
                <xsl:apply-templates select="//ies" mode="h1"/>
                <!-- Lista de ciclos dentro de 'ies' -->
                <ul>
                    <xsl:apply-templates select="//ciclo" mode="lista"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    
    <!-- Plantilla para el elemento 'ies' con modo 'h1' -->
    <xsl:template match="ies" mode="h1">
        <!-- Mostrar el nombre del 'ies' -->
        <h1><xsl:value-of select="@nombre" /></h1>
    </xsl:template>
    
    <!-- Plantilla para el elemento 'ciclo' con modo 'lista' -->
    <xsl:template match="ciclo" mode="lista">
        <li><xsl:value-of select="@id"/>
            <br/>
            <xsl:value-of select="nombre"/> creado en <xsl:value-of select="decretoTitulo/@año"/>
        </li>
    </xsl:template>
    
</xsl:stylesheet>
