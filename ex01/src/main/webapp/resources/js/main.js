$(document).ready(function(){
	// 메인 슬라이드 이벤트
    $('.single-item').slick({
        dots:true,
        autoplay : true,
        autoplaySpeed: 5000
    });
    let hot = "Hot";
    let news = "New";
    let sail = "Sail";
    getList(news);
    getList(hot);
    getList(sail);
})

// 이벤트 목록 클릭하면 바뀌기

// sns 사진 hover
$('.sns_img')
    .on('mouseover', function(){
        $(this).stop(true).animate({
            opacity:1,
        })
    })
    .on('mouseout', function(){
        $(this).stop(true).animate({
            opacity:0
        })

    })
    
function getList(list){	
	$.getJSON("get"+list+"List",function(arr){
		let str = "";		
		$(arr).each(function(i,product){
			$.getJSON("/product/getAttachList", {product_no : product.product_no}, function(img_arr){
				if(img_arr.length === 0){
					
					str += "<li><a href='/product/productDetail/"+product.product_no+"'>"
					str += "<img src='/resources/img/productNoImage.png'>"
					str += "<p class='item_name'>"+product.product_name+"</p>"
					str += "<p class='item_price'>"+product.product_price+"</p>"
					str += "<p class='item_memo'>"+product.product_memo+"</p>"
					str += "</a></li>"		
						
				}else{				
					let obj = img_arr[0];
					let fileCallPath = encodeURIComponent(obj.uploadPath.replace(/\\/g, '/') + "/s_" + obj.uuid + "_" + obj.fileName);
					
					str += "<li><a href='/product/productDetail/"+product.product_no+"'>"
					str += "<img src='/product/display?fileName="+ fileCallPath +"'>"
					str += "<p class='item_name'>"+product.product_name+"</p>"
					str += "<p class='item_price'>"+product.product_price+"</p>"
					str += "<p class='item_memo'>"+product.product_memo+"</p>"
					str += "</a></li>"						
				}
				$(".list"+list+"Item ul").append(str);
				str="";
			})
		})
	})
}
