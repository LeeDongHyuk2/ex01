<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/join.css">
<title>Insert title here</title>
</head>

<body>
	<div id = "wrap">
		<a href="/" class="logo">가구사이트 로고</a>
		<div id="container">
		<h1>회원가입</h1>
		<form class="join_form" action="" method="">
		  	<div class="input_radio_box">
				<label>개인회원&nbsp&nbsp<input type="radio" name="member_type" value=1></label>
				<label>&nbsp&nbsp&nbsp&nbsp사업자회원&nbsp&nbsp<input type="radio" name="member_type" value=2></label>
			</div>
			<!-- 
			<div>
				<label>개인사업자<input type="radio" name="company_type" value="company_type1"></label>
				<label>법인사업자<input type="radio" name="company_type" value="company_type2"></label>
			</div>
			 --> 
			<div>				
				<input type="text" class="member_id input_text" name="member_id" placeholder="아이디">				
				<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
				<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
				<span class="final_id_ck">아이디를 입력해주세요.</span>
			</div>		
			<div>
				<input type="password" class="member_pwd input_text" name="member_pwd" placeholder="비밀번호">
				<span class="final_pw_ck">비밀번호를 입력해주세요.</span>
			</div>
			<div>
				<input type="password" class="pwd_check input_text" placeholder="비밀번호 확인"  class="input_text">
				<span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span>
				<span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
				<span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
			</div>
			<div>
				<input type="text" class="member_name input_text" name="member_name" placeholder="이름">
				<span class="final_name_ck">이름을 입력해 주세요.</span>
			</div>		
			<div>
				<input type="date" class="member_birth input_text" name="member_birth" placeholder="출생년도">
				<span class="final_birth_ck">생년월일을 입력해 주세요.</span>
			</div>
			<div class="input_radio_box">
				<label>남자&nbsp&nbsp<input type="radio" name="member_gender" value="male"></label>
				<label>&nbsp&nbsp&nbsp&nbsp여자&nbsp&nbsp<input type="radio" name="member_gender" value="female"></label>
				<span class="final_gender_ck">성별을 선택해 주세요.</span>
			</div>
			<div>
				<div class="addr1_box">		
					<input type="text" class="member_address1" name="member_addr1" readonly="readonly" placeholder="주소를 입력해 주세요">
					<div class="address_button" onclick="sample6_execDaumPostcode()">주소 찾기</div>
				</div>
				<div>
					<input type="text" class="member_address2 input_text" name="member_addr2" readonly="readonly">
				</div>
				<div>
					<input type="text" class="member_address3 input_text" name="member_addr3" readonly="readonly" placeholder="상세주소">
				</div>
				<span class="final_addr_ck">주소를 입력해 주세요.</span>	
			</div>
			<div>
				<input type="text" class="member_email input_text" name="member_email" placeholder="이메일">
				<span class="final_mail_ck">이메일을 입력해 주세요.</span>
				<span class="mail_input_box_warn">올바르지 못한 이메일 형식입니다.</span>
			</div>
			<div>
				<input type="text" class="member_phone input_text" name="member_phone" placeholder="연락처">
				<span class="final_phone_ck">전화번호를 입력해 주세요.</span>
			</div>
			<div class="button_box">
				<input type="button" value="회원가입" class="join_button buttons">
				<a href="/member/login"><input type="button" value="취소" class="buttons"></a>
			</div>
		</form>
		</div>	
		<%@include file="./footer.jsp" %>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="http://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="../resources/js/join.js"></script>	
	<script src="../resources/js/daumAddrApi.js"></script>	
</body>
</html>