<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/page.css">
<title>Insert title here</title>
</head>
<body>
<div id="wrap">
	<%@include file="./header.jsp" %>
	<input type="hidden" value="${page}">
	<div class="itemList">
		<ul>
		</ul>
	</div>
	<%@include file="./footer.jsp" %>
</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="../resources/js/page.js"></script>	
</body>
</html>