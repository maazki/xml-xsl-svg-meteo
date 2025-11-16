<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="3.0">
    <xsl:template match="/">
        <html>
            <head><title>Meteo</title></head>
            <body>
                <xsl:for-each select="meteo/mesure">
                    <ul>
                        <li>Date Mesure <xsl:value-of select="@date"/></li>
                    </ul>
                    <table width="80%" border="1">
                        <thead><tr><td>Ville</td><td>temperature</td></tr> </thead>
                        <tbody>
                            <xsl:for-each select="ville">
                                <tr>
                                    <td><xsl:value-of select="@nom"/></td>
                                    <td><xsl:value-of select="@temperature"/></td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>