<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
/* #footer - 모바일 */
#footer{
    background-color:#222;
    color:white;
}
.footer_in{
    padding :40px 0;
    margin:0 20px;
    position:relative;
}
.footer_in a{
    color: white;
}
.footer_in p{
    margin-bottom:20px;
}
.f_logo{
    width:100px;
    height:50px;
    background-color: white;
    color:black;
    margin-bottom:20px;
}
.f_tell{
    margin-bottom:20px;
}
.f_sns ul{
    display: flex;    
    position:absolute;
    right:0;
    top:40px;
    flex-wrap: wrap;
    width:50%;
}
.f_sns ul li{
    margin-left:10px;
    margin-bottom:10px;
}
.f_sns ul li a{
    display: block;
    background-image:url(/resources/img/sns_icon.png);
    text-indent:-99999px;
    width:32px;
    height:32px;
    background-size:200px;
}
.f_sns .fb a{
    background-position:-2px -4px;
}
.f_sns .insta a{
    background-position:-42px -4px;
}
.f_sns .youtube a{
    background-position:-82px -4px;
}
.f_sns .blog a{
    background-position:-124px -4px;
}
.f_sns .twit a{
    background-position:-162px -4px;
}
/* #footer - 모바일 끝 */

/* footer - 태블릿 */
@media screen and (min-width:768px){
.f_sns ul{
    flex-wrap: nowrap;
}
.f_sns ul li a{
    width:64px;
    height:64px;
    background-size: 400px;
}
.f_sns .blog a{
    background-position:-4px -8px;
}
.f_sns .insta a{
    background-position:-84px -8px;
}
.f_sns .fb a{
    background-position:-164px -8px;
}
.f_sns .youtube a{
    background-position:-248px -8px;
}
.f_sns .twit a{
    background-position:-324px -8px;
}

}
/* footer - 태블릿 끝 */

/* footer - pc */
@media screen and (min-width:1200px){
.footer_in{
    width:1200px;
    margin : 0 auto;
}
.f_tell{
    font-size:25px;
    line-height: 35px;
}
}
/* footer - pc 끝 */
</style>
<body>
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
</body>
</html>