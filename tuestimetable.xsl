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
	<title>Web summit Staff App</title>
		<link rel="stylesheet" type="text/css" href="bootstrap-3.3.5-dist/bootstrap-3.3.5-dist/css/bootstrap.min.css"/>

		<link rel="stylesheet" type="text/css" href="CSS/style.css"/>

		<!--- Links jquery internally, a makes use of Jquery UI for widgits -->
		
	    <script type="text/javascript" src="jquery-ui-1.11.4.custom/external/jquery/jquery.js"></script>

	    <script type="text/javascript" src="jquery-ui-1.11.4.custom/jquery-ui.min.js"></script>

	    <script src="bootstrap-3.3.5-dist/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>

	    <script type="text/JavaScript" src="JS/dropDownBehaviour.js" ></script>

	    <script type="text/JavaScript" src="JS/DragAndDropbehaviour.js"></script>

	    <script src="JS/frameBehaviour.js" type="text/JavaScript"></script>
	    
</head>
<body>
<div id="wrapper">
	<div class="row fixednav" style="z-index:100">
		<div class="col-xs-3" >
			<div id="sidenav" class="navbar-inverse vis">
				<div class="tempbtn">
					<ul>
						<li id="home" class="btndesign">Home</li>
						<li id="test" class="btndesign" >Test</li>
						<!--
					<input type="button" class="btndesign" value="page1" id="home" >Home</input>
					<input type="button" class="btndesign" value="test" id="test" ></input>-->
				</ul>
				</div>
				<div id="rssfeed" >
					<!-- start feedwind code --><script type="text/javascript">document.write('\x3Cscript type="text/javascript" src="' + ('https:' == document.location.protocol ? 'https://' : 'http://') + 'feed.mikle.com/js/rssmikle.js">\x3C/script>');</script><script type="text/javascript">(function() {var params = {rssmikle_url: "https://blog.websummit.net/",rssmikle_frame_width: "300",rssmikle_frame_height: "400",frame_height_by_article: "0",rssmikle_target: "_blank",rssmikle_font: "Arial, Helvetica, sans-serif",rssmikle_font_size: "12",rssmikle_border: "off",responsive: "off",rssmikle_css_url: "",text_align: "left",text_align2: "left",corner: "off",scrollbar: "on",autoscroll: "on",scrolldirection: "up",scrollstep: "3",mcspeed: "20",sort: "New",rssmikle_title: "on",rssmikle_title_sentence: "Web Summit",rssmikle_title_link: "https://blog.websummit.net/",rssmikle_title_bgcolor: "#0051C9",rssmikle_title_color: "#FFFFFF",rssmikle_title_bgimage: "",rssmikle_item_bgcolor: "#303030",rssmikle_item_bgimage: "",rssmikle_item_title_length: "55",rssmikle_item_title_color: "#4A62FF",rssmikle_item_border_bottom: "on",rssmikle_item_description: "on",item_link: "off",rssmikle_item_description_length: "150",rssmikle_item_description_color: "#FFFFFF",rssmikle_item_date: "gl1",rssmikle_timezone: "Etc/GMT",datetime_format: "%e.%m.%Y %l:%M %p",item_description_style: "text+tn",item_thumbnail: "crop",item_thumbnail_selection: "auto",article_num: "15",rssmikle_item_podcast: "off",keyword_inc: "",keyword_exc: ""};feedwind_show_widget_iframe(params);})();</script><div style="font-size:10px; text-align:center; width:300px;"><a href="http://feed.mikle.com/" target="_blank" style="color:#CCCCCC;">RSS Feed Widget</a><!--Please display the above link in your web page according to Terms of Service.--></div><!-- end feedwind code -->
				</div>
			</div>
		</div>
	<div class="col-xs-9">
	</div>
	</div>
	<!--<div class="row">
	<div class="col-md-12">  -->
	<nav class = "navbar-fixed-top navbar-inverse" id = "topnav">
       <div class="container-fluid">
       			<button class = "navbar-toggle" id="sidenavbtn" >
       				<span class="glyphico glyphicon-th-listn yellow" aria-hidden="true"></span>
       			</button>
          
               <button class = "navbar-toggle" data-toggle = "collapse" data-target = ".navCollapse">
               	  
                <span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>

               </button>
           

           <div class="collapse navbar-collapse navCollapse" id = "navClass"> 
 				<ul class = "nav navbar-nav navbar-right" id="topNav">
                    <li class = "navPad dropdown"><a href="#">
                    <span class="glyphicon glyphicon-globe" aria-hidden="true"></span>
                    Notifications </a>
                   		 <ul id = "dropdownNav" class="dropdown-menu">
                    		<li><a href="">1 New notification</a></li>
                    		<li><a href="">Barry has been creeping on you</a></li>
                    	</ul>
                    </li>
                    <li id = "dropable" class= "navPad"><a href="#"><span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
                    	Fav's</a></li>
                   

 				</ul>
           </div>

       </div>

	</nav>
	<!--</div>
	</div> -->

	    <div id="talkcontent">

	    	<div id="daysnav">
               <ul class="nav nav-tabs" id="daysNav">
                 <li role="presentation" class="active"><a href="">Tuesday</a></li>
                 <li role="presentation" class="active"><a href="">Wenesday</a></li>

                 <li role="presentation" class="active"><a href="">Friday</a></li>


               </ul>
	    	</div>
	    	
	    	<div id="talkwrapper">
	    	 <ul id="talktimes">
		    		 <li class="talkholder draggable">                      
		    			
		    		   <div class="time">
		    			 <span>Time</span>
		    			
		    			 <p> <xsl:apply-templates select="//datastage/wenesday/morning/time/start"/> </p>
		    		   </div>

		    		   <div class="contentWrapper">
	     				 <img src= '' alt="image"><xsl:apply-templates select="//datastage/wenesday/morning/speaker/image"/> </img>
	     				 <h1><xsl:apply-templates select="//datastage/wenesday/morning/talk/title"/></h1>
	     				 <span><xsl:apply-templates select="//datastage/wenesday/morning/talk/description"/> </span>
		    			</div>

		    		 </li>

		    		 <li class="talkholder draggable">
		    			
		    			  <div class="time">
		    				<span>Time</span>
		    			  
		    			    <p> 10:30 </p>
		    			  </div>

		    			  <div class="contentWrapper">
	     						<span> time</span>
		    			  </div>

		    				
	                       
		    		 </li>


		    		 <li class="talkholder draggable">
		    			
		    			  <div class="time">
		    				<span>Time</span>
		    			  
		    			    <p> 10:30 </p>
		    			  </div>

		    			  <div class="contentWrapper">
	     						<span> time</span>
		    			  </div>

		    				
	                       
		    		 </li>

	    		</ul>

	    	</div>


	    </div>
	</div>

 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    

    <script src="bootstrap-3.3.5-dist/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
								
</body>
    </html>
   


</xsl:template>


<!-- rules to apply to xml to match templates -->

<xsl:template match="start">

   <xsl:value-of select="."/>

</xsl:template>

<!--<xsl:template match="*">-->
<!--	<xsl:value-of select="material[last()]"/>-->
<!--</xsl:template>-->

<!--<xsl:template match="height">-->
<!--  <xsl:value-of select="/."/>-->
<!--</xsl:template>-->


</xsl:transform>


