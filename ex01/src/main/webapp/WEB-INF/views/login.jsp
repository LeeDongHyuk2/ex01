<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="./header.jsp" %>
	<h1>로그인 페이지</h1>
	<form action="login" method="post">
		<div>
			<input type='text' id='member_id' name='member_id'>
		</div>
		<div>
			<input type='password' id='member_pwd' name='member_pwd'>
		</div>
		<div>
			<input type='checkbox' id='member_check' name='remember-me'> 로그인 유지
		</div>
		<div>
			<input type='submit' value="로그인">
			<a href="/"><button>취소</button></a>
		</div>
	</form>
	<a href="">아이디 찾기</a>
	<a href="">비밀번호 찾기</a>
	<a href="join"><input type="button" value="회원가입"></a>
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>	
	<script src="../resources/js/login.js"></script>
</body>
</html>