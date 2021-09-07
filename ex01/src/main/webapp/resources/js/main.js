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
    getReview();
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
			$.getJSON("/product/getAttachList", {product_no : product.product_no, type : 'p'}, function(img_arr){
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

// 리뷰 리스트 index화면에 출력
function getReview(){
	let reviewList = $(".review ul");
	$.getJSON("/order/getIndexReview",function(arr){
		let str = "";
		$(arr).each(function(i,review){
			
			if(arr.length == 0){
				str += "<li>리뷰가 없습니다</li>";
				reviewList.append(str);
				
				return
			}
			$.getJSON("/product/getAttachList", {product_no : review.review_no , type : 'r'}, function(arr2){
				if(arr2.length === 0){										
					return;
				}				
				let obj = arr2[0];
				
				let fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
				str += "<li><a href='/product/productDetail/"+review.product_no+"'>";
				str += "<div class='review_img'";
				str += "data-path='" + obj.uploadPath + "' data-uuid'" + obj.uuisd + "' data-filename'" + obj.fileName + "'";
				str += ">";
				str += "<img src='/product/display?fileName=" + fileCallPath +"'>";
				str += "</div>";
				
				str += "<div class='review_content'>";
				str += "<h3>"+review.review_title+"</h3>";
				str += "<p>"+review.review_content+"</p></div>";
				str += "</a></li>";
				reviewList.append(str);
			});// getJSON("order/getAttachList")
			
		})// 반복문 종료
		
	})// getJSON
}