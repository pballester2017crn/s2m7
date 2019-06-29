<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="4.0"
encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="utf-8"/>
        <style>
          body{
            margin: 0 auto;
            padding: 0;
            font-size: 18px;
            line-height: 22px;
            font-family: sans-serif;
            width: 95%;
            background-color: ivory;
          }
          #principal{
            width: 78%;
            padding-top: 10px;


          }
          .grup{
            background-color: #FCE;
            width: 49%;
            float:left;
            color: #DDD;
            padding: 0px;
            overflow: hidden;
            border-radius: 10px;
            margin: 0.25%;

          }
          .txt{
            margin: 0;
            padding: 0;
            padding-top: 250px;
            padding-left: 10px;
            font-weight: 100;
            color: #FFF;
            font-size: 0.8em;
            line-height: 1.2em;

          }
          ul{
          padding-left: 0;
          margin-bottom: 0;
          }
          li{
            list-style-type: none;
          }
          h2{
          margin: 0;
          padding: 0;
          }
          h3{
          margin: 10px 0;
          padding: 0;          
          font-size: 0.8em;
          line-height: 1em;
          text-transform: uppercase;
          font-weight: 400;
          }
          #info{
            background-color: rgba(2204, 0, 102,0.5);
            width: 15%;
            margin-top: 5px;
            padding: 10px;
          }
          #ocult{
					height: 10px;
					transition-property: display;
         	transition-duration: 2s;
         	overflow: hidden;
					}
					#ocult:hover{
					height: auto;
					}
          #menu{
           background-color: #333;
           margin: 10px;
           width: 21%;
           float: right;
           
           padding-top: 20px;
          }
          #menu li{
            padding: 10px;
            border-bottom: solid 1px #FFF;
          }
          a{
            text-decoration: none;
            color: #FFF;
          }
          a:link{
            color: #FFF;
          }
          a:hover{
            color: #f9c;
          }
          a:visited{
            color: #FFF;
          }
          a:active{
            color: #f9c;
          }
          #dies{
            background-color: #333;
            text-align: right;
          }
          #dies li{
            display: inline-block;
            padding: 10px;
            border-left: solid 1px #FFF;
          }
          #d li{
            font-weight: 100;
            font-size: 1em;
            line-height: 1.2em;          
          }

        </style>
      </head>
      <body>
        <h1>Primavera</h1>
        <ul id="dies">
          <li><a href="dimecres.xml">Dimecres</a></li>
          <li><a href="dijous.xml">Dijous</a></li>
          <li><a href="divendres.xml">Divendres</a></li>
          <li><a href="dissabte.xml">Dissabte</a></li>
        </ul>

        <ul id="menu">
          <xsl:for-each select="primavera/grup">
            <xsl:if test="Dia='jueves 28 de mayo'">
              <li><a href="#{id}"><xsl:value-of select="Artista"/></a></li>
            </xsl:if>
          </xsl:for-each>
        </ul>

        <div id="principal">

          <xsl:for-each select="primavera/grup">
            
            <xsl:if test="Dia='jueves 28 de mayo'">
                <a href="{id}.xml">
                  <div class="grup" style="background-image:url({image}); background-repeat: no-repeat; background-size: cover;">
                    <div class="txt" style="background-color:rgba(150,50,80,0.5);">
                      <h2 id="{id}"><xsl:value-of select="Artista"/></h2>
                      <h3><xsl:value-of select="Titol"/></h3>
                      <ul id="d">
                        <li><xsl:value-of select="Disc"/></li>
                        <li><xsl:value-of select="Dia"/></li>
                        <li><xsl:value-of select="Lloc"/></li>

                        <li><a href="{Web}" target="_blank"><xsl:value-of select="Web"/></a></li>
                        <li id="info">+info</li>
                      </ul>
                      <div id="ocult">
                        <p><xsl:value-of select="Descripcio"/></p>
                      </div>
                    </div>
                  </div>
                </a>
            </xsl:if>

          </xsl:for-each>

        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
