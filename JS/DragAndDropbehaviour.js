
/*
$('#homemain').on('click','.draggable',function(){
       alert('being called');
        
          // var $timesList = ('#draggable');
          //    $($timesList,'li').draggable({
          //         revert: true

          //      });

             var $index = ('.navbar-fixed-top');
             $('#homemain .draggable').draggable({
                
                containment:"document",
                zIndex: 2000,
                revert: true,
                drag:function(event, ui){
                   $(this).addClass("tempStyleDraggable");
                }

             
             }); /*function(){
                 $($index).css("index",0);
               });
         
             $('#dropable').droppable({
                 accept:".draggable",
                 drop:function(event,ui){
                    console.log("Working");
                    $(this).removeClass("tempStyleDraggable");
                    $('.draggable').addClass("talkholder");


                }
                //create a function that is actived on, the drop of element
                // when the element is dropped grab the info from within and use ajax to display it 

             });

             console.log("My gits are not counting thank you linus")

           /*  var pos = draggable.getBoundingClientRect();
             console.log(pos.top, pos.right, pos.bottom)  
        


      

}); */
 

