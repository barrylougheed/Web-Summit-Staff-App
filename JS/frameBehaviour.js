$(document).ready(function(){
$('#home, #test').click(function(){
	if(this.id == 'home'){
		$("#framewrap").attr("src", 'Hassantest.html');
	}else if(this.id == 'test'){
		$("#framewrap").attr("src", 'test.html');
	}

});
});