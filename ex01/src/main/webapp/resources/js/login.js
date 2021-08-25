/**
 * 
 */
$(document).ready(function(){
	$("input[type='submit']").on("click", function(e){
		var id = $('#mebmer_id').val();
		var pwd = $('#member_pwd').val();
		
		$.ajax({
			type:"post",
			url:"/member/login",
			contentType:"application/json; charset=utf-8",
			data:JSON.stringify(id, pwd),			
			success:function(result){
				console.log(result);				
			}
		})
	})
})