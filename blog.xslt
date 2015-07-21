<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">	


	<xsl:template match="/blog">
	<html>


	<head>
	<title>NewsZone</title>	
    <link rel="stylesheet" type="text/css" href="blog.css"/>
	</head>
	
	<body>
	
       <div id="navi">
        <ul>
        <li><a href="blog.xml">Home</a></li>
        <li><a href="about.html">About Me</a></li>
         <li><a href="contactme.html">Contact Me</a></li>
        </ul>
      </div>

    		<h1><img src="images/newslogo.gif"/></h1>
    		<h1><xsl:value-of select="/blog/blogtitle/text()"/></h1>
    		<hr/>
    		<h2>Welcome to my personal news blog, where I talk about the lastest sports news, technologies and global events throughout the world.</h2>
    		<hr/>

      <div class="blogEntries">
        <xsl:for-each select="blogitems">  
        <xsl:sort select="date" order="ascending"/>       
         <table id="blogposts">
         <tr><td id="headline"><xsl:value-of select="headline"/></td></tr>             
         <tr><td id="date"><xsl:value-of select="date"/></td></tr>
         <tr><td id="time"><xsl:value-of select="time"/></td></tr>         
         <tr><td id="author"><xsl:value-of select="author"/></td></tr>
         <tr><img id="image" src="{image}"></img></tr>
         <tr><td id="post"><xsl:value-of select="post"/></td></tr>
         <tr>
         <p>Source:<a href=""><xsl:value-of select="source"/></a></p>
         <td><xsl:attribute name="href"><xsl:value-of select="source"/></xsl:attribute></td>
        </tr>
        <tr><td id="tags"><xsl:value-of select="tags"/></td></tr>
         </table>
      </xsl:for-each> 
      </div>
	</body>
  
	</html>
	</xsl:template>
</xsl:stylesheet> 