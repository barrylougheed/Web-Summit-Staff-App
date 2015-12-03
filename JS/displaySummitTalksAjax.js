$(document).ready(function(){
   
    $('#datasummit').click(function(){
        alert('click function working');
        callTransformer('./XML/webSummitTimetable.xml','./XSL/datasummit.xsl');
    });
    
 
     
});


function callTransformer(xmlFile,xslFile){
        
        alert('Function being called onClick');
        // //checks to see which browser is in use 
        // if(window.XMLHttpRequest){
        //     httpObj = new XMLHttpRequest();
        // }else if(window.ActiveXObject){
        //     httpObj = new ActiveXObject('Microsoft.XMLHTTP');
        // }
        
        $.ajax({
            
            type:"POST",
            url:"./index.php",
            data: xmlFile, xslFile,
            success:function(data){
                if(data.success==true){
                    alert('data retrived from server')
                }else{
                     alert('was unable to retrive data from server')
                }
            },
            
            error:function(data){
                alert('A problem occured sending the data');
            }
             
        });
        
    

    }
    





