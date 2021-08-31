<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<h1>주문/결제</h1>
		<div>
			<input type="hidden" value=${productInfo.product_no }>
			<div id="uploadResult">
				<!-- 제품이미지 -->
			</div>
			<div id="product_cont">
			<h3>${productInfo.product_name }</h3>			
				<ul>
					<li>
						<span>제품 이름</span>
						<span>${productInfo.product_name }</span>
					</li>
					<li>
						<span>제품 가격</span>
						<span>${productInfo.product_price }</span>
					</li>
					<li>
						<span>제조사</span>
						<span>${productInfo.member_id }</span>
					</li>
					<li>
						<span>재고</span>
						<span>${productInfo.product_stock }</span>
					</li>
					<li>
						<span>할인율</span>
						<span>${productInfo.product_discount }%</span>
					</li>
					<li>
						<span>배송분류</span>
						<span>5만원이상 무료배송</span>
					</li>
					<li>
						<span>배송비</span>
						<span>2000원 (50,000원 이상 구매 시 무료)</span>
					</li>
				</ul>
			</div>
			<div class="shFee">
				배송비
			</div>
			<div class="amount">
				수량
			</div>
			<div class="discount">
				할인
			</div>
			<div class="price">
				상품금액(할인포함)
			</div>
		</div>
	<div>
		<h2>배송지정보</h2>	
		<div class="recipient">
			수령인
			<input type="text">	
		</div>
		<div class="addrName">
			배송지명
			<input type="text">
		</div>
		<div class="tell1">
			연락처1
			<input type="text">
		</div>
		<div class="tell2">
			연락처2
			<input type="text">
		</div>
		<div class="shAddr">
			<div>		
				<input type="text" class="member_address1" name="addr1" readonly="readonly">
				<div class="address_button" onclick="sample6_execDaumPostcode()">주소 찾기</div>
			</div>
			<div>
				<input type="text" class="member_address2" name="addr2" readonly="readonly">
			</div>
			<div>
				<input type="text" class="member_address3" name="addr3" readonly="readonly">
			</div>			
		</div>
		<div class="shMemo">
			배송메모
		</div>
	</div>
	<div class="payment">
		결제
	</div>
	<button>결제하기</button>
</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="http://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="../resources/js/order.js"></script>	
	<script src="../resources/js/daumAddrApi.js"></script>	
</body>
</html>