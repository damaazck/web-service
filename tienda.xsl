<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="styles.css"/>
            </head>
            <body>
                <h2>Productos de la tienda</h2>
                <center><table border="1" cellpadding="6">
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Precio</th>
                        <th>Peso</th>
                        <th>Marca</th>
                    </tr>
                    <xsl:for-each select="tienda/producto">
                        <tr>
                            <td>
                                <xsl:value-of select="@id" />
                            </td>
                            <td>
                                <xsl:value-of select="nombre" />
                            </td>
                            <td>
                                <xsl:value-of select="precio" />
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="precio/@moneda" />
                            </td>
                            <td>
                                <xsl:value-of select="peso" />
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="peso/@medida" />
                            </td>
                            <td>
                                <xsl:value-of select="marca" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                </center>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>