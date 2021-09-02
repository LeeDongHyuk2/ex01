
$(document).ready(function(){
	$(".login_button").click(function(){
		$(".login_form").attr("action", "/member/login");
		$(".login_form").submit()
	})	
})
