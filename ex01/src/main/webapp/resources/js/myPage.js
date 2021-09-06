/**
 * 
 */
$(document).ready(function(){
	let listPage = $('.listPage');
	let member_id = $('.session_id').val();
	$.getJSON("/order/myProduct", {member_id : member_id}, function(arr){
		if(arr.length == 0){
			let str = "";
			str += "<p>주문하신 내역이 없습니다.</p>"
			
			listPage.html(str);
			
			return				
		}
		let str = "";
		$(arr).each(function(i, product){
			str += "<input type='hidden' value="+arr[i].product_no+" class='product_no'>"
			str += "<div class='list_order'><div><p>"+arr[i].order_regdate+"</p></div>";
			str += "<div><img><p>"+arr[i].order_name+"</p>";
			str += "<p>"+arr[i].order_stock+"</p>";
			str += "<p>"+arr[i].order_price+"</p></div>";
			str += "<div><p>"+arr[i].order_name+"</p></div>";
			str += "<div><p>"+arr[i].order_statement+"</p>";
			str += "<button>배송조회</button>";
			if(arr[i].order_statement == '배송완료'){
				str += "<input type='button' class='review' value='리뷰달기'><button class='refund'>제품반품</button>";
			}else{
				str += "<button class='orderCancel'>주문취소</button>";
			}
			str += "</div></div>";
		});// each
		listPage.html(str);
		
	});
	
});

$(document).on('click','.review', function(){
	product_no = $('.product_no').val();
	location.replace('/order/review?product_no='+product_no);
});