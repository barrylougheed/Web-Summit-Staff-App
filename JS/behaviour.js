$(function(){
	        $('#homemain').on('click','#btnTue',function(event){
	        	alert('tuesday button click working');
	              $('.hidewed').hide();
	              $('.hidethur').hide();
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