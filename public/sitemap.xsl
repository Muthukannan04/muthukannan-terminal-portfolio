<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Sitemap</title>
        <style>
          body {
            font-family: -apple-system, BlinkMacSystemFont, 
                          "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
            margin: 40px;
            background-color: #fafafa;
            color: #1d1d1f;
          }

          h1 {
            font-size: 28px;
            font-weight: 600;
            margin-bottom: 25px;
          }

          table {
            width: 100%;
            border-collapse: collapse;
            background: #ffffff;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 1px 3px rgba(0,0,0,0.1);
          }

          th {
            background: #f5f5f7;
            padding: 14px;
            text-align: left;
            font-size: 14px;
            font-weight: 600;
            border-bottom: 1px solid #e0e0e0;
          }

          td {
            padding: 14px;
            border-bottom: 1px solid #eaeaea;
            font-size: 15px;
          }

          tr:hover td {
            background: #f5f5f7;
          }

          a {
            color: #0071e3;
            text-decoration: none;
          }

          a:hover {
            text-decoration: underline;
          }
        </style>
      </head>

      <body>
        <h1>Sitemap</h1>

        <table>
          <tr>
            <th>URL</th>
            <th>Change Frequency</th>
            <th>Priority</th>
          </tr>

          <xsl:for-each select="s:urlset/s:url">
            <tr>
              <td>
                <a href="{s:loc}">
                  <xsl:value-of select="s:loc"/>
                </a>
              </td>

              <td>
                <xsl:value-of select="s:changefreq"/>
              </td>

              <td>
                <xsl:value-of select="s:priority"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
