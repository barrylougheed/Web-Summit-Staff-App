
$(document).ready(function(){ 
  $('#sidenavbtn').click(function(){
        $('#sidenav').toggleClass('sidenavactive'); 

      });
});
$(document).ready(function(){
	$('#home, #test').click(function(){
		if(this.id == 'test'){
			$("#homemain").fadeOut(1000,"swing",function(){
				//$("#homemain2").removeClass("inactive").addClass("active");
				$("#homemain2").load("./staffShift_Form.php");
				$("#homemain2").fadeIn(1000,"linear");
				//$("#homemain").removeClass("active").addClass("inactive");
			});
			//$("#homemain2").fadeIn("slow");
		}else if(this.id == 'home'){
			$("#homemain2").fadeOut(1000,"swing",function(){
				//$("#homemain").removeClass("inactive").addClass("active");
				$("#homemain").load("./summits.txt");
				$("#homemain").fadeIn(1000,"linear");
				//$("#homemain2").removeClass("active").addClass("inactive");
			});
			//$("#homemain").fadeIn("slow");
		}
	});
	  
});

//ajax and jquery
//some code used from http://www.w3schools.com/php/php_ajax_rss_reader.asp
$(document).ready(function(){
	//browser check
	if(window.XMLHttpRequest){
		var xmlReq = new XMLHttpRequest();
	}else{
		xmlReq = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlReq.onreadystatechange = function(){
		if(xmlReq.readyState==4 && xmlReq.status==200){
			document.getElementById("rssfeed").innerHTML=xmlReq.responseText;
		}
	}
	
	xmlReq.open("GET","../getRssNews.php", true);
	xmlReq.send();
	});