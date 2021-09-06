<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!-- 제품 등록 페이지 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="./header.jsp" %>
	<form action ="/product/productRegister" method = "post" id="productRegister">
		<input type="hidden" name="member_id" value="${member.member_id}"> 
		<div>
			<label>제품 이름</label>
			<input name="product_name">
		</div>
		<div>
			<label>제품 종류</label>
			<select name ="product_category">
				<option value="chair">의자</option>
				<option value="table">테이블</option>
				<option value="cabinet">수납장</option>
				<option value="bookshelf">책장</option>
				<option value="prob">리빙/소품</option>
				<option value="light">조명</option>
				<option value="etc">기타</option>
			</select>
		</div>
		<div>
			<label>제품 가격</label>
			<input name="product_price">
		</div>
		<div>
			<label>제품 내용</label>
			<textarea name="product_memo"></textarea>
		</div>
		<div>
			<label>제품 재고</label>
			<input name="product_stock">
		</div>		
		<div>
			<label>상품 이미지</label>
		</div>
		<div>
			<input type="file" id="fileItem" name='uploadFile' style="height:30px;">
			<div id="uploadResult">
				
			</div>
		</div>	
		<div>
			<button id="#registerBtn">등록</button>
			<button id="#cancelBtn">취소</button>
		</div>
	</form>
	<%@include file="./footer.jsp" %>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="../resources/js/productRegister.js"></script>
</body>
</html>