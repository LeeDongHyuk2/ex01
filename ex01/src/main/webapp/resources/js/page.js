$(document).ready(function(){
	var page = $("input[type='hidden']").val();
	$.getJSON("/"+page,function(arr){		
		var str = "";		
		console.log(arr);
		$(arr).each(function(i,product){
			$.getJSON("/product/getAttachList", {product_no : product.product_no, type : 'p'}, function(img_arr){
				if(img_arr.length === 0){
					str += "<li><a href='/product/productDetail/"+product.product_no+"'>"
					str += "<img src='/resources/img/productNoImage.png'>"
					str += "<p class='item_name'>"+product.product_name+"</p>"
					str += "<p class='item_price'>"+product.product_price+"</p>"
					str += "<p class='item_memo'>"+product.product_memo+"</p>"
					str += "</a></li>"		
				} else{
					let obj = img_arr[0];
					let fileCallPath = encodeURIComponent(obj.uploadPath.replace(/\\/g, '/') + "/s_" + obj.uuid + "_" + obj.fileName);
				
					str += "<li><a href='/product/productDetail/"+product.product_no+"'>"
					str += "<img src='/product/display?fileName="+ fileCallPath +"'>"
					str += "<p class='item_name'>"+product.product_name+"</p>"
					str += "<p class='item_price'>"+product.product_price+"</p>"
					str += "<p class='item_memo'>"+product.product_memo+"</p>"
					str += "</a></li>"
				}
				$(".itemList ul").append(str);
				str="";
			})
		});
	})	
});