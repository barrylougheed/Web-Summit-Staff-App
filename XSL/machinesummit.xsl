<div id="talkwrapper">
	    	 	<ul id="talktimes">
	    	 	
		    		 <li class="talkholder draggable" onclick="location.href='#';" style="cursor:pointer">
		    		   
		    		   <div class="time hidetue">
		    			 <p> <xsl:apply-templates select="//machinestage/tuesday/morning/time/start"/> </p>
		    		   </div>

		    		    <div class="time hidewed">
		    		    	<span>Time</span>
		    			 	<p> <xsl:apply-templates select="//machinestage/wenesday/morning/time/start"/> </p>
		    		    </div>
		    		    
		    		     <div class="time hidethur">
		    		      <p> <xsl:apply-templates select="//machinestage/thursday/morning/time/start"/> </p>
		    		    </div>

		    		   <div class="contentWrapper hidetue">
	     				 <h1><xsl:apply-templates select="//machinestage/tuesday/morning/talk/title"/></h1>
		     				 <p><xsl:apply-templates select="//machinestage/tuesday/morning/talk/description"/> </p>
		     				 <!-- code learned from http://stackoverflow.com/questions/45904/how-do-you-add-an-image -->
		     				 <img width="50px" height="50px" src='{//machinestage/tuesday/morning/speaker/image}'></img>
		     				 <span><xsl:apply-templates select="//machinestage/tuesday/morning/speaker"/> </span>
		     				  <br></br>
		     				 <span><xsl:apply-templates select="//machinestage/tuesday/morning/speaker/info"/> </span>
		    			</div>

		    			<div class="contentWrapper hidewed">
			    			 <h1><xsl:apply-templates select="//machinestage/wenesday/morning/talk/title"/></h1>
		     				 <p><xsl:apply-templates select="//machinestage/wenesday/morning/talk/description"/> </p>
		     				 <!-- code learned from http://stackoverflow.com/questions/45904/how-do-you-add-an-image -->
		     				 <img width="50px" height="50px" src='{//machinestage/wenesday/morning/speaker/image}'></img>
		     				 <span><xsl:apply-templates select="//machinestage/wenesday/morning/speaker"/> </span>
		     				  <br></br>
		     				 <span><xsl:apply-templates select="//machinestage/wenesday/morning/speaker/info"/> </span>
		    			</div>
		    			
		    			<div class="contentWrapper hidethur">
		    				 <h1><xsl:apply-templates select="//machinestage/thursday/morning/talk/title"/></h1>
		     				 <p><xsl:apply-templates select="//machinestage/thursday/morning/talk/description"/> </p>
		     				 <!-- code learned from http://stackoverflow.com/questions/45904/how-do-you-add-an-image -->
		     				 <img width="50px" height="50px" src='{//machinestage/thursday/morning/speaker/image}'></img>
		     				 <span><xsl:apply-templates select="//machinestage/thursday/morning/speaker"/> </span>
		     				  <br></br>
		     				 <span><xsl:apply-templates select="//machinestage/thursday/morning/speaker/info"/> </span>
		    			</div>
		    				
		    			

		    		 </li>

		    		 <li class="talkholder draggable" onclick="location.href='#';" style="cursor:pointer">
		    			
		    			 
		    		   <div class="time hidetue">
		    			 tuesday div
		    		   </div>

		    		    <div class="time hidewed">
		    		    	<span>Time</span>
		    		       <p> <xsl:apply-templates select="//machinestage/wenesday/afternoon/time/start"/> </p>
		    		    </div>
		    		    
		    		     <div class="time hidethur">
		    		    	thur div
		    		    </div>
		    		    
		    		    

		    		   <div class="contentWrapper hidetue">
	     				 <span> tuesday div</span>
		    			</div>

		    			<div class="contentWrapper hidewed">
			    			 <h1><xsl:apply-templates select="//machinestage/wenesday/afternoon/talk/title"/></h1>
		     				 <p><xsl:apply-templates select="//machinestage/wenesday/afternoon/talk/description"/> </p>
		     				 <!-- code learned from http://stackoverflow.com/questions/45904/how-do-you-add-an-image -->
		     				 <img width="50px" height="50px" src='{//machinestage/wenesday/afternoon/speaker/image}'></img>
		     				 <span><xsl:apply-templates select="//machinestage/wenesday/afternoon/speaker"/> </span>
		     				  <br></br>
		     				 <span><xsl:apply-templates select="//machinestage/wenesday/afternoon/speaker/info"/> </span>
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
