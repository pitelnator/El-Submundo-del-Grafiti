<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Artistas</title>
                <link rel="stylesheet" href="../css/Estilos-CSS.css"/>
            </head>
            <header>
                <h1>Estilos de Grafiti</h1>
            </header>
            <body>
                <div class="Contenido">
                    <xsl:for-each select="//estilo">
                        <div class="Titulo"><h2><xsl:value-of select="@nombre"/></h2></div>
                        <div class="Descripcion"><xsl:value-of select="descripcion"/></div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 