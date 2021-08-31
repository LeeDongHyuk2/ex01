/**
 * 
 */
// 아이디 중복 검사
$('#member_id').on("propertychange change keyup paste input", function(){
	//console.log("keyup 테스트");
	
	let memberId = $('#member_id').val();
	let data = {member_id : memberId}
	
	$.ajax({
		type : "post",
		url : "/member/memberIdChk",
		data : data,
		success : function(result){
			if(result != 'fail'){
				$('.id_input_re_1').css("display", "inline-block");
				$('.id_input_re_2').css("display", "none");
			} else{
				$('.id_input_re_2').css("display", "inline-block");
				$('.id_input_re_1').css("display", "none");
			}
		}
	}); 
});
