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

	    <div id="talkcontent">

	    <div id="daysnav">

	    		
	    	 <!-- code taken from: http://getbootstrap.com/components/#btn-groups -->
				<div class="btn-group btn-group-justified" role="group" aria-label="...">
				  <div class="btn-group" role="group">
				    <button type="button" id="btnTue" onclick="btnNav();" class="btn btn-default">Tuesday</button>
				  </div>
				  <div class="btn-group" role="group">
				    <button type="button" id="btnWed"  onclick="btnNav();" class="btn btn-default">Wenesday</button>
				  </div>
				  <div class="btn-group" role="group">
				    <button type="button" id="btnThur" onclick="btnNav();" class="btn btn-default">Thursday</button>
				  </div>
				</div>

           
	    	</div>
	    	
	    
	    	 	<ul id="talktimes">
	    	 	
		    		 <li class="talkholder draggable" onclick="location.href='#';" style="cursor:pointer">
		    		   
		    		   <div class="time hidetue">
		    			 tuesday div
		    		   </div>

		    		    <div class="time hidewed">
		    		    	<span>Time</span>
		    			
		    			 	<p> <xsl:apply-templates select="//datastage/wenesday/morning/time/start"/> </p>
		    		    </div>
		    		    
		    		     <div class="time hidethur">
		    		    	thur div
		    		    </div>

		    		   <div class="contentWrapper hidetue">
	     				 <span> tuesday div</span>
		    			</div>

		    			<div class="contentWrapper hidewed">
			    			 <h1><xsl:apply-templates select="//datastage/wenesday/morning/talk/title"/></h1>
		     				 <p><xsl:apply-templates select="//datastage/wenesday/morning/talk/description"/> </p>
		     				 <!-- code learned from http://stackoverflow.com/questions/45904/how-do-you-add-an-image -->
		     				 <img width="50px" height="50px" src='{//datastage/wenesday/morning/speaker/image}'></img>
		     				 <span><xsl:apply-templates select="//datastage/wenesday/morning/speaker"/> </span>
		     				  <br></br>
		     				 <span><xsl:apply-templates select="//datastage/wenesday/morning/speaker/info"/> </span>
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
		    		    	<span>Time</span>
		    		       <p> <xsl:apply-templates select="//datastage/wenesday/afternoon/time/start"/> </p>
		    		    </div>
		    		    
		    		     <div class="time hidethur">
		    		    	thur div
		    		    </div>
		    		    
		    		    

		    		   <div class="contentWrapper hidetue">
	     				 <span> tuesday div</span>
		    			</div>

		    			<div class="contentWrapper hidewed">
			    			 <h1><xsl:apply-templates select="//datastage/wenesday/afternoon/talk/title"/></h1>
		     				 <p><xsl:apply-templates select="//datastage/wenesday/afternoon/talk/description"/> </p>
		     				 <!-- code learned from http://stackoverflow.com/questions/45904/how-do-you-add-an-image -->
		     				 <img width="50px" height="50px" src='{//datastage/wenesday/afternoon/speaker/image}'></img>
		     				 <span><xsl:apply-templates select="//datastage/wenesday/afternoon/speaker"/> </span>
		     				  <br></br>
		     				 <span><xsl:apply-templates select="//datastage/wenesday/afternoon/speaker/info"/> </span>
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


	


 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript">
        
        $(document).ready(function(){
          
           setTimeout(function(){
           		$('#btnTue').trigger('click');
           },10);
          

           
            

        });

    </script>
    
    <script src="JS/displaySummitTalksAjax" type="text/javascript"></script>

    <script src="bootstrap-3.3.5-dist/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
								
</html>
   


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

