/**
 * 
 */
//이미지 출력
$(document).ready(function(){
	let product_no = $("input[type='hidden']").val();
	let uploadResult = $("#uploadResult");
	let productReview =$("#product_review");
	
	$.getJSON("/product/getAttachList", {product_no : product_no, type : 'p'}, function(arr){
		if(arr.length === 0){
			let str = "";
			str += "<div id = 'result_card'>";
			str += "<input type='hidden' value='"+product_no+"' name='product_no'>"
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
		str += "<input type='hidden' value='"+product_no+"' name='product_no'>";
		str += "<img src='/product/display?fileName=" + fileCallPath +"'>";
		str += "</div>";
		
		uploadResult.html(str);
	});// getJSON("product/getAttachList")
	
	$('.product_price').val(price);
	if(price < 50000){
		$('.total_price').val(price + 2000);
	}else{
		$('.total_price').val(price);
	}
	
	$.getJSON("/order/getReview", {product_no : product_no}, function(arr){
		if(arr.length === 0){
			let str = "";
			str += "<p>리뷰가 없습니다.</p>"
				
			productReview.append(str);
			return
		}
		$(arr).each(function(i, review){			

			// 리뷰 썸네일 이미지 출력
			$.getJSON("/product/getAttachList", {product_no : review.review_no , type : 'r'}, function(arr2){
				if(arr2.length === 0){										
					return;
				}
				
				let str = "";
				let obj = arr2[0];
				
				let fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
				str += "<div class='review_img'";
				str += "data-path='" + obj.uploadPath + "' data-uuid'" + obj.uuid + "' data-filename'" + obj.fileName + "'";
				str += ">";
				str += "<img src='/product/display?fileName=" + fileCallPath +"'>";
				str += "</div>";
				
				str += "<div class='review'><p>"+review.member_id+"</p>"
				str += "<p>"+review.review_title+"</p>"
				str += "<p>"+review.review_content+"</p></div>"
				
				productReview.append(str);
			});// getJSON("order/getAttachList")
		});// foreach
	});// getJSON("/order/getReview")
	
});

let amount = $('.amount').val();
let discount = 100 - Number($('.discount').text());
let price = $('.product_price').val();
price = (price/100)*discount;
let priceNum = Number(price) * Number(amount);
// 재고 수량 1씩 증가
$('.amount_up').click(function(){
	let stock = Number($('.product_stock').text());
	if(amount < stock){
		amount++;
		$('.amount').val(amount);
		$('.amount_down').text("다운");
		priceNum = Number(price) * Number(amount);
		if(priceNum < 50000 && priceNum > 0){
			$('.total_price').val(priceNum+2000);
			return;
		}
		$('.total_price').val(priceNum);
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
		if(priceNum < 50000 && priceNum > 0){
			$('.total_price').val(priceNum+2000);
			return;
		}
		$('.total_price').val(priceNum);
	}
	if(amount == 0){
		$('.amount_down').text("못내림");
	}
});