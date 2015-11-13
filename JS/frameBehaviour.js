
$(document).ready(function(){
$('#home, #test').click(function(){
	if(this.id == 'home'){
		$("#homemain").load("./test.txt");
	}else if(this.id == 'test'){
		$("#homemain").load("./hassantest.txt");
	}
});
});