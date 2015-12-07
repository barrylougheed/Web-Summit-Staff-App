$(function(){
	        $('#homemain').on('click','#btnTue',function(event){
	              $('.hidewed').hide();
	              $('.hidethur').hide();
	              
	              var content = $('.hidetue').html();
	              
	              if(content == " " || null){
	              		$('.hidetue').html('No results');
	              		
	              }
	              $('.hidetue').show();
	              
	              
	             
	            });
	            
	         
	
	            $('#homemain').on('click','#btnWed',function(event){
	             $('.hidetue').hide();
	             $('.hidethur').hide();
	             $('.hidewed').show();
	            
	            });
	            
	            
	            $('#homemain').on('click','#btnThur',function(event){
	             $('.hidewed').hide();
	             $('.hidetue').hide();
	             $('.hidethur').show();
	            });
	            
	            
});