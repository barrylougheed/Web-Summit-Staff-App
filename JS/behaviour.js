$(function(){
	        $('#homemain').on('click','#btnTue',function(event){
	              $('.hidewed').hide();
	              $('.hidethur').hide();
	              
	              var content = $('.hidetue').html();
	              
	              if(content == "" || null){
	              		$('#tueDiv').html('No results');
	              		
	              }
	              $('.hidetue').show();
	              
	              
	             
	            });
	            
	         
	
	            $('#homemain').on('click','#btnWed',function(event){
	             $('.hidetue').hide();
	             $('.hidethur').hide();
	             var content = $('.hidewed').html();
	              
	              if(content == "" || null){
	              		$('#wedDiv').html('No results');
	              		
	              }
	             $('.hidewed').show();
	            
	            });
	            
	            
	            $('#homemain').on('click','#btnThur',function(event){
	             $('.hidewed').hide();
	             $('.hidetue').hide();
	              var content = $('.hidethur').html();
	              
	              if(content == "" || null){
	              		$('#thurDiv').html('No results');
	              		
	              }
	             $('.hidethur').show();
	            });
	            
	            
});