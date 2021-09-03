/**
 * 
 */
//이미지 출력
$(document).ready(function(){
	let product_no = $("input[type='hidden']").val();
	let uploadResult = $("#uploadResult");
	
	$.getJSON("/product/getAttachList", {product_no : product_no}, function(arr){
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
	});
	$('.product_price').val(price);
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
		$('.product_price').val(priceNum);
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
		$('.product_price').val(priceNum);
	}
	if(amount == 0){
		$('.amount_down').text("못내림");
	}
});