<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Historia</title>
                <link rel="stylesheet" href="../css/Historia-CSS.css"/>
            </head>
            <body>

                <h1>Historia del Grafiti</h1>
                <div class="Contenido">
                    <xsl:for-each select="//Titulo | //titulo | //descripcion">
                        <!-- name() permite especificar el nombre exacto del elemento-->
                        <xsl:choose>
                            <xsl:when test="name() = 'Titulo'">
                                <div class="Titulo"><h2><xsl:value-of select="."/></h2></div>
                            </xsl:when>
                            <xsl:when test="name() = 'titulo'">
                                <div class="subtitulo"><h3><xsl:value-of select="."/></h3></div>
                            </xsl:when>
                            <xsl:when test="name() = 'descripcion'">
                                <br></br><div class="descripcion"><xsl:value-of select="."/></div>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </div>
                
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 