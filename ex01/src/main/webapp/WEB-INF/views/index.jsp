<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <link rel="stylesheet" href="/resources/js/slick-1.8.1/slick/slick.css">
    <link rel="stylesheet" href="/resources/js/slick-1.8.1/slick/slick-theme.css">
    <link rel="stylesheet" href="/resources/css/style.css">
    <title>가구쇼핑몰</title>
</head>
<body>
    <div id="wrap">
        <%@include file="./header.jsp" %>
        <div id="container">
            <div class="main_slide">
                <div class="main_in">
                    <div class="ms_img single-item pc">
                        <div><a href=""><img src="/resources/img/mainSlide01.jpg" alt=""></a></div>
                        <div><a href=""><img src="/resources/img/mainSlide02.jpg" alt=""></a></div>
                        <div><a href=""><img src="/resources/img/mainSlide03.jpg" alt=""></a></div>
                        <div><a href=""><img src="/resources/img/mainSlide04.jpg" alt=""></a></div>
                    </div><!--.ms_img-->
                    <div class="ms_img single-item mo">
                        <div><a href=""><img src="/resources/img/mainSlide_m_01.jpg" alt=""></a></div>
                        <div><a href=""><img src="/resources/img/mainSlide_m_02.jpg" alt=""></a></div>
                        <div><a href=""><img src="/resources/img/mainSlide_m_03.jpg" alt=""></a></div>
                        <div><a href=""><img src="/resources/img/mainSlide_m_04.jpg" alt=""></a></div>                     
                    </div><!--.ms_img-->
                </div><!--.main_in -->
            </div><!--.main_slide-->


            <div class="newList">
                <div class="listNewItem">
                    <h2>신상품</h2>
                    <ul>
                    </ul>
                </div>
                <p class="new_more"><a href="">더보기</a></p>
            </div><!--.newList-->


            <div class="hotList">
                <div class="listHotItem">
                    <h2>인기상품</h2>
                    <ul>
                    </ul>
                </div>
                <p class="hot_more"><a href="">더보기</a></p>
            </div><!--.hotList-->

            <div class="sailList">                
                <div class="listSailItem">
                	<h2>할인</h2>
	                <ul>	                    
	                </ul>
                </div>
            </div><!--.sail-->

            <div class="event">
                <h2>이벤트</h2>
                <div class="event_in">          
                    <div class="event_page">
                        <a href="">
                            <p>이벤트 상세</p>
                            <p>자세한설명</p>
                        </a>
                    </div>
                    <ul>
                        <li class="ev1">
                            <a href="">
                                <p>이벤트1</p>
                                <p>내용</p>
                            </a>
                        </li>
                        <li class="ev2">
                            <a href="">
                                <p>이벤트2</p>
                                <p>내용</p>
                            </a>
                        </li>
                        <li class="ev3">
                            <a href="">
                                <p>이벤트3</p>
                                <p>내용</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div><!--.event-->


            <div class="sns">
                <h2>Instgram</h2>
                <ul>
                    <li>
                        <a href="">
                            <img src="./img/insta01.jpg" alt="">
                            <span class="sns_img"></span>
                        </a>
                    </li>               
                    <li>
                        <a href="">
                            <img src="./img/insta02.jpg" alt="">
                            <span class="sns_img"></span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/insta03.png" alt="">
                            <span class="sns_img"></span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/insta04.png" alt="">
                            <span class="sns_img"></span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/insta05.png" alt="">
                            <span class="sns_img"></span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/insta06.png" alt="">
                            <span class="sns_img"></span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/insta07.png" alt="">
                            <span class="sns_img"></span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/insta08.jpg" alt="">
                            <span class="sns_img"></span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/insta09.jpg" alt="">
                            <span class="sns_img"></span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/insta10.jpg" alt="">
                            <span class="sns_img"></span>
                        </a>
                    </li>                    
                    <li>
                        <a href="">
                            <img src="./img/insta11.jpg" alt="">
                            <span class="sns_img"></span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/insta12.jpg" alt="">
                            <span class="sns_img"></span>
                        </a>
                    </li>
                </ul>
            </div><!--.sns-->

            <div class="review">
                <h2>리얼후기</h2>
                <ul>
                </ul>
                <p class="review_more"><a href="">더보기</a></p>
            </div><!--.review-->


        </div><!--#container-->
		<%@include file="./footer.jsp" %>
    </div><!--#wrap-->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="../resources/js/slick-1.8.1/slick/slick.js"></script>
    <script src="../resources/js/main.js"></script>
</body>
</html>