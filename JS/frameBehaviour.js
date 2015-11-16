
//$(document).ready(function(){
//$('#home, #test').click(function(){
//	if(this.id == 'home'){
//		$("#homemain").load("./test.txt");
//	}else if(this.id == 'test'){
//		$("#homemain").load("./hassantest.txt");
//	}
//});
//});
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
				$("#homemain2").load("./hassantest.txt");
				$("#homemain2").fadeIn(1000,"linear");
				//$("#homemain").removeClass("active").addClass("inactive");
			});
			//$("#homemain2").fadeIn("slow");
		}else if(this.id == 'home'){
			$("#homemain2").fadeOut(1000,"swing",function(){
				//$("#homemain").removeClass("inactive").addClass("active");
				$("#homemain").load("./test.txt");
				$("#homemain").fadeIn(1000,"linear");
				//$("#homemain2").removeClass("active").addClass("inactive");
			});
			//$("#homemain").fadeIn("slow");
		}
	});
});