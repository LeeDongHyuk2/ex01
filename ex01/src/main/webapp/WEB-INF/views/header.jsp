<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
</head>

<style>
/* 브라우저 초기화 */
*{
    margin:0;
    padding:0;
}
body{
    font-family: 'Noto Sans KR', sans-serif;
    font-size:17px;
    line-height:20px;
    color:#222;
}
ul, ol{
    list-style:none;
}
img{
    vertical-align: top;
    border: 0;
    width:100%;
    height:auto;
}
a{
    text-decoration: none;
}
fieldset{
    border:0;
}
legend{
    display: none;
}
.hide{
    position:absolute;
    top:-99999px;
    left:-99999px;
    display: block;
    width:1px;
    height:1px;
    overflow: hidden;
}

/* #header - 모바일 */
.pc{
	display:none;
}
#header{
	background-color:rgb(244,204,121);
}
.headerIn{
    height:90px;
    position:relative;
    overflow: hidden;
}
.h_logo{
    margin:0 auto;
    width:130px;
    height:60px;
    background-image: url(/resources/img/logo.png);
    background-size:130px;
    background-repeat:no-repeat;
    text-indent: -99999px;
    display: block;
}
.gnb ul{
    width:200%;
    position:absolute;
    bottom:0;
    display: flex;
    justify-content: space-between;
}
.gnb li a{
    line-height:30px;
    display: block;
    padding:0 15px;
    color:#222;
}
.mo_menu{
    position:absolute;
    left:15px;
    bottom:40px;
}
.mo_menu a{
    padding-top:7px;
    padding-left:5px;
    text-indent:-99999px;
}
.mo_menu a span{
    display: block;
    height:3px;
    background-color: #444;
    width:20px;
    margin-top:5px;
}
.h_search{
    position:absolute;
    right:50px;
    bottom:40px;
}
.h_search .search{
    background-color:rgb(244,204,121);
    background-image: url(/resources/img/icon_search.png);
    border:none;
    height:20px;
    width:20px;
    text-indent: -99999px;
}
.h_cart a{
    display: block;
    position:absolute;
    right:15px;
    bottom:40px;
    text-indent: -99999px;
    width:22px;
    height:20px;
    background-image: url(/resources/img/icon_cart.png);
}


	/* #side - 모바일 */
	#side{
	    width:100%;
	    height:100%;
	    position:fixed;
	    top:0;
	    left:-100%;
	    background-color:#fff;
	    z-index:999;
	    overflow-y:scroll;
	}
	.s_login{
	    background-color:chocolate;
	    height:60px;
	    font-weight:bold;
	}
	.s_login a{
	    display: block;
	    color:#fff;
	    padding-left : 30px;
	    font-size:16px;
	    line-height:60px;
	}
	.s_m1{
	    border-bottom:1px solid #bbb;
	}
	.s_m1 a{
	    display: block;
	    padding:15px;
	    font-size:15px;
	    color:chocolate;
	}
	.s_close{
	    position:absolute;
	    top:0;
	    right:0;
	}
	.s_close a{
	    display: block;
	    width:60px;
	    height:60px;
	    text-indent: -99999px;
	    background-image:url(../img/close2.png);
	    background-size: 25px auto;
	    background-position: center;
	    background-repeat: no-repeat;
	}
	/* #side - 모바일 끝 */
/* #header - 모바일 끝 */


/* #header - 태블릿 */
@media screen and (min-width:768px){	
	.gnb ul{
	    width:100%;	
	}
	.gnb li a{
	    line-height:30px;
	    display: block;
	    padding:0 15px;
	    color:#222;
	}
	#side{
		width: 80%;
	}
}
/* #header - 태블릿 끝*/


/* #header - pc */
@media screen and (min-width:1200px){
	
	.pc{
    display: block;
	}
	.mo{
	    display: none;
	}
	.headerIn{
	    width:1200px;
	    margin:0 auto;
	}
	.h_logo{
	    margin:0;
	}
	.h_box{
	    display: flex;
	    position: absolute;
	    right:0;
	    bottom:50px;
	}
	.pc_util ul{
	    display: flex;
	}
	.pc_util ul li{
	    margin:0 15px;
	}
	.pc_util ul li a{
	    color:#222;
	}
	.h_cart{
	    position:static; 
	    margin-left:15px;
	}
	.h_search{
	    position:static;
	    margin-right:15px;
	    width:200px;
	    background-repeat: no-repeat;
	}
	fieldset{
	    display: flex;
	}
}
/* #header - pc  끝 */

</style>

<body>
<header id="header">
            <div class="headerIn">
                <a href="/" class="h_logo">가구사이트</a><!--.logo-->
                
                
                <nav class="gnb">
                    <ul>
                        <li><a href="/listBest">베스트</a></li>
                        <li><a href="/list/chair">의자</a></li>
                        <li><a href="/list/table">테이블</a></li>
                        <li><a href="/list/cabinet">수납장</a></li>
                        <li><a href="/list/bookshelf">책장</a></li>
                        <li><a href="/list/prob">리빙/소품</a></li>
                        <li><a href="/list/light">조명</a></li>
                        <li><a href="/list/etc">기타</a></li>
                    </ul>
                </nav><!--.gnb-->
                <div class="mo_menu mo">
                    <a href="#">
                        <span>메뉴열기</span>
                        <span></span>
                        <span></span>
                    </a>
                </div>
                <div class="h_box">
                    <div class="h_search">
                        <form action="">
                            <fieldset>
                                <input type="text" class="pc">
                                <input type="button" value="검색" class="search"></input>
                            </fieldset>   
                        </form>  
                    </div>      
                    <div class="pc_util pc">
                        <ul>
                        	<c:if test = "${member.member_type == 1 }">                    
	                            <li>
	                            	<a href="/productRegister">판매</a>
	                            </li>
                            </c:if>
                            <li>
                           		<c:if test="${member == null}">
									<a href="/member/login">로그인</a>
								</c:if>
							 	<c:if test="${member != null}">
									<a href="/member/logout">로그아웃</a>
								</c:if>
							</li>
                            <li>
                            	<c:if test="${member == null}">
                            		<a href="/member/login">마이페이지</a>
                            	</c:if>
                            	<c:if test="${member != null}">
									<a href="/myPage">마이페이지</a>
								</c:if>
                            </li>
                        </ul>                                             
                    </div><!--.pc_util-->                    
                    <p class="h_cart"><a href="#">장바구니</a></p>   
                </div><!--.h_box-->                
            </div><!--.headerIn-->
        </header><!--#header-->
        
        
<div id="side" class="mo"><!-- 사이드 아코디언 메뉴 -->
    <div class="s_login">
        <a href="#">로그인</a>
    </div>
    <div class="s_m1">
        <a href="#">회원가입</a>
    </div>
    <div class="s_m1">
        <a href="#">마이페이지</a>
    </div>
    <div class="s_m1">
        <a href="#">공지사항</a>
    </div>
    <div class="s_m1">
        <a href="#">고객문의</a>
    </div>
    <div class="s_m1">
        <a href="#">주문조회</a>
    </div>
    <div class="s_m1">
        <a href="#">카톡상담</a>
    </div>
    <div class="s_close"><a href="#">사이드 닫기</a></div><!--.s_close-->
    </div><!--#side--> 
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
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
    </script>       
</body>
</html>