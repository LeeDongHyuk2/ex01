$(document).ready(function(){
	// 메인 슬라이드 이벤트
    $('.single-item').slick({
        dots:true,
        autoplay : true,
        autoplaySpeed: 5000
    });
    
    getNewList();
    getHotList();
})

// 모바일, 태블릿에서 죄측상단 메뉴(.mo_menu) 클릭시(사이드 아코디언 메뉴)
$('.mo_menu').click(function(){
    $('#side').animate({
        left:'0'
    })
    $('#wrap').css({
        position:'fixed'
    })
    return false;
})

// 메뉴목록에서 X(.s_close) 클릭시(아코디언메뉴 종료)
$('.s_close').click(function(){
    $('#side').animate({
        left:'-100%'
    })
    $('#wrap').css({
        position:'relative'
    })
    return false;
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
    
function getNewList(){
	var str = "";
	$.getJSON("getNewList",function(arr){
		console.log(arr);
		$(arr).each(function(i,product){
			str += "<li class='detail'><a href='/product/productDetail/"+product.product_no+"'>"
			str += "<p class='item_name'>"+product.product_name+"</p>"
			str += "<p class='item_price'>"+product.product_price+"</p>"
			str += "<p class='item_memo'>"+product.product_memo+"</p>"
			str += "</a></li>"
		});
		$(".newListItem ul").html(str);
	})	
}
function getHotList(){
	var str = "";
	$.getJSON("getHotList",function(arr){
		console.log(arr);
		$(arr).each(function(i,product){
			str += "<li class='detail'><a href='/product/productDetail/"+product.product_no+"'>"
			str += "<p class='item_name'>"+product.product_name+"</p>"
			str += "<p class='item_price'>"+product.product_price+"</p>"
			str += "<p class='item_memo'>"+product.product_memo+"</p>"
			str += "</a></li>"
		});
		$(".hotListItem ul").html(str);
	})
}