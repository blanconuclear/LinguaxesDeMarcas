<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    
    <xsl:template match="/" mode="#all">
        <html>
            <h1>IES San Clemente </h1>
            <p>Página web: <a
                    href="http://www.iessanclemente.net/">http://www.iessanclemente.net/</a></p>
            <table border="1">
                <tr>
                    <th>Nombre del ciclo</th>
                    <th>Grado</th>
                    <th>Año del título</th>
                </tr>
                <tr>
                    <xsl:apply-templates />
                </tr>
                
            </table>
        </html>
    </xsl:template>
    <xsl:template match="//ciclo" >
        <tr>
            
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="grado"/></td>
            <td><xsl:value-of select="decretoTitulo/@año"/></td>
            
        </tr>
    </xsl:template>
    
    
</xsl:stylesheet>