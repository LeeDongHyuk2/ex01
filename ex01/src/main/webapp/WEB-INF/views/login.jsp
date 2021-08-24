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
<form>
	<input type="text" name="id" placeholder="아이디">
	<input type="password" name="pwd" placeholder="비밀번호">
	<input type="submit" value="로그인">	
	<input type="checkbox" name="keep_login">
	<label for="keep_login">로그인 유지</label>
</form>
<a href="">아이디 찾기</a>
<a href="">비밀번호 찾기</a>
<a href="join"><input type="button" value="회원가입"></a>
</body>
</html>