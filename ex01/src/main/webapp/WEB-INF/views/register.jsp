<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  jquery 파일 연결 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="./header.jsp" %>
	<h1>글쓰기</h1>
	<form action="register" method="post" role="form">
		<table>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content"></textarea></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="writer"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="글쓰기"></td>
			</tr>			
		</table>
		<div>
			<input type="file" name="uploadFile" multiple>
		</div>
		<div class="uploadResult">
			<ul>
			</ul>
		</div>
	</form>
</body>
</html>