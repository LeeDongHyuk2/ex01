<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="wrap">
<%@include file="./header.jsp" %>
<div id="container">
<form action="/order/reviewRegister" method="post" id="reviewRegister">
	<input type='hidden' name="product_no" value=<%= request.getAttribute("product_no")%>>
	<input type='hidden' name="member_id" value="${member.member_id }">
	<input type="text" name="review_title">
	<input type="file" id="fileItem" name='uploadFile' style="height:30px">
	<div id="uploadResult">
	
	</div>	
	<textarea name="review_content"></textarea>
	<div>
		<input type="submit" id="#registerBtn" value="등록">
			<a href="/myPage"><input type="button" id="#cancelBtn" value="취소"></a>
	</div>
</form>
</div>
<%@include file="./footer.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="../resources/js/review.js"></script>
</div>
</body>
</html>