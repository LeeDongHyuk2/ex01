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
			console.log(arr);
			str += "<div class='list_order'><div><p>"+arr[i].order_regdate+"</p></div>";
			str += "<div><img><p>"+arr[i].order_name+"</p>";
			str += "<p>"+arr[i].order_amount+"</p>";
			str += "<p>"+arr[i].order_price+"</p></div>";
			str += "<div><p>"+arr[i].order_name+"</p></div>";
			str += "<div><p>order_statement</p>";
			str += "<button>배송조회</button><button>주문취소</button></div></div>"	
		});// each
		listPage.html(str);
		
	});
	
});