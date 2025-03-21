<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
        <html>

            <head>
                <meta charset="UTF-8"/>
                <title>Artistas</title>
                <link rel="stylesheet" href="../css/Artistas-CSS.css"/>
            </head>

            <header>
                <h1>Artistas Destacados</h1>
            </header>

            <body>

                <div class="Contenido">
                    <xsl:for-each select="//grafitero">
                        <div class="Titulo"><h2><xsl:value-of select="@nombre"/></h2></div>

                        <!-- Recorrer los hijos del grafitero (origen, estilo, descripcion) -->
                        <xsl:for-each select="*">
                            <xsl:choose>
                                <xsl:when test="name() = 'origen'">
                                    <h5 class="Origen"><xsl:value-of select="."/></h5>
                                </xsl:when>
                                <xsl:when test="name() = 'estilo'">
                                    <h6 class="Estilo"><br></br><xsl:value-of select="."/><br></br></h6>
                                </xsl:when>
                                <xsl:when test="name() = 'descripcion'">
                                    <div class="Descripcion"><xsl:value-of select="."/></div>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:for-each>
                    </xsl:for-each>
                </div>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 