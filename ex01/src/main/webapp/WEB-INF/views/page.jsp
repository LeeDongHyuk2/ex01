<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="./header.jsp" %>
	<input type="hidden" value="${page}">
	<p>${page }</p>
	<ul id="productList"></ul>
	<%@include file="./footer.jsp" %>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="../resources/js/page.js"></script>	
</body>
</html>