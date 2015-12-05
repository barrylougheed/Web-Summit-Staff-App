 $(document).ready(function(){
          
           setTimeout(function(){
           		$('#btnTue').trigger('click');
           },10);
 });   

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

            

      



 