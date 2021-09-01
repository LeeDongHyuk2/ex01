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
	<form action="/order/insert" method="post">
		<h1>주문/결제</h1>
			<div>
				<input type="hidden" value=${productInfo.product_no } name="product_no">
				<div id="uploadResult">
					<!-- 제품이미지 -->
				</div>
				<div id="product_cont">
				<h3>${productInfo.product_name }</h3>
					<ul>
						<li>
							<span>제품 이름</span>
							<input value='${productInfo.product_name }'>
						</li>
						<li>
							<span>제품 가격</span>
							<input value='${productInfo.product_price }' name="order_price" class="product_price">							
						</li>
						<!-- <li>
							<span>제조사</span>
							<input value='${productInfo.product_price }' name="order_price">
						</li> -->
						<li>
							<span>재고</span>
							<input value=${productInfo.product_stock }>
						</li>
						<li>
							<span>할인율</span>
							<input value=${productInfo.product_discount }>
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
				<div class="shFee_box">
					
				</div>
				<div class="amount">
					<input type="text" name="order_stock" readonly="readonly" class="amount" value=5>
				</div>
				<div class="discount">
					<input value=${productInfo.product_discount } class="discount">
				</div>
				<div class="price">
					상품금액(할인포함)
				</div>
			</div>
		<div>
			<h2>배송지정보</h2>	
			<div class="recipient">
				수령인
				<input type="text" name="order_name">
			</div>
			<div class="tell1">
				연락처1
				<input type="text" name="order_phone1">
			</div>
			<div class="tell2">
				연락처2
				<input type="text" name="order_phone2">
			</div>
			<div class="shAddr">
				<div>		
					<input type="text" class="member_address1" name="order_addr1" readonly="readonly">
					<div class="address_button" onclick="sample6_execDaumPostcode()">주소 찾기</div>
				</div>
				<div>
					<input type="text" class="member_address2" name="order_addr2" readonly="readonly">
				</div>
				<div>
					<input type="text" class="member_address3" name="order_addr3" readonly="readonly">
				</div>			
			</div>
			<div class="shMemo">
				<input type="text" name="order_memo">
			</div>
		</div>
		<div class="payment">
			결제
		</div>
		<input type="submit" value="결제">
	</form>	
</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="http://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="../resources/js/order.js"></script>	
	<script src="../resources/js/daumAddrApi.js"></script>	
</body>
</html>