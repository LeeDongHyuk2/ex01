<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./slick-1.8.1/slick/slick.css">
    <link rel="stylesheet" href="./slick-1.8.1/slick/slick-theme.css">
    <link rel="stylesheet" href="./css/style.css">
    <title>가구쇼핑몰</title>
</head>
<body>
    <div id="wrap">


        <header id="header">
            <div class="headerIn">
                <div class="h_logo">가구쇼핑몰</div><!--.logo-->
                <nav class="gnb">
                    <ul>
                        <li><a href="">베스트</a></li>
                        <li><a href="">신상</a></li>
                        <li><a href="">의자</a></li>
                        <li><a href="">테이블</a></li>
                        <li><a href="">수납장</a></li>
                        <li><a href="">책장</a></li>
                        <li><a href="">리빙/소품</a></li>
                        <li><a href="">조명</a></li>
                        <li><a href="">기타</a></li>
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
                            <li><a href="">로그인</a></li>
                            <li><a href="">회원가입</a></li>
                            <li><a href="">마이페이지</a></li>
                        </ul>                                             
                    </div><!--.pc_util-->                    
                    <p class="h_cart"><a href="#">장바구니</a></p>   
                </div><!--.h_box-->
                
            </div><!--.headerIn-->
        </header><!--#header-->

        <div id="container">
            <div class="main_slide">
                <div class="main_in">
                    <div class="ms_img single-item pc">
                        <div><a href=""><img src="./img/mainSlide01.jpg" alt=""></a></div>
                        <div><a href=""><img src="./img/mainSlide02.jpg" alt=""></a></div>
                        <div><a href=""><img src="./img/mainSlide03.jpg" alt=""></a></div>
                        <div><a href=""><img src="./img/mainSlide04.jpg" alt=""></a></div>
                    </div><!--.ms_img-->
                    <div class="ms_img single-item mo">
                        <div><a href=""><img src="./img/mainSlide_m_01.jpg" alt=""></a></div>
                        <div><a href=""><img src="./img/mainSlide_m_02.jpg" alt=""></a></div>
                        <div><a href=""><img src="./img/mainSlide_m_03.jpg" alt=""></a></div>
                        <div><a href=""><img src="./img/mainSlide_m_04.jpg" alt=""></a></div>                     
                    </div><!--.ms_img-->
                </div><!--.main_in -->
            </div><!--.main_slide-->


            <div class="newList">
                <div>
                    <h2>신상품</h2>
                    <ul>
                        <li>
                            <a href="">
                                <img src="./img/new_pic_1.jpg" alt="">
                                <p class="item_name">의자</p>
                                <p class="item_price">50,000</p>
                                <p class="item_memo">설명~</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/new_pic_2.jpg" alt="">
                                <p class="item_name">침대1</p>
                                <p class="item_price">50,000</p>
                                <p class="item_memo">설명~</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/new_pic_3.jpg" alt="">
                                <p class="item_name">침대2</p>
                                <p class="item_price">50,000</p>
                                <p class="item_memo">설명~</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/new_pic_4.jpg" alt="">
                                <p class="item_name">쇼파1</p>
                                <p class="item_price">50,000</p>
                                <p class="item_memo">설명~</p>
                            </a>
                        </li>
                        <li class="pc">
                            <a href="">
                                <img src="./img/new_pic_5.jpg" alt="">
                                <p class="item_name">쇼파2</p>
                                <p class="item_price">50,000</p>
                                <p class="item_memo">설명~</p>
                            </a>
                        </li>
                    </ul>
                </div>
                <p class="new_more"><a href="">더보기</a></p>
            </div><!--.newList-->


            <div class="hotList">
                <div>
                    <h2>인기상품</h2>
                    <ul>
                        <li>
                            <a href="">
                                <img src="./img/hot_pic_1.jpg" alt="">
                                <p class="item_name">의자1</p>
                                <p class="item_price">50,000</p>
                                <p class="item_memo">설명~</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/hot_pic_2.jpg" alt="">
                                <p class="item_name">식탁</p>
                                <p class="item_price">70,000</p>
                                <p class="item_memo">설명~</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/hot_pic_3.jpg" alt="">
                                <p class="item_name">침대</p>
                                <p class="item_price">200,000</p>
                                <p class="item_memo">설명~</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/hot_pic_4.jpg" alt="">
                                <p class="item_name">의자2</p>
                                <p class="item_price">50,000</p>
                                <p class="item_memo">설명~</p>
                            </a>
                        </li>
                        <li class="pc">
                            <a href="">
                                <img src="./img/hot_pic_5.jpg" alt="">
                                <p class="item_name">쇼파</p>
                                <p class="item_price">100,000</p>
                                <p class="item_memo">설명~</p>
                            </a>
                        </li>
                    </ul>
                </div>
                <p class="hot_more"><a href="">더보기</a></p>
            </div><!--.hotList-->


            <div class="sail">
                <h2>할인</h2>
                <ul>
                    <li>
                        <a href="">
                            <img src="./img/sail_01.png" alt="">
                            <p class="item_name">쇼파</p>
                            <p class="item_price">100,000</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/sail_02.jpg" alt="">
                            <p class="item_name">쇼파</p>
                            <p class="item_price">100,000</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/sail_03.png" alt="">
                            <p class="item_name">쇼파</p>
                            <p class="item_price">100,000</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/sail_04.jpg" alt="">
                            <p class="item_name">쇼파</p>
                            <p class="item_price">100,000</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/sail_05.png" alt="">
                            <p class="item_name">쇼파</p>
                            <p class="item_price">100,000</p>
                        </a>
                    </li>
                </ul>
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
                    <li>
                        <a href="">
                            <img src="./img/review_01.jpg" alt="">
                            <div class="review_content">
                                <h3>제목</h3>
                                <p>내용</p>
                            </div>
                        </a>                        
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/review_02.jpg" alt="">
                            <div class="review_content">
                                <h3>제목</h3>
                                <p>내용</p>
                            </div>
                        </a>                        
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/review_03.jpg" alt="">
                            <div class="review_content">
                                <h3>제목</h3>
                                <p>내용</p>
                            </div>
                        </a>                        
                    </li>
                </ul>
                <p class="review_more"><a href="">더보기</a></p>
            </div><!--.review-->


        </div><!--#container-->


        <footer id="footer">
            <div class="footer_in">
                <p class="f_logo">사이트로고</p>
                <div class="f_tell">
                    고객센터<br>
                    052-1234-5678<br>   
                    평일 10:00 - 18:00 (점심시간 12:00 - 13:00)<br>
                </div><!--.f_tell-->
                <div class="f_sns">
                    <ul>
                        <li class="blog"><a href="">blog</a></li>
                        <li class="insta"><a href="">insta</a></li>
                        <li class="fb"><a href="">fb</a></li>
                        <li class="youtube"><a href="">youtube</a></li>
                        <li class="twit"><a href="">twit</a></li>
                    </ul>
                </div><!--.f_sns-->
                <p><a href="">회사소개</a> <a href="">이용약관</a> <a href="">품질보증기준</a> <a href="">개인정보처리방침</a></p>
                <p>
                    (주)가구사이트대표 : 이동혁<br>
                    개인정보관리책임 : 이동혁 이사<br>
                    <a href="">ldh11871@naver.com</a><br>
                    사업자등록번호 : 111-22-33333 <a href="">[ 사업자정보확인 ]</a><br>
                    통신판매업신고 : 1111-울산-1111<br>
                    가구사이트본사 : 울산 로 길 7<br>
                    무통장 입금 계좌 : (주)가구사이트 / 국민은행 123456-12-123456, 기업은행 987-987654-98-987<br>
                    현금으로 구매시 이지스올더게이트의 에스크로 서비스를 이용할 수 있습니다. <a href="">[ 서비스가입사실확인 ]</a><br>
                    @ 2021 gagusite. All Right Reserved.<br>
                </p>
            </div><!--.footer_in-->
        </footer><!--#footer-->
    </div><!--#wrap-->


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
    </div><!--#slide-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="./slick-1.8.1/slick/slick.js"></script>
    <script src="./js/main.js"></script>
</body>
</html>