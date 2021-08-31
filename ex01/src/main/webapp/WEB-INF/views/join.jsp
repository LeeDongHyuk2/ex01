<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.id_input_re_1{
		color:green;
		display:none;
	}
	.id_input_re_2{
		color:red;
		display:none;
	}
</style>
<body>
	<h1>회원가입</h1>
	<form action="/member/join" method="post">
	  	<div>
			<label>개인회원<input type="radio" name="member_type" value=1></label>
			<label>사업자회원<input type="radio" name="member_type" value=2></label>
		</div>
		<!-- 
		<div>
			<label>개인사업자<input type="radio" name="company_type" value="company_type1"></label>
			<label>법인사업자<input type="radio" name="company_type" value="company_type2"></label>
		</div>
		 --> 
		<div>
			<label>
				<input type="text" id="member_id" name="member_id" placeholder="아이디" >
			</label>
			<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
			<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
		</div>		
		<div><label><input type="password" id="member_pwd" name="member_pwd" placeholder="비밀번호" ></label></div>
		<div><label><input type="password" id="pwd_check" placeholder="비밀번호 확인" ></label></div>
		<div><label><input type="text" id="member_name" name="member_name" placeholder="이름" ></label></div>		
		<div><label><input type="date" id="member_birth" name="member_birth" placeholder="출생년도" ></label></div>
		<div>
			<label>남자<input type="radio" name="member_gender" value="male"></label>
			<label>여자<input type="radio" name="member_gender" value="female"></label>
		</div>
		<div>
			<div>		
				<input type="text" class="member_address1" name="member_addr1" readonly="readonly">
				<div class="address_button" onclick="sample6_execDaumPostcode()">주소 찾기</div>
			</div>
			<div>
				<input type="text" class="member_address2" name="member_addr2" readonly="readonly">
			</div>
			<div>
				<input type="text" class="member_address3" name="member_addr3" readonly="readonly">
			</div>			
		</div>
		<div><label><input type="text" id="member_email" name="member_email" placeholder="이메일" ></label></div>
		<div><label><input type="text" id="member_phone" name="member_phone" placeholder="연락처" ></label></div>
		<div>
			<input type="submit" value="회원가입">
			<input type="button" value="취소">
		</div>
	<%@include file="./footer.jsp" %>
	</form>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="http://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="../resources/js/join.js"></script>	
	<script src="../resources/js/daumAddrApi.js"></script>	
</body>
</html>