<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:html="http://www.w3.org/1999/xhtml"
    xmlns="http://www.w3.org/1999/xhtml">

<xsl:output method="html" indent="yes" encoding="UTF-8"/>
<xsl:template match="/">
<html>
    <head>
    <title>Lezioni di linguistica Ferdinand de Saussure - Progetto esame codifica di testi</title>
    <link href="stil.css" rel="stylesheet" type="text/css"/>
  <script type="text/javascript" src="javascript.js"></script>
    </head>

<body>
  <h1 class="tit"><xsl:attribute name="style">text-align: center</xsl:attribute>
    <xsl:value-of select="//tei:fileDesc/tei:titleStmt/tei:title[@type='main']"/></h1>
  <h2 class="tit"><xsl:attribute name="style">text-align: center</xsl:attribute>
    <xsl:value-of select="//tei:fileDesc/tei:titleStmt//tei:author"/></h2>
<xsl:comment>Menu</xsl:comment>
    <nav class="navbar">
      <a href="#Pres" class="alink">Presentazione </a>
      <a href="#Pag16" class="alink">Pagina 16 </a>
      <a href="#Pag17" class="alink">Pagina 17 </a>
      <a href="#Glossario" class="alink">Elemneti Terminologici </a>
      <a href="#Persone" class="alink">Persone </a>
      <a href="#Luoghi" class="alink">Luoghi </a>
      <a href="#Biblio" class="alink">Bibliografia </a>
    </nav>

    <!--presentazione-->
    <xsl:comment>Presentazione</xsl:comment>
    <div id="Pres">
      <p class="titoletto">Presentazione</p>
      <xsl:element name="p">
      <xsl:value-of select="//tei:fileDesc/tei:titleStmt/tei:title"/> di <xsl:value-of select="//tei:fileDesc/tei:titleStmt//tei:author"/>
      </xsl:element>
      <p><span class="first">Storia:    </span><xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:history//tei:p[@xml:id='storiamain']"/></p>
      <p><span class="first">Datazione lezioni:    </span>Prima conferenza <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:history//tei:origDate[@n='1']"/>, Seconda conferenza <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:history//tei:origDate[@n='2']"/>, Terza conferenza <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:history//tei:origDate[@n='3']"/></p>
      <p><span class="first">Collocazione:    </span><xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:collection"/>, <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:institution"/>, <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:country"/></p>
      <p><span class="first">Lingua principale:    </span><xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:msContents//tei:textLang"/></p>
      <p><span class="first">Materiale:    </span><xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:physDesc//tei:material"/></p>
      <p><span class="first">Numero di pagine:    </span><xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:physDesc//tei:extent"/></p>
      <p><span class="first">Fruizione:    </span><xsl:value-of select="//tei:fileDesc//tei:publicationStmt//tei:availability"/> (Consultazione online presso: <xsl:value-of select="//tei:fileDesc//tei:publicationStmt//tei:publisher"/>)</p>
      <p><span class="first">Dettagli sulle seguenti pagine codificate:    </span><xsl:value-of select="//tei:profileDesc//tei:abstract"/><br/><xsl:value-of select="//tei:editorialDecl//tei:correction"/></p>

    </div>
<xsl:comment>legenda</xsl:comment>
  <div class="legenda">
  <h3 class="info">INFORMZIONI SULLA TRASCRIZIONE</h3>
  <p class="text18">È possibile cliccare su alcuni elementi terminologici, antroponimi e toponimi per avere maggiori infromazioni!</p>
    <div class="contg"><div class="griglia1"><div class="coloreterm">Elementi terminologici</div>
    <div class="colorestran">Termini stranieri</div>
    <div class="colorepers">Antroponimi</div></div>
    <div class="griglia1"><div class="coloreadd">Aggiunte</div>
    <div class="coloreabbr">Abbreviazioni</div>
    <div class="coloreluoghi">Toponimi</div></div></div>
    <div class="check"><input type="checkbox" id="checkbox1" onclick="display()"/><span class="text18">Clicca per osservare alcune <span class="parole">parole</span> originali del manoscritto.</span></div> 
  </div>
   
<xsl:comment>PAGINA 16</xsl:comment>
<!--PAGINA 16-->
  <div id="Pag16">
    <p class="titoletto" id="titoletto">Pagina 16</p>
    <div id="gridcont">
      <div id="grid1">
      <xsl:element name="img">
      <xsl:attribute name="class">pagine1</xsl:attribute>
          <xsl:attribute name="src">
          <xsl:value-of select="//tei:graphic[@xml:id='p_16']/@url"/>
          </xsl:attribute>
      </xsl:element>
      </div>

     <div class="trascrizione1" id="grid1">
      <xsl:apply-templates select="//tei:text/tei:body//tei:fw[@xml:id='numeropag16_handwrite']"/>
      <xsl:apply-templates select="//tei:div[@xml:id='testo_p16']"/>
    </div>
    </div><!--si chiude il gridcont -->
    <xsl:comment>button per il retro e traduzione</xsl:comment>
    <button type="submit" class="a16retro" id="a16retro" onclick="retro16()">Mostra retro</button>
    <button type="submit" class="traduzione16" id="traduzione16" onclick="traduzione16()">Mostra traduzione</button>

<xsl:comment>immagine retro</xsl:comment>
    <div id="p16retro">
    <xsl:element name="img">
        <xsl:attribute name="id">p16retro_</xsl:attribute>
            <xsl:attribute name="src">
            <xsl:value-of select="//tei:graphic[@xml:id='p_16r']/@url"/>
            </xsl:attribute>
    </xsl:element>
    </div>

<xsl:comment>traduzione pagina</xsl:comment>
    <div id="traduzione_pag16">
    <p class="text18">Clicca su un paragafo per sapere a quale frase corrisponde.</p>
    <xsl:for-each select="//tei:div[@xml:id='trad_p16']/tei:ab">
      <p class="linetrad"><a href="#{@corresp}" >
      <xsl:value-of select="."/></a></p>
    </xsl:for-each>
    </div>
    </div>

<xsl:comment>PAGINA 17</xsl:comment>
<!--PAGINA 17-->
  <div id="Pag17">
    <p class="titoletto">Pagina 17</p>
    <div id="gridcont">
      <div id="grid1">
      <xsl:element name="img">
      <xsl:attribute name="class">pagine2</xsl:attribute>
          <xsl:attribute name="src">
          <xsl:value-of select="//tei:graphic[@xml:id='p_17']/@url"/>
          </xsl:attribute>
        </xsl:element>
      </div>

     <div class="trascrizione2" id="grid1">
      <p><xsl:value-of select="//tei:text/tei:body//tei:fw[@xml:id='numeropag17_handwrite']"/></p>
      <xsl:apply-templates select="//tei:div[@xml:id='testo_p17']"/>
    </div>
    </div><!--si chiude il gridcont -->

<xsl:comment>buttons</xsl:comment>
    <button type="submit" class="a17retro" id="a17retro" onclick="retro17()">Mostra retro</button>
    <button type="submit" class="traduzione17" id="traduzione17" onclick="traduzione17()">Mostra traduzione</button>

<xsl:comment>retro pagina 17</xsl:comment>
    <div id="p17retro">
    <xsl:element name="img">
        <xsl:attribute name="id">p17retro_</xsl:attribute>
            <xsl:attribute name="src">
            <xsl:value-of select="//tei:graphic[@xml:id='p_17r']/@url"/>
            </xsl:attribute>
    </xsl:element>
    </div>

<xsl:comment>traduzione pag 17</xsl:comment>
    <div id="traduzione_pag17">
    <p class="text18">Clicca su un paragafo per sapere a quale frase corrisponde.</p>
    <xsl:for-each select="//tei:div[@xml:id='trad_p17']/tei:ab">
      <p class="linetrad"><a href="#{@corresp}" >
      <xsl:value-of select="."/></a></p>
    </xsl:for-each>
    </div>
    </div>

  <xsl:comment>Glossario termini</xsl:comment>
<!--Glossario termini-->
 <div id="Glossario">
    <p class="titoletto1"> <xsl:value-of select="//tei:back//tei:list[@type='terminology']/tei:head"/> - Termini</p> 
  <div class="Glossario">
  <xsl:for-each select="//tei:back//tei:list[@type='terminology']//tei:term[@xml:lang='fr']">
    <div id="{@xml:id}" class="termine">
    <xsl:variable name="tmpid" select="./@xml:id"/>
      <p class="nomegrande"><span class="first"><xsl:value-of select="."/></span></p>
      <p><span class="first">Traduzione: </span><xsl:value-of select="../tei:term[@xml:lang='it']"/></p>
      <p><span class="first">Definizione: </span><xsl:value-of select="../..//tei:gloss[@target=$tmpid]"/></p>
      </div> <br/>
    </xsl:for-each>
    </div>
  </div>

<xsl:comment>Glossario persone</xsl:comment>
<!--Glossario persone-->
  <div id="Persone">
    <p class="titoletto1">Glossario - <xsl:value-of select="//tei:back//tei:listPers/tei:head"/></p>
    <div class="Persone">
  <xsl:for-each select="//tei:back//tei:listPerson//tei:person">
    <div id="{@xml:id}" class="persona">
      <p class="nomegrande"><span class="first"><xsl:value-of select="./tei:persName"/></span></p>
      <p><span class="first">Occupazione: </span><xsl:value-of select=".//tei:occupation"/></p>
      <p><span class="first">Data di nascita: </span><xsl:value-of select=".//tei:birth/tei:date"/></p>
      <p><span class="first">Luogo di nascita: </span><xsl:value-of select=".//tei:birth//tei:settlement"/>, <xsl:value-of select=".//tei:birth//tei:country"/></p>
      <p><span class="first">Data di morte: </span><xsl:value-of select=".//tei:death/tei:date"/></p>
      <p><span class="first">Luogo di morte: </span><xsl:value-of select=".//tei:death//tei:settlement"/>, <xsl:value-of select=".//tei:death//tei:country"/></p>
    </div> <br/>
    </xsl:for-each>
    </div>
  </div>

<xsl:comment>glossario luoghi</xsl:comment>
  <!--Glossario luoghi-->
  <div id="Luoghi">
    <p class="titoletto1">Glossario - <xsl:value-of select="//tei:back//tei:listPlace/tei:head"/></p>
    <div class="Luoghi">
  <xsl:for-each select="//tei:back//tei:listPlace//tei:place">
    <div id="{@xml:id}" class="luogo">
      <p class="nomegrande"><span class="first"><xsl:value-of select="./tei:placeName"/></span></p>
      <p><span class="first">Stato: </span><xsl:value-of select=".//tei:country"/></p>
      <p><span class="first">Descrizione: </span><xsl:value-of select=".//tei:desc"/></p>
      </div> <br/>
    </xsl:for-each>
    <p class="org"><xsl:value-of select="//tei:back//tei:listOrg/tei:head"/></p>
    <xsl:for-each select="//tei:back//tei:listOrg//tei:org">
    <div id="{@xml:id}" class="luogo">
      <p class="nomegrande"><span class="first"><xsl:value-of select="./tei:orgName"/></span></p>
      <p><span class="first">Stato: </span><xsl:value-of select=".//tei:placeName"/></p>
      <p><span class="first">Descrizione: </span><xsl:value-of select=".//tei:desc"/></p>
      </div> <br/>
    </xsl:for-each>
    </div>
  </div>

  <xsl:comment>Bibliografia</xsl:comment>
<!--Bibliografia-->
  <div id="Biblio">
    <p class="titoletto1"><xsl:value-of select="//tei:back//tei:listBibl/tei:head"/></p>
    <xsl:for-each select="//tei:back//tei:listBibl//tei:bibl[@corresp='cit']">
    <li><xsl:element name="span">
      <xsl:attribute name="id">autore</xsl:attribute>
      <xsl:value-of select=".//tei:author"/>
    </xsl:element><xsl:text>, </xsl:text>
    <xsl:element name="span">
      <xsl:attribute name="id">titololibro</xsl:attribute>
      <xsl:value-of select="./tei:title[@type='main']"/>
    </xsl:element> <xsl:text>, </xsl:text>
    <xsl:element name="span">
      <xsl:attribute name="id">pubblicare</xsl:attribute>
      <xsl:value-of select=".//tei:publisher"/>
    </xsl:element> <xsl:text>, </xsl:text>
    <xsl:element name="span">
      <xsl:attribute name="id">luogopubbl</xsl:attribute>
      <xsl:value-of select=".//tei:pubPlace"/>
    </xsl:element> <xsl:text> </xsl:text>
     <xsl:text disable-output-escaping="yes">(</xsl:text><xsl:value-of select=".//tei:note"/><xsl:text disable-output-escaping="yes">)</xsl:text><br/>
 </li> </xsl:for-each>

<xsl:comment>About</xsl:comment>
   <p class="titoletto1">About</p>
   <xsl:element name="p">
      <xsl:attribute name="class">codifica</xsl:attribute>
      <xsl:value-of select="//tei:fileDesc//tei:editionStmt//tei:respStmt[@xml:id='codifica']//tei:resp"/><xsl:text>: </xsl:text><xsl:value-of select="//tei:fileDesc//tei:editionStmt//tei:respStmt[@xml:id='codifica']//tei:name[@ref='#SB']"/>
    </xsl:element>
    <xsl:element name="p">
      <xsl:attribute name="class">progetto</xsl:attribute>
      <xsl:value-of select="//tei:fileDesc//tei:editionStmt//tei:respStmt[@xml:id='progettoprof']//tei:resp"/><xsl:text>: </xsl:text><xsl:value-of select="//tei:fileDesc//tei:editionStmt//tei:respStmt[@xml:id='progettoprof']//tei:name[@ref='#AMDG']"/>
    </xsl:element>
    <xsl:element name="p">
      <xsl:attribute name="class">edizionedig</xsl:attribute>
      <xsl:value-of select="//tei:fileDesc//tei:editionStmt//tei:edition"/>
    </xsl:element>
    <xsl:element name="p">
      <xsl:attribute name="class">trascr</xsl:attribute>
      <xsl:value-of select="//tei:fileDesc//tei:editionStmt//tei:respStmt[@xml:id='trascrizione']//tei:resp"/><xsl:value-of select="//tei:fileDesc//tei:editionStmt//tei:respStmt[@xml:id='trascrizione']//tei:name[@ref='#BE']"/>
    </xsl:element>
    <xsl:element name="p">
      <xsl:attribute name="class">trad</xsl:attribute>
      <xsl:value-of select="//tei:fileDesc//tei:editionStmt//tei:respStmt[@xml:id='traduzione']//tei:resp"/><xsl:value-of select="//tei:fileDesc//tei:editionStmt//tei:respStmt[@xml:id='traduzione']//tei:name[@ref='#EF']"/>
    </xsl:element>
    <xsl:element name="p">
      <xsl:attribute name="class">ricostrdate</xsl:attribute>
      <xsl:value-of select="//tei:fileDesc//tei:editionStmt//tei:respStmt[@xml:id='ricostrdate']//tei:resp"/><xsl:value-of select="//tei:fileDesc//tei:editionStmt//tei:respStmt[@xml:id='ricostrdate']//tei:name[@ref='#AC']"/>
    </xsl:element>
  </div>
</body>
</html>
</xsl:template>

<!--Suddivisione in righe trascrizione-->
<xsl:template match="//tei:text//tei:div//tei:ab/tei:lb">
  <xsl:for-each select=".">
    <p class="lineactive" id="{@corresp}"></p>
  </xsl:for-each>
</xsl:template>

<!--Numero pagine-->
<xsl:template match="//tei:text/tei:body//tei:fw">
  <p id="{@facs}">
    <xsl:value-of select="."/></p>
</xsl:template>

<!--cancellazioni-->
<xsl:template match="//tei:text//tei:div//tei:del">
  <xsl:element name="span">
      <xsl:attribute name="class">canc</xsl:attribute>
      <xsl:value-of select="."/>
  </xsl:element>
</xsl:template>

<!--Supplied-->
<xsl:template match="//tei:text//tei:div//tei:supplied">
    <xsl:element name="span">
      <xsl:attribute name="class">suppl</xsl:attribute>
      <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!--Nomi persona-->
<xsl:template match="//tei:text//tei:div//tei:name">
    <a class="persname" href="{@ref}"><xsl:value-of select="."/></a>
</xsl:template>

<!--Nomi luoghi-->
<xsl:template match="//tei:text//tei:div//tei:placeName">
    <a class="luoghiname" href="{@ref}"><xsl:value-of select="."/></a>
</xsl:template>

<!--Termini-->
<xsl:template match="//tei:text//tei:div//tei:term">
    <a class="termname" href="{@ref}"><xsl:value-of select="."/></a>
</xsl:template>

<!--Elementi sottolineati-->
<xsl:template match="//tei:text//tei:div//tei:emph[@rend='underline']">
    <span class="sottolinea"><xsl:value-of select="."/></span>
</xsl:template>

<!--Termini stranieri-->
<xsl:template match="//tei:text//tei:div//tei:mentioned">
  <xsl:element name="span">
      <xsl:attribute name="class">mentioned</xsl:attribute>
      <xsl:value-of select="."/>
  </xsl:element>
</xsl:template>

<!--Choice, sic e corr-->
<xsl:template match="//tei:text//tei:div//tei:choice[@n='sc']">
  <span class="choice" id="choice">
    <xsl:element name="span">
    <xsl:attribute name="id">sic</xsl:attribute>
    <xsl:attribute name="class">sic</xsl:attribute>
    <xsl:value-of select="./tei:sic"/></xsl:element>
  <xsl:element name="span">
    <xsl:attribute name="id">corr</xsl:attribute>
    <xsl:attribute name="class">corr</xsl:attribute>
    <xsl:value-of select="./tei:corr"/></xsl:element></span>
</xsl:template>

<!--Choice, orig e reg-->
<xsl:template match="//tei:text//tei:div//tei:choice[@n='or']">
  <span class="choiceor" id="choiceor">
    <xsl:element name="span">
    <xsl:attribute name="id">orig</xsl:attribute>
    <xsl:attribute name="class">orig</xsl:attribute>
    <xsl:value-of select="./tei:orig"/></xsl:element>
  <xsl:element name="span">
    <xsl:attribute name="id">reg</xsl:attribute>
    <xsl:attribute name="class">reg</xsl:attribute>
    <xsl:value-of select="./tei:reg"/></xsl:element></span>
</xsl:template>

<!--Termini abbreviati-->
<xsl:template match="tei:abbr">
  <xsl:element name="span">
    <xsl:attribute name="class">abbr</xsl:attribute>
    <xsl:value-of select="."/></xsl:element>
</xsl:template>

<!--Termini estesi-->
<xsl:template match="//tei:text//tei:div//tei:expan">
  <xsl:element name="span">
    <xsl:attribute name="class">expan</xsl:attribute>
    <xsl:value-of select="."/></xsl:element>
</xsl:template>

<!--Aggiunte-->
<xsl:template match="tei:add[not(self::tei:add[@n='nostil'])]">
  <xsl:element name="span">
    <xsl:attribute name="class">add</xsl:attribute>
    <xsl:value-of select="."/></xsl:element>
</xsl:template>

</xsl:stylesheet>