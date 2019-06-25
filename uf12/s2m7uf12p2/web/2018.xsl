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
            margin: 0;
            padding: 0;
            font-size: 15px;
            line-height: 20px;
            font-family: 'Helvetica Neue', sans-serif;
          }
          .centrat{
            margin: 0 auto;
            padding: 0;
            width: 80%;
          }
          a{
            text-decoration: none;
          }
          a:link{
            color: #000;
          }
          a:visited{
            color: #000;
          }
          a:hover{
            color: #557f9b;
          }
          a:active{
            color: #557f9b;
          }
          li{
            list-style-type: none;
          }

          #cap{
            margin: 0;
            padding: 0;
            padding-top: 1em;

          }
          #cap h1{
            font-size: 5em;
            line-height: 1.5em;
            width: 210px;
            display: inline-block;
            margin: 0;
            padding: 0;
            letter-spacing: -0.05em;
          }
          #cap h3{
            display: inline-block;
            width: 155px;
            margin: 0;
            padding: 0;
          }
          #nav{
            margin: 0;
            padding: 0;
            padding-top: 1em;
            border-top: solid 4px #000;

          }
          .actv a{
            color: #557f9b;

          }
          #nav li{
            text-transform: uppercase;
            font-size: 1.5em;
            margin: 0;
            margin-right: 0.5em;
            padding: 0;
            display: inline-block;
            font-weight: 600;

          }

          #principal{
            margin: 0;
            padding: 0;


          }
          #principal .pritext{
            font-weight: 900;
            font-size: 3em;

          }
          #lateral{
            width: 18%;
            margin: 0;
            padding: 0;
            margin-right: 3em;
            float: left;
          }
          #lateral ul{
            font-weight: 600;
            border-top: solid 2px #000;
            margin: 0;
            padding: 0;
            margin-bottom: 5em;
            padding-top: 2em;
          }
          #lateral ul li{
            line-height: 1.5em;
            font-weight: 300;
          }
          #lateral ul li a:hover{
            color: #000;
            text-decoration: underline;
          }
          #contingut{
            border-top: solid 2px #000;
            width: 78%;
            margin: 0;
            padding: 0;
            float: left;
            padding-top: 2em;
          }
          .bloc{
            width: 31.8%;
            height: 350px;
            float: left;
            margin: 8px;
          }

          .bloc img{
            width: 100%;
          }

          .bloc .data{
            margin: 0;
            padding: 0;
            margin-top: 0.5em;
            font-weight: 200;
          }
          .bloc .cat{
            text-transform: uppercase;
            margin: 1em 0;
            padding: 0;
            font-weight: 600;
            font-size: 0.8em;
            line-height: 1em;
            letter-spacing: 0.1em;
            color: #557f9b;
          }
          .bloc .titol{
            margin: 0;
            padding: 0;
            font-weight: 600;
          }

          #peu{
            background-color: #000;
            height: 150px;
            clear: both;
            color: #FFF;
            padding-top: 3em;
          }
          #peu h1{
            font-size: 3em;
            line-height: 1em;
            width: 130px;
            display: inline-block;
            margin: 0;
            padding: 0;
            letter-spacing: -0.05em;

          }
          #peu h3{
            display: inline-block;
            width: 105px;
            margin: 0;
            padding: 0;

            font-size: 0.8em;
            line-height: 1em;

          }
          #peu p{
            font-size: 0.8em;
            line-height: 1em;
          }

        </style>
      </head>
      <body>
        <div id="cap">
          <div class="centrat">
            <h1>CCCB</h1>
            <h3>Centre de Cultura Contemporània de Barcelona</h3>
          </div>
        </div>
        <ul id="nav">
          <div class="centrat">
            <li class="actv"><a href="expo.xml">Exposicions</a></li>
            <li><a href="activi.xml">Activitats</a></li>
          </div>
        </ul>
        <div id="principal">
          <div class="centrat">
            <h2 class="pritext">Exposicions</h2>
            <div id="lateral">
              <ul>Per tema
                <li><a href="art.xml">Art</a></li>
                <li><a href="ciencia.xml">Ciència</a></li>
                <li><a href="cinema.xml">Cinema i audiovisuals</a></li>
                <li><a href="ciutat.xml">Ciutat i espai públic</a></li>
                <li><a href="cultura.xml">Cultura</a></li>
                <li><a href="disseny.xml">Disseny</a></li>
                <li><a href="ecologia.xml">Ecologia</a></li>
                <li><a href="filosofia.xml">Filosofia</a></li>
                <li><a href="fotografia.xml">Fotografia</a></li>
                <li><a href="historia.xml">Història</a></li>
                <li><a href="innovacio.xml">Innovació</a></li>
                <li><a href="literatura.xml">Literatura</a></li>
                <li><a href="periodisme.xml">Periodisme</a></li>
                <li><a href="politica.xml">Política</a></li>
                <li><a href="sociologia.xml">Sociología</a></li>
                <li><a href="tecnologia.xml">Tecnologia</a></li>
              </ul>
              <ul>Per any
                <li class="actv"><a href="2018.xml">2018</a></li>
                <li><a href="2017.xml">2017</a></li>
                <li><a href="2016.xml">2016</a></li>
              </ul>
            </div>
            <div id="contingut">
              <xsl:for-each select="cccb/expo">
                <xsl:if test="any='2018'">
                  <div class="bloc">
                    <a href="{id}.xml" target="_blank">
                      <img src="{image}"/>
                      <h4 class="data">
                        <xsl:value-of select="inaguracio"/>&#160;
                        <xsl:value-of select="tancament"/>&#160;
                        <xsl:value-of select="any"/>
                      </h4>
                      <h4 class="cat"><xsl:value-of select="categoria"/></h4>
                      <h3 class="titol"><xsl:value-of select="titol"/></h3>
                    </a>
                  </div>
                </xsl:if>
              </xsl:for-each>
            </div>
          </div>
        </div>
        <div id="peu">
          <div class="centrat">
            <h1>CCCB</h1>
            <h3>Centre de Cultura Contemporània de Barcelona</h3>
            <p>Montalegre, 5 - 08001 Barcelona</p>
            <p>Tel. 93 306 41 00 - Fax 93 306 41 01</p>
            <p>info@cccb.org </p>
          </div>
        </div>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
