$(document).ready(function(){    

       	  $('.dropdown').hover(function(){
                  $('ul #dropdownNav').slideDown('medium');
      		},function(){
                 $('ul',this).slideUp(1000);
      		});


     	}); // end of ready function