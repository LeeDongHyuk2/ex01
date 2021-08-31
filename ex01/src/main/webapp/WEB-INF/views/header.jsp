<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
/* 브라우저 초기화 */
*{
    margin:0;
    padding:0;
}
body{
    font-family: 'Noto Sans KR', sans-serif;
    font-size:13px;
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
.headerIn{
    height:90px;
    position:relative;
    overflow: hidden;
}
.h_logo{
    margin:0 auto;
    width:100px;
    height:50px;
    background-color:red;
}
.gnb ul{
    background-color: beige;
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
	    width:100px;
	    height:50px;
	    background-color: aqua;
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
	

/* #header - 태블릿 끝 */

</style>

<body>
<header id="header">
            <div class="headerIn">
                <a href="/"><div class="h_logo">가구쇼핑몰</div></a><!--.logo-->
                
                <nav class="gnb">
                    <ul>
                        <li><a href="/listBest">베스트</a></li>
                        <li><a href="/listNew">신상</a></li>
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
                            <li>
                           		<c:if test="${member == null}">
									<a href="/member/login">로그인</a>
								</c:if>
							 	<c:if test="${member != null}">
									<a href="/member/logout">로그아웃</a>
								</c:if>
							</li>
                            <li><a href="/myPage">마이페이지</a></li>
                        </ul>                                             
                    </div><!--.pc_util-->                    
                    <p class="h_cart"><a href="#">장바구니</a></p>   
                </div><!--.h_box-->                
            </div><!--.headerIn-->
        </header><!--#header-->
</body>
</html>