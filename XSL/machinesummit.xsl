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

	    <div id="daysnav">

	    		
	    	 <!-- code taken from: http://getbootstrap.com/components/#btn-groups -->
				<div class="btn-group btn-group-justified" role="group" aria-label="">
				  <div class="btn-group" role="group">
				    <button type="button" id="btnTue" onclick="testbtn()" class="btn btn-default">Tuesday</button>
				  </div>
				  <div class="btn-group" role="group">
				    <button type="button" id="btnWed" onclick="testbtn()" class="btn btn-default">wednesday</button>
				  </div>
				  <div class="btn-group" role="group">
				    <button type="button" id="btnThur" onclick="testbtn()" class="btn btn-default">Thursday</button>
				  </div>
				</div>
	    	</div>
	    	<div id="talkwrapper">
	    	 	<ul id="talktimes">
	    	 	
		    		 <li class="talkholder draggable" onclick="location.href='#';" style="cursor:pointer">
		    		   
		    		   <div class="time hidetue">
		    			 <p> <xsl:apply-templates select="//machinestage/tuesday/morning/talk/time/start"/> </p>
		    		   </div>

		    		    <div class="time hidewed">
		    		    	<span>Time</span>
		    			 	<p> <xsl:apply-templates select="//machinestage/wednesday/morning/talk/time/start"/> </p>
		    		    </div>
		    		    
		    		     <div class="time hidethur">
		    		      <p> <xsl:apply-templates select="//machinestage/thursday/morning/time/talk/start"/> </p>
		    		    </div>

		    		   <div class="contentWrapper hidetue">
	     				 <h1><xsl:apply-templates select="//machinestage/tuesday/morning/talk/details/title"/></h1>
		     				 <p><xsl:apply-templates select="//machinestage/tuesday/morning/talk/details/description"/> </p>
		     				 <!-- code learned from http://stackoverflow.com/questions/45904/how-do-you-add-an-image -->
		     				 <img width="50px" height="50px" src='{//machinestage/tuesday/morning/talk/details/speaker/image}'></img>
		     				 <span><xsl:apply-templates select="//machinestage/tuesday/morning/talk/details/speaker"/> </span>
		     				  <br></br>
		     				 <span><xsl:apply-templates select="//machinestage/tuesday/morning/talk/details/speaker/info"/> </span>
		    			</div>

		    			<div class="contentWrapper hidewed">
			    			 <h1><xsl:apply-templates select="//machinestage/wednesday/morning/talk/details/title"/></h1>
		     				 <p><xsl:apply-templates select="//machinestage/wednesday/morning/talk/details/description"/> </p>
		     				 <!-- code learned from http://stackoverflow.com/questions/45904/how-do-you-add-an-image -->
		     				 <img width="50px" height="50px" src='{//machinestage/wednesday/morning/talk/speaker/image}'></img>
		     				 <span><xsl:apply-templates select="//machinestage/wednesday/morning/talk/speaker"/> </span>
		     				  <br></br>
		     				 <span><xsl:apply-templates select="//machinestage/wednesday/morning/talk/speaker/info"/> </span>
		    			</div>
		    			
		    			<div class="contentWrapper hidethur">
		    				 <h1><xsl:apply-templates select="//machinestage/thursday/morning/talk/details/title"/></h1>
		     				 <p><xsl:apply-templates select="//machinestage/thursday/morning/talk/details/description"/> </p>
		     				 <!-- code learned from http://stackoverflow.com/questions/45904/how-do-you-add-an-image -->
		     				 <img width="50px" height="50px" src='{//machinestage/thursday/morning/talk/speaker/image}'></img>
		     				 <span><xsl:apply-templates select="//machinestage/thursday/morning/talk/speaker"/> </span>
		     				  <br></br>
		     				 <span><xsl:apply-templates select="//machinestage/thursday/morning/talk/speaker/info"/> </span>
		    			</div>
		    				
		    			

		    		 </li>

		    		 <li class="talkholder draggable" onclick="location.href='#';" style="cursor:pointer">
		    			
		    			 
		    		   <div class="time hidetue">
		    			 tuesday div
		    		   </div>

		    		    <div class="time hidewed">
		    		    	<span>Time</span>
		    		       <p> <xsl:apply-templates select="//machinestage/wednesday/afternoon/talk/time/start"/> </p>
		    		    </div>
		    		    
		    		     <div class="time hidethur">
		    		    	thur div
		    		    </div>
		    		    
		    		    

		    		   <div class="contentWrapper hidetue">
	     				 <span> tuesday div</span>
		    			</div>

		    			<div class="contentWrapper hidewed">
			    			 <h1><xsl:apply-templates select="//machinestage/wednesday/afternoon/talk/details/title"/></h1>
		     				 <p><xsl:apply-templates select="//machinestage/wednesday/afternoon/talk/details/description"/> </p>
		     				 <!-- code learned from http://stackoverflow.com/questions/45904/how-do-you-add-an-image -->
		     				 <img width="50px" height="50px" src='{//machinestage/wednesday/afternoon/talk/speaker/image}'></img>
		     				 <span><xsl:apply-templates select="//machinestage/wednesday/afternoon/talk/speaker"/> </span>
		     				  <br></br>
		     				 <span><xsl:apply-templates select="//machinestage/wednesday/afternoon/talk/speaker/info"/> </span>
		    			</div>
		    			
		    			<div class="contentWrapper hidethur">
		    				thur div
		    			</div>
		    				
	                       
		    		 </li>


		    		 <li class="talkholder draggable" onclick="location.href='#';" style="cursor:pointer">
		    			
		    	         <div class="time hidetue">
		    			 tuesday div
		    		   </div>

		    		    <div class="time hidewed">
		    		    	wed div
		    		    </div>
		    		    
		    		     <div class="time hidethur">
		    		    	thur div
		    		    </div>
		    		    
		    		    

		    		   <div class="contentWrapper hidetue">
	     				 <span> tuesday div</span>
		    			</div>

		    			<div class="contentWrapper hidewed">
		    				wed div
		    			</div>
		    			
		    			<div class="contentWrapper hidethur">
		    				thur div
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


