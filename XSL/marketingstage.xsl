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
  


	    <div id="talkcontent">
		<link rel="stylesheet" type="text/css" href="./CSS/style.css"/>
	    <div id="daysnav">

	    		
	    	 <!-- code taken from: http://getbootstrap.com/components/#btn-groups -->
				<div class="btn-group btn-group-justified" role="group" aria-label="...">
				  <div class="btn-group" role="group">
				    <button type="button" id="btnTue"  class="btn btn-default">Tuesday</button>
				  </div>
				  <div class="btn-group" role="group">
				    <button type="button" id="btnWed"  class="btn btn-default">Wenesday</button>
				  </div>
				  <div class="btn-group" role="group">
				    <button type="button" id="btnThur"  class="btn btn-default">Thursday</button>
				  </div>
				</div>
           
	    	</div>
	    	
	    	<div id="talkwrapper">
	    		
	    	 	<ul id="talktimes">
	    	 	
		    		 <li class="talkholder " onclick="location.href='#';" style="cursor:pointer">
		    		   
		    		   <div class="time hidetue">
		    			 <p> <xsl:apply-templates select="//marketingstage/tuesday/morning/talk[1]/time/start"/> </p>
		    		   </div>

		    		    <div class="time hidewed">
		    		    	
		    			 	<p> <xsl:apply-templates select="//marketingstage/wenesday/morning/talk[1]/time/start"/> </p>
		    		    </div>
		    		    
		    		     <div class="time hidethur">
		    		      <p> <xsl:apply-templates select="//marketingstage/thursday/morning/talk[1]/time/start"/> </p>
		    		    </div>

		    		   <div class="contentWrapper hidetue">
	     				 <h1 class="talktitle" ><xsl:apply-templates select="//marketingstage/tuesday/morning/talk[1]/details/title"/></h1>
		     				 <p><xsl:apply-templates select="//marketingstage/tuesday/morning/talk[1]/details/description"/> </p>
		     				 <!-- code learned from http://stackoverflow.com/questions/45904/how-do-you-add-an-image -->
		     				 <img width="50px" height="50px" src='{//marketingstage/tuesday/morning/talk[1]/speaker/image}'></img>
		     				 <span><xsl:apply-templates select="//marketingstage/tuesday/morning/talk[1]/speaker"/> </span>
		     				  <br></br>
		     				 <span><xsl:apply-templates select="//marketingstage/tuesday/morning/talk[1]/speaker/info"/> </span>
		    			</div>

		    			<div class="contentWrapper hidewed">
			    			 <h1 class="talktitle"><xsl:apply-templates select="//marketingstage/wenesday/morning/talk[1]/details/title"/></h1>
		     				 <p><xsl:apply-templates select="//marketingstage/wenesday/morning/talk[1]/details/description"/> </p>
		     				 <!-- code learned from http://stackoverflow.com/questions/45904/how-do-you-add-an-image -->
		     				 <img width="50px" height="50px" src='{//marketingstage/wenesday/morning/talk[1]/speaker/image}'></img>
		     				 <span><xsl:apply-templates select="//marketingstage/wenesday/morning/talk[1]/speaker"/> </span>
		     				  <br></br>
		     				 <span><xsl:apply-templates select="//marketingstage/wenesday/morning/talk[1]/speaker/info"/> </span>
		    			</div>
		    			
		    			<div class="contentWrapper hidethur">
		    				 <h1 class="talktitle" ><xsl:apply-templates select="//marketingstage/thursday/morning/talk[1]/details/title"/></h1>
		     				 <p><xsl:apply-templates select="//marketingstage/thursday/morning/talk[1]/details/description"/> </p>
		     				 <!-- code learned from http://stackoverflow.com/questions/45904/how-do-you-add-an-image -->
		     				 <img width="50px" height="50px" src='{//marketingstage/thursday/morning/talk[1]/speaker/image}'></img>
		     				 <span><xsl:apply-templates select="//marketingstage/thursday/morning/talk[1]/speaker"/> </span>
		     				  <br></br>
		     				 <span><xsl:apply-templates select="//marketingstage/thursday/morning/talk[1]/speaker/info"/> </span>
		    			</div>
		    				
		    			

		    		 </li>

		    		 <li class="talkholder " onclick="location.href='#';" style="cursor:pointer">
		    			
		    			 
		    		   <div class="time hidetue">
		    			
		    		   </div>

		    		    <div class="time hidewed">
		    		    	
		    		       <p> <xsl:apply-templates select="//marketingstage/wenesday/afternoon/time/start"/> </p>
		    		    </div>
		    		    
		    		     <div class="time hidethur">
		    		    
		    		    </div>
		    		    
		    		    

		    		   <div class="contentWrapper hidetue"  id="tueDiv">
	     					 <h1 class="talktitle"><xsl:apply-templates select="//marketingstage/tuesday/afternoon/talk/details/title"/></h1>
		     				 <p><xsl:apply-templates select="//marketingstage/tuesday/afternoon/talk/details/description"/> </p>
		     				 <!-- code learned from http://stackoverflow.com/questions/45904/how-do-you-add-an-image -->
		     				 <img width="50px" height="50px" src='{//marketingstage/tuesday/afternoon/talk/speaker/image}'></img>
		     				 <span><xsl:apply-templates select="//marketingstage/tuesday/afternoon/talk/speaker"/> </span>
		     				  <br></br>
		     				 <span><xsl:apply-templates select="//marketingstage/tuesday/afternoon/talk/speaker/info"/> </span>
		    			</div>

		    			<div class="contentWrapper hidewed"  id="wedDiv">
			    			 <h1 class="talktitle"><xsl:apply-templates select="//marketingstage/tuesday/afternoon/talk/details/title"/></h1>
		     				 <p><xsl:apply-templates select="//marketingstage/tuesday/afternoon/talk/details/description"/> </p>
		     				 <!-- code learned from http://stackoverflow.com/questions/45904/how-do-you-add-an-image -->
		     				 <img width="50px" height="50px" src='{//marketingstage/tuesday/afternoon/talk/speaker/image}'></img>
		     				 <span><xsl:apply-templates select="//marketingstage/tuesday/afternoon/talk/speaker"/> </span>
		     				  <br></br>
		     				 <span><xsl:apply-templates select="//marketingstage/tuesday/afternoon/talk/speaker/info"/> </span>
		    			</div>
		    			
		    			<div class="contentWrapper hidethur"  id="thurDiv">
		    					 <h1 class="talktitle"><xsl:apply-templates select="//marketingstage/tuesday/afternoon/talk/details/title"/></h1>
		     				 <p><xsl:apply-templates select="//marketingstage/tuesday/afternoon/talk/details/description"/> </p>
		     				 <!-- code learned from http://stackoverflow.com/questions/45904/how-do-you-add-an-image -->
		     				 <img width="50px" height="50px" src='{//marketingstage/tuesday/afternoon/talk/speaker/image}'></img>
		     				 <span><xsl:apply-templates select="//marketingstage/tuesday/afternoon/talk/speaker"/> </span>
		     				  <br></br>
		     				 <span><xsl:apply-templates select="//marketingstage/tuesday/afternoon/talk/speaker/info"/> </span>
		    			</div>
		    				
	                       
		    		 </li>


		    		 <li class="talkholder " onclick="location.href='#';" style="cursor:pointer">
		    			
		    	         <div class="time hidetue">
		    			
		    		   </div>

		    		    <div class="time hidewed">
		    		    
		    		    </div>
		    		    
		    		     <div class="time hidethur">
		    		    
		    		    </div>
		    		    
		    		    

		    		   <div class="contentWrapper hidetue">
	     				
		    			</div>

		    			<div class="contentWrapper hidewed">
		    				
		    			</div>
		    			
		    			<div class="contentWrapper hidethur">
		    				
		    			</div>
	                       
		    		 </li>

	    		</ul>
	    	</div>


	    </div>
	
 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript">
        
      
    </script>

    <script src="bootstrap-3.3.5-dist/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>

   


</xsl:template>


<!-- 

   * rules to apply to xml to match templates
   
   * These are the rules for all of the talks 
   
   * All that needs to be changed is the expersions
   
   * Also new rules can be added to display certain data, but make sure they dont conflict with already existing
     

-->

<xsl:template match="start">

   <xsl:value-of select="."/>

</xsl:template>

<xsl:template match="title">

   <xsl:value-of select="."/>

</xsl:template>

<xsl:template match="description">

   <xsl:value-of select="."/>

</xsl:template>

<xsl:template match="speaker">

   <xsl:value-of select="name"/>

</xsl:template>

<xsl:template match="info">

   <xsl:value-of select="."/>

</xsl:template>


<!--<xsl:template match="*">-->
<!--	<xsl:value-of select="material[last()]"/>-->
<!--</xsl:template>-->

<!--<xsl:template match="height">-->
<!--  <xsl:value-of select="/."/>-->
<!--</xsl:template>-->


</xsl:transform>


