<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/resources/css/login.css">
<title>Insert title here</title>
</head>
<body>
<div id="wrap">	
	<a href = "/" class="logo">가구사이트 로고</a>
	<div id ="container">
		<h1>로그인</h1>
		<form method="post" class="login_form">
			<div>
				<input type='text' id='member_id' name='member_id' class="input_text" placeholder="아이디">
			</div>
			<div>
				<input type='password' id='member_pwd' name='member_pwd' class="input_text" placeholder="패스워드">
			</div>
			<c:if test = "${result == 0 }">
				<span class="login_warn">아이디 또는 패스워드가 일치하지 않습니다.</span>
			</c:if>
			<div class="button_box">
				<input type='button' value="로그인" class="buttons login_button">
				<a href="/"><input type="button" class="buttons" value="취소"></a>
			</div>
			<div class="member_check_box">
				<input type='checkbox' id='member_check' name='remember-me'> 로그인 유지
			</div>
		</form>
		<div class="a_box">
			<a href="" class="find_id">아이디 찾기</a>
			<a href="" class="find_pwd">비밀번호 찾기</a>
			<a href="join">회원가입</a>
		</div>
	</div>
	<%@include file="./footer.jsp" %>
</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>	
	<script src="../resources/js/login.js"></script>
</body>
</html>