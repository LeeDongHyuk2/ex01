<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="join" method="post">
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
		<div><label><input type="text" id="member_id" name="member_id" placeholder="아이디" ></label><input type="button" value="아이디중복확인"></div>
		<div><label><input type="password" id="member_pwd" name="member_pwd" placeholder="비밀번호" ></label></div>
		<div><label><input type="password" id="pwd_check" placeholder="비밀번호 확인" ></label></div>
		<div><label><input type="text" id="member_name" name="member_name" placeholder="이름" ></label></div>		
		<div><label><input type="date" id="member_birth" name="member_birth" placeholder="출생년도" ></label></div>
		<div>
			<label>남자<input type="radio" id="member_gender" name="member_gender" value="male"></label>
			<label>여자<input type="radio" id="member_gender" name="member_gender" value="female"></label>
		</div>
		<div><label><input type="text" id="member_address" name="member_address" placeholder="주소" ></label></div>
		<div><label><input type="text" id="member_email" name="member_email" placeholder="이메일" ></label></div>
		<div><label><input type="text" id="member_phone" name="member_phone" placeholder="연락처" ></label></div>
		<div>
			<input type="submit" value="회원가입">
			<input type="button" value="취소">
		</div>

	</form>
</body>
</html>