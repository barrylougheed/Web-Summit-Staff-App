 $(document).ready(function(){
          alert('working');
           setTimeout(function(){
           		$('#btnTue').trigger('click');
           },10);
 
    

            

      

    


 });  
 
 function testbtn(){
     
      

            $('#btnTue').click(function(){
              $('.hidewed').hide();
              $('.hidethur').hide();
              $('.hidetue').show();
             
            });

            $('#btnWed').click(function(){
             $('.hidetue').hide();
             $('.hidethur').hide();
             $('.hidewed').show();
            
            });
            
            
            $('#btnThur').click(function(){
             $('.hidewed').hide();
             $('.hidetue').hide();
             $('.hidethur').show();
            });
            
 }