 $(document).ready(function(){     
     $(function(){

        
          // var $timesList = ('#draggable');
          //    $($timesList,'li').draggable({
          //         revert: true

          //      });

             var $index = ('.navbar-fixed-top');
             $('.draggable').draggable({
                
                containment:"document",
                zIndex: 2000,
                revert: "invaild",
                drag:function(event, ui){
                    $('.draggable').addClass("tempStyleDraggable");
                }

             
             }); /*function(){
                 $($index).css("index",0);
               });*/
         
             $('#dropable').droppable({
                 accept:".draggable",
                 drop:function(event,ui){
                    console.log("Working bitches");
                    $('.draggable').removeClass("tempStyleDraggable");
                }
                //create a function that is actived on, the drop of element
                // when the element is dropped grab the info from within and use ajax to display it 

             });

           /*  var pos = draggable.getBoundingClientRect();
             console.log(pos.top, pos.right, pos.bottom)  */
            }); 


});
