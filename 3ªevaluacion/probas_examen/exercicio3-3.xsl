<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    <!-- Plantilla para el nodo raíz -->
    <xsl:template match="/" mode="#all">
        <html>
            <body>
                <!-- Aplicar plantilla para 'ies' -->
                <xsl:apply-templates select="//ies" mode="h1"/>
                <!-- Tabla de ciclos -->
                <table border="1">
                    <tr>
                        <th>Nombre ciclo</th>
                        <th>Nombre Grado</th>
                        <th>Nombre Año del título</th>
                    </tr>
                    <xsl:apply-templates select="//ciclo" mode="tabla"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <!-- Plantilla para el elemento 'ies' con modo 'h1' -->
    <xsl:template match="ies" mode="h1">
        <h1><xsl:value-of select="@nombre"/></h1>
    </xsl:template>
    
    <!-- Plantilla para el elemento 'ciclo' con modo 'tabla' -->
    <xsl:template match="ciclo" mode="tabla">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="grado"/></td>
            <td><xsl:value-of select="decretoTitulo/@año"/></td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>
