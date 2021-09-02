<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/myPage.css">
<title>Insert title here</title>
</head>
<body>
<div id="wrap">
<input type="hidden" value="${member.member_id }" class="session_id">
	<%@include file="./header.jsp" %>
	<div id="container">		
		<div class="myBox">
			<div class="myList">
				<div class="myShopping">
					<p>내 쇼핑</p>
					<ul>
						<li>주문목록/배송조회</li>						
						<li>취소/반품/교환/환불 내역</li>
						<li>영수증 조회/출력</li>
					</ul>
				</div>
				<div class="myActive">
					<p>내 활동</p>
					<ul>
						<li>문의하기</li>
						<li>문의내역 확인</li>
						<li>리뷰관리</li>
						<li>좋아요 리스트</li>
					</ul>					
				</div>
				<div class="myInfo">
					<p>개인정보</p>
					<ul>
						<li>개인정보확인/수정</li>
						<li>배송지 관리</li>
					</ul>
				</div>
			</div>			
			<div class="listPage">
				<div class="list_order">
					<p>주문날짜</p>
				</div>
				<div>
					<img>
					<p>제목</p><!-- 현재 미구현 제품등록이름이 나옴 -->
					<p>옵션</p><!-- 현재 미구현 -->
					<p>수량</p>
					<p>가격</p>
				</div>
				<div>
					<p>제조사</p>
				</div>
				<div>
					<p>상품준비중(order_statement)</p><!-- 미구현 order_statement라 나옴 -->
					<p>도착 예정일<p><!-- 미구현 -->
					<button>배송조회</button><br>
					<button>주문취소</button>
				</div>				
			</div><!-- listPage -->	
		</div>
	</div><!-- container -->
	<%@include file="./footer.jsp" %>	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="../resources/js/myPage.js"></script>		
</div>	
</body>
</html>