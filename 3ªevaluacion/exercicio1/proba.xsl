<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
      <html>
      <xsl:for-each select="//ciclo">
        <p><xsl:value-of select="nombre"/></p>
      </xsl:for-each>

      <!-- lista -->
 <ul>
<xsl:for-each select="//ciclo">
     <li><xsl:value-of select="nombre"/></li>
</xsl:for-each>
 </ul>

 <!-- Tabla -->
 <table border="1">

<xsl:for-each select="//ciclo">
 <tr>
     <td><xsl:value-of select="nombre"/></td>
 </tr>
</xsl:for-each>

 </table>
    </html>
    </xsl:template>
</xsl:stylesheet>