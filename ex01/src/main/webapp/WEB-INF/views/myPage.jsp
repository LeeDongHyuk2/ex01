<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrap">
	<%@include file="./header.jsp" %>
		<div>
			배송중, 할인쿠폰, 포인트, 캐시
		</div>
		<div>
			<div class="myList">
				<div class="myShopping">
					<ul>
						<li>주문목록/배송조회</li>
						<li>취소/반품/교환/환불 내역</li>
						<li>영수증 조회/출력</li>
					</ul>
				</div>
				<div class="myActive">
					<ul>
						<li>문의하기</li>
						<li>문의내역 확인</li>
						<li>리뷰관리</li>
						<li>좋아요 리스트</li>
					</ul>					
				</div>
				<div class="myInfo">
					<ul>
						<li>개인정보확인/수정</li>
						<li>배송지 관리</li>
					</ul>
				</div>
			</div>
			<div class="listPage">
				
			</div>		
		</div>
		<%@include file="./footer.jsp" %>
	</div>	
</body>
</html>