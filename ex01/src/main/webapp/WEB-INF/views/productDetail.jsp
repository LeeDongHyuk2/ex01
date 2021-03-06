<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/productDetail.css">
<title>Insert title here</title>
</head>
<body>

<div id = "wrap">
	<%@include file="./header.jsp" %>
	<div id="container">
		<form action="/order/product" method="post">	
			<div class="product_box">
				<div id="uploadResult">
						<!-- 제품이미지 -->
				</div><!-- #uploadResult -->
				<div id="product_cont">
					<ul>
						<li class="title">
							<h2>${productInfo.product_name }</h2>
							<p class="product_like">좋아요</p>
						</li><!-- .product_title -->
						<li class="price">
							<c:if test="${productInfo.product_discount != 0 }">
								<span class="discount">${productInfo.product_discount }</span>
								<span> %</span>
								<span class="text_overline">${productInfo.product_price }</span><br>
							</c:if>
							<input class="product_price" value='${productInfo.product_price }' readonly="readonly">
						</li>
						<li class="stock">
							<p><strong>재고</strong></p>
							<p class="product_stock">${productInfo.product_stock}</p>
						</li>
						<li class="size">
							<p><strong>규격</strong></p>
							<p>product_size</p>
						</li>
						<li class="order_fee">
							<span>배송비 2000원 (50,000원 이상 구매 시 무료)</span>
						</li>
					</ul>
					<div class="amount_box">
						<input class="amount" value=1 readonly="readonly" name="amount">
						<div class="amount_updown">
							<p class="amount_up amount_button">업업</p>
							<p class="amount_down amount_button">다운</p>
						</div><!-- .amount_updown -->
					</div><!-- .amount_box -->
					<div class="total_price_box">
						<input class="total_price" value='0' readonly="readonly" name="total_price">
					</div>
					<div class="submit_button">
					<c:if test="${member.member_id != null }">
						<input type="submit" value="구매하기" class="submit_buttons">
					</c:if>
					<c:if test="${member.member_id == null }">
						<a href="/member/login?no_login=true" class="no_login"><input type="button" value="구매하기" class="submit_buttons"></a>
					</c:if>
						<button class="sh_basket submit_buttons">장바구니</button>
					</div>	
				</div><!-- #product_cont -->
			</div><!-- product_box -->	
			
		
			<div id = "product_memo">
				${productInfo.product_memo }
			</div>
			<div id = "product_review">
			</div>
		</form>
	</div><!-- #container -->
	<input type = "hidden" value='${productInfo.product_no}'>
	<%@include file="./footer.jsp" %>	
</div><!-- #wrap -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="../../resources/js/productDetail.js"></script>
</body>
</html>