/**
 * 
 */
// 유효성 검사 통과유무 변수
let idCheck = false;
let idckCheck = false;
let pwdCheck = false;
let pwdckCheck = false;
let pwdckCorCheck = false;
let nameCheck = false;
let mailCheck = false;
let addressCheck = false;
let phoneCheck = false;0
let emailFormCheck = false;

$(document).ready(function(){
	
	// 회원가입 버튼 클릭 시
	$(".join_button").click(function(){
		// 입력값 변수
		let id = $('.member_id').val();
		let pw = $('.member_pwd').val();
		let pwck = $('.pwd_check').val();
		let name = $('.member_name').val();
		let birth = $('.member_birth').val();
		let mail = $('.member_email').val();
		let addr = $('.member_address3').val();
		let gender = $('.member_gender').val();
		let phone = $('.member_phone').val();
		
		// 아이디 유효성 검사
		if(id == ""){
			$('.final_id_ck').css('display', 'block');
			idCheck = false;
		}else{
			$('.final_id_ck').css('display', 'none');
			idCheck = true;
		}
		
		// 비밀번호 유효성 검사
		if(pw == ""){
			$('.final_pw_ck').css('display','block');
			pwdCheck = false;
		}else{
			$('.final_pw_ck').css('display','none');
			pwdCheck = true;
		}		
		
		// 비밀번호 확인 유효성  검사
		if(pwck == ""){
			$('.final_pwck_ck').css('display','block');
			pwdckCheck = false;
		}else{
			$('.final_pwck_ck').css('display','none');
			pwdckCheck = true;
		}
		
		// 이름 유효성 검사
		if(name == ""){
			$('.final_name_ck').css('display','block');
			nameCheck = false;
		}else{
			$('.final_name_ck').css('display','none');
			nameCheck = true;
		}
		
		// 이메일 유효성 검사
		if(mail == ""){
			$('.final_mail_ck').css('display','block');
			mailCheck = false;
		}else{
			$('.final_mail_ck').css('display','none');
			mailCheck = true;
		}
		
		// 주소 유효성 검사
		if(addr == ""){
			$('.final_addr_ck').css('display','block');
			addressCheck = false;
		}else{
			$('.final_addr_ck').css('display','none');
			addressCheck = true;
		}
		
		// 전화번호 유효성 검사
		if(phone == ""){
			$('.final_phone_ck').css('display','block');
			phoneCheck = false;
		}else{
			$('.final_phone_ck').css('display','none');
			phoneCheck = true;
		}
		console.log("idCheck : " + idCheck +" idckCheck : "+ idckCheck
				+" pwCheck : "+pwdCheck+" pwckCorCheck : "+pwdckCorCheck+" nameCheck : "+nameCheck+" mailCheck : "+mailCheck+" addressCheck : "+addressCheck+" phoneCheck : "+phoneCheck);
		// 최종 유효성 검사
		if(idCheck&&idckCheck&&pwdCheck&&pwdckCheck&&pwdckCorCheck&&nameCheck&&mailCheck&&addressCheck&&phoneCheck&&emailFormCheck){
			
			$(".join_form").attr("action", "/member/join");
			$(".join_form").attr("method", "post");
			$(".join_form").submit();
		}
		
		return false;
	});
});
// 아이디 중복 검사
$('.member_id').on("propertychange change keyup paste input", function(){
	//console.log("keyup 테스트");
	
	let memberId = $('.member_id').val();
	let data = {member_id : memberId}
	
	$.ajax({
		type : "post",
		url : "/member/memberIdChk",
		data : data,
		success : function(result){
			if(result != 'fail'){
				$('.id_input_re_1').css("display", "block");
				$('.id_input_re_2').css("display", "none");
				idckCheck = true;
			} else{
				$('.id_input_re_2').css("display", "block");
				$('.id_input_re_1').css("display", "none");
				idckCheck = false;
			}
		}
	});
});

// 비밀번호 확인 일치 유효성 검사
$('.pwd_check').on("propertychange change keyup paste input", function(){
	let pw = $('.member_pwd').val();
	let pwck = $('.pwd_check').val();
	$('.final_pwck_ck').css('display', 'none');
	
	if(pw == pwck){
		$('.pwck_input_re_1').css('display', 'block');
		$('.pwck_input_re_2').css('display', 'none');
		pwdckCorCheck = true;
	}else{
		$('.pwck_input_re_1').css('display', 'none');
		$('.pwck_input_re_2').css('display', 'block');
		pwdckCorCheck = false;
	}
});

// 입력 이메일 형식 유효성 검사
$('.member_email').on("propertychange change keyup paste input", function(){
	let form = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	let emailCheck = $('.member_email').val();
	if(form.test(emailCheck)){
		$('.mail_input_box_warn').css('display', 'none');
		emailFormCheck = true;
	}else{
		$('.mail_input_box_warn').css('display', 'block');
		emailFormCheck = false;
	}
})