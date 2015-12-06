<?xml version="1.0"?>
<!-- Namespace -->
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="*">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="text()">
	<xsl:apply-templates/>
</xsl:template>
<xsl:template match="/">
<html>
<head>
	<title>shift swapper</title>
	<link rel="stylesheet" type="text/css" href="bootstrap-3.3.5-dist/bootstrap-3.3.5-dist/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="./CSS/style.css" />
</head>
<body>
	<div class="container-fluid">
	
		<h1>Tuesday</h1>
		
		<xsl:for-each select="//tuesday/timeslot">
			<xsl:if test="(@id='1') or (@id='13')">
				<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
				<!--<div class="row">-->
			</xsl:if>
			<div class="oneHour col-sm-1">
				<!--<h1><xsl:value-of select="/time"/></h1>-->
				<p><xsl:apply-templates select="shift/time"/></p>
			</div>
			<xsl:if test="(@id='12') or (@id='24')">
				<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			</xsl:if>
		</xsl:for-each>
	
		<h1>Wednesday</h1>
		
		<xsl:for-each select="//wednesday/timeslot">
			<xsl:if test="(@id='1') or (@id='13')">
				<!--<div class="row">-->
				<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
			</xsl:if>
			<div class="oneHour col-sm-1">
				<!--<h1><xsl:value-of select="time" /></h1>-->
				<p><xsl:apply-templates select="shift/time"/></p>
			</div>
			<xsl:if test="(@id='12') or (@id='24')">
				<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			</xsl:if>
		</xsl:for-each>
		
		<h1>Thursday</h1>
		
		<xsl:for-each select="//thursday/timeslot">
			<xsl:if test="(@id='1') or (@id='13')">
				<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
			</xsl:if>
			<div class="oneHour col-sm-1">
				<!--<h1><xsl:value-of select="time" /></h1>-->
				<p><xsl:apply-templates select="shift/time"/></p>
			</div>
			<xsl:if test="(@id='12') or (@id='24')">
				<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			</xsl:if>
		</xsl:for-each>
		
	</div>
</body>
</html>
</xsl:template>

<xsl:template match="time">

   <xsl:value-of select="."/>

</xsl:template>
</xsl:transform>