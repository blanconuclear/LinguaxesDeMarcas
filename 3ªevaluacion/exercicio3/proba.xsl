<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

    <xsl:output method="html"/>
    <xsl:template match="/">
    <!-- Ejercicio 3-1 - Párrafos -->
    <html>
        <h1><xsl:value-of select="//nombre"/></h1>
        <xsl:for-each select="//ciclo">
            <p><xsl:value-of select="nombre"/></p>
        </xsl:for-each>

        <!-- Ejercicio 3-2 - Lista: -->
          <h1><xsl:value-of select="//nombre"/></h1>
            <xsl:if test="ies/ciclos/ciclo/decretoTitulo/@año > 2009 ">
          <ul>
          <xsl:for-each select="//ciclo">
            <li><xsl:value-of select="nombre"/></li>
          </xsl:for-each>
          </ul>
          </xsl:if>

<!--  Ejercicio 3-3 - Tabla-->
          <table border="1">
 <tr>
 <th>Nombre del ciclo</th>
 <th>Grado</th>
 <th>Año del título</th>
 </tr>
<xsl:for-each select="//ciclo">
     <tr>
     <td><xsl:value-of select="nombre"/></td>
     <td><xsl:value-of select="grado"/></td>
     <td><xsl:value-of select="decretoTitulo/@año"/></td>
     </tr>
</xsl:for-each>


 </table>
    </html>
    </xsl:template>

</xsl:stylesheet>