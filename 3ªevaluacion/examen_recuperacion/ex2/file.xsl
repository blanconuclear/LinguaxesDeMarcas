<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    
    <xsl:template match="/" mode="#all">
        <html>
            <h1 style="color: aqua;font-size: 50px;"><xsl:value-of select="/pizzeria/@nombre"/></h1>
            <p><xsl:value-of select="/pizzeria/direccion/calle"/> (<xsl:value-of select="/pizzeria/direccion/ciudad"/>) Tel: <xsl:value-of select="/pizzeria/telefono"/></p>
            <p>Abierto de <xsl:value-of select="/pizzeria/horarios/apertura"/> a <xsl:value-of select="/pizzeria/horarios/cierre"/></p>
            <table border="1">
                <tr style="background-color: aqua;">
                    <th><strong>Nombre</strong></th>
                    <th><strong>Precio</strong></th>
                    <th><strong>Con oregano</strong></th>
                    <th><strong>Calorias</strong></th>
                    <th><strong>Ingredientes</strong></th>
                </tr>
                <xsl:apply-templates select="//pizza"/>
            </table>
        </html>
    </xsl:template>
    
    <xsl:template match="pizza" mode="#default">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="precio"/> €</td>
            <td><xsl:value-of select="oregano"/></td>
            <td><xsl:value-of select="calorias"/></td>
            <td><xsl:value-of select="ingredientes/ingrediente"/></td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>