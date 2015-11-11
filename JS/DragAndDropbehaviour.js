 $(document).ready(function(){     
     $(function(){
             $('.draggable').draggable({
                revert: true
                //zIndex: 1
             });

             $('.dropable').droppable({
                //transfer data on drop
             });

           /*  var pos = draggable.getBoundingClientRect();
             console.log(pos.top, pos.right, pos.bottom)  */
            }); 


});
