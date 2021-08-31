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
<%@include file="./header.jsp" %>
<div>
	<form action="/order/product" method="post">
	<div>	
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
					<input class="price" value=${productInfo.product_price } readonly="readonly">
				</li>
				<li>
					<span>제조사</span>
					<span>${productInfo.member_id }</span>
				</li>
				<li>
					<span>재고</span>
					<span class="stock">${productInfo.product_stock}</span>
				</li>
				<li>
					<span>할인율</span>
					<span>${productInfo.product_discount }</span>
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
	</div>
	<div>
		<div class="amount_box">
			<input class="amount" value=1 readonly="readonly">
			<div class="amount_updown">
				<p class="amount_up">업업</p>
				<p class="amount_down">다운</p>
			</div>
		</div>
		<input type="submit" value="구매하기">
		<button>장바구니</button>
	</div>
	</form>
	<div id = "product_memo">
		${productInfo.product_memo }
	</div>
	<div id = "product_review">
		리뷰칸
	</div>
</div>
<input type = hidden value="<c:out value = "${productInfo.product_no}"/>">

<%@include file="./footer.jsp" %>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
// 이미지 출력
$(document).ready(function(){
	let product_no = $("input[type='hidden']").val();
	let uploadResult = $("#uploadResult");
	
	$.getJSON("/product/getAttachList", {product_no : product_no}, function(arr){
		if(arr.length === 0){
			let str = "";
			str += "<div id = 'result_card'>";
			str += "<input type='hidden' value'"+product_no+"'>"
			str += "<img src = '/resources/img/productNoImage.png'>";
			str += "</div>";
			
			uploadResult.html(str);
			
			return;
		}
		
		let str = "";
		let obj = arr[0];
		
		let fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
		str += "<div id='result_card'";			
		str += "data-path='" + obj.uploadPath + "' data-uuid'" + obj.uuid + "' data-filename'" + obj.fileName + "'";
		str += ">";
		str += "<input type='hidden' value='"+product_no+"' name='product_no'>"
		str += "<img src='/product/display?fileName=" + fileCallPath +"'>";
		str += "</div>";
		
		uploadResult.html(str);
	});
});

let amount = $('.amount').val();	
let price = $('.price').val();
let priceNum = Number(price) * Number(amount);
// 재고 수량 1씩 증가
$('.amount_up').click(function(){
	let stock = Number($('.stock').text());
	if(amount < stock){
		amount++;
		$('.amount').val(amount);
		$('.amount_down').text("다운");
		priceNum = Number(price) * Number(amount);
		$('.price').val(priceNum);
	}
	if(amount == stock){
		$('.amount_up').text("못올림");
	}
});
// 재고 수량 1씩 감소
$('.amount_down').click(function(){	
	if(amount >= 1){
		amount--;
		$('.amount').val(amount);
		$('.amount_up').text("업업");
		priceNum = Number(price) * Number(amount);
		$('.price').val(priceNum);
	}
	if(amount == 0){
		$('.amount_down').text("못내림");
	}
});

</script>
</body>
</html>