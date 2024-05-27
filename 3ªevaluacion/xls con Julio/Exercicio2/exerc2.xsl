<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
      
    <html>
        <h1><xsl:value-of select="//ies/@nombre"/> </h1>
        página web: <a href = "{//ies/@web}"><xsl:value-of select="//ies/@web"/></a>

        <ul>
        <xsl:for-each select="//ciclo">
            <li>
            <xsl:value-of select="nombre"/>
            </li>
        </xsl:for-each>
        </ul>
    <!-- ............................Exercicio tres............................. -->

        <table border ="1"> 
            <tr bgcolor="grey">
                <th>Nombre del ciclo</th>
                <th>Grado</th>
                <th>Año del ciclo</th>
            </tr>
            <xsl:for-each select="//ciclo">          
              <tr>
              <xsl:if test="decretoTitulo/@año &lt; 2009 ">
              <xsl:attribute name="bgcolor">red</xsl:attribute>
              </xsl:if>
                <td><xsl:value-of select="nombre"/></td>
                <td><xsl:value-of select="grado"/></td>
                <td><xsl:value-of select="decretoTitulo/@año"/></td>
                
            </tr>
              </xsl:for-each>

        </table> 
    </html>
    </xsl:template>
   
    

</xsl:stylesheet>