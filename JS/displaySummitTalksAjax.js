
var httpObj = false;


function callTransformer(phpFile){
    //checks to see which browser is in use 
    if(window.XMLHttpRequest){
        httpObj = new XMLHttpRequest();
    }else if(window.ActiveXObject){
        httpObj = new ActiveXObject('Microsoft.XMLHTTP');
    }
    
    httpObj.open

}