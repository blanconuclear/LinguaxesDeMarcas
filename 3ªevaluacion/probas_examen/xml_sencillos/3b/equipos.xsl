<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    
    <xsl:template match="/" mode="#all">
        <h1>Táboa das máquinas</h1>
        <table border="1">
            <tr>
                <th>
                    Máquina
                </th>
                <th>
                    Procesador
                </th>
                <th>
                    Memoria
                </th>
            </tr>
            <xsl:apply-templates select="//máquina"/>    
        </table>
    </xsl:template>
    <xsl:template match="máquina">
        <tr>
            <td>
                <xsl:value-of select="@nome"/>
            </td>
            
            <td>
                <xsl:value-of select="hardware/procesador/@marca"/>
            </td>
            
            <td>
                <xsl:value-of select="hardware/memoria/@tecnoloxía"/>
            </td>
        </tr>
        
    </xsl:template>
    
    
</xsl:stylesheet>