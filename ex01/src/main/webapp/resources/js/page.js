$(document).ready(function(){
	var page = $("input[type='hidden']").val();
	$.getJSON("/"+page,function(arr){		
		var str = "";		
		console.log(arr);
		$(arr).each(function(i,product){
			str += "<li><a href=/product/'"+product.product_id+"'>"
			str += "<p class='item_name'>"+product.product_name+"</p>"
			str += "<p class='item_price'>"+product.product_price+"</p>"
			str += "<p class='item_memo'>"+product.product_memo+"</p>"
			str += "</a></li>"
		});
		$("#productList").html(str);
	})
});