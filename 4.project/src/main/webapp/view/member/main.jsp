<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"/>
<link rel="stylesheet" type="text/css" href="../../resources/css/main.css" />
<link rel="stylesheet" href="../../resources/css/member/mainhome.css">
</head>

<body>
<script>
	$(document).ready( function() { 

	$("#headers").load("/jeju/view/header.html"); 
	$("#footer").load("../footer.html"); 
	});
</script>	
<div id="headers"></div>

<div id = "main1">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
        </ol>
        </ol>
        </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100" src="pic/main/road.jpg" alt="첫번째 슬라이드">
            <div class="carousel-caption d-none d-md-block">            
        </div>
    </div>
    <div class="carousel-item">
        <img class="d-block w-100" src="pic/main/mountain.jpg" alt="두번째 슬라이드">
            <div class="carousel-caption d-none d-md-block"></div>
    </div>
    <div class="carousel-item">
        <img class="d-block w-100" src="pic/main/suguk.jpg" alt="세번째 슬라이드">
                <div class="carousel-caption d-none d-md-block"></div>
    </div>
    <div class="carousel-item">
        <img class="d-block w-100" src="pic/main/jejubang.jpg" alt="네번째 슬라이드">
                <div class="carousel-caption d-none d-md-block"></div>
    </div>
    <div class="carousel-item">
        <img class="d-block w-100" src="pic/main/jusang.jpg" alt="네번째 슬라이드">
                <div class="carousel-caption d-none d-md-block"></div>
    </div>

        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">이전</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">다음</span>
        </a>
</div>     

<div class="mainmenu">
        <div class="text"><a href="">관광지 게시판<br><br>
            <p>
                제주도 모든 여행지를 한 눈에…
            </p>
            <p>
                내가 가본 제주는 어디까지일까? 수많은 제주의 아름다운 여행지를 취향에 맞게 선택해보자.
                368개의 크고 작은 오름을 비롯하여 눈 돌리면 어디에서나 마주치는 한라산 그리고 푸른 바다…. 
                제주의 보석 같은 여행지가 여러분의 선택을 기다린다.
            </p>
        </a>
        </div>
        <div class="pic">
            <div class="information">
                <div class="information_1">
                    <a href="tourist-detail.html">                      <!--  수정해주세요 페이지 경로   -->
                        <div class="img"><img class="tourimg" src="pic/tourist-img/detail01_slide1.jpg"></div>      <!--  이미지 경로  -->
                        <div class="content">
                            <h6>성산일출봉</h6>
                            <h6>서귀포시>성산</h6>
                        </div>
                    </a>
                </div>
                <div class="information_1">
                    <a href="tourist-detail.html">                      <!--  수정해주세요 페이지 경로   -->
                        <div class="img"><img class="tourimg" src="pic/tourist-img/detail01_slide2.jpg"></div>      <!--  이미지 경로  -->
                        <div class="content">
                            <h6>성산일출봉</h6>
                            <h6>서귀포시>성산</h6>
                        </div>
                    </a>
                </div>
                <div class="information_1">
                    <a href="tourist-detail.html">                      <!--  수정해주세요 페이지 경로   -->
                        <div class="img"><img class="tourimg" src="pic/tourist-img/detail01_slide3.jpg"></div>      <!--  이미지 경로  -->
                        <div class="content">
                            <h6>성산일출봉</h6>
                            <h6>서귀포시>성산</h6>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    
    <div class="mainmenu">
        <div class="text"><a href="food_main.html">맛집 게시판<br><br>
            <p>
            무엇을 먹을까? 행복한 고민에 빠지게 하는 제주의 한식
            칼칼한 갈치조림, 고소한 고등어 구이, 담백한 전복뚝배기, 성게미역국, 제주 흑돼지 구이 등 다양한 제주의 음식은 행복한 고민에 빠지게 한다. </p>
            <p>
            다양하고 싱싱한 식재료를 이용한 담백하고 맛깔스러운 제주도 음식은 먹는 즐거움을 풍요롭게 한다.</p></a></div>
        <div class="pic">
            <div class="information">
                <div class="information_1">
                    <a href="food_detail1.html">
                        <div class="img"><img class="tourimg" src="pic/food/black.jpg"></div>
                        <div class="content">
                            <h6>산방식당(모슬포 본점)</h6>
                            <h6>서귀포시>안덕</h6>
                        </div>
                    </a>
                </div>
                <div class="information_1">
                    <a href="food_detail1.html">
                        <div class="img"><img class="tourimg" src="pic/food/fish.jpg"></div>
                        <div class="content">
                            <h6>로뎀</h6>
                            <h6>제주시>구착</h6>
                        </div>
                    </a>
                </div>
                <div class="information_1">
                    <a href="food_detail1.html">
                        <div class="img"><img class="tourimg" src="pic/food/guk.jpg"></div>
                        <div class="content">
                            <h6>오라숲소리</h6>
                            <h6>제주시>제주시내</h6>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="mainmenu">
        <div class="text"><a href="accomo_main.html">숙소 게시판<br><br><p>호텔에서 게스트 하우스까지 다양한 제주의 숙소<br><br>한라산과 에메랄드 빛 바다가 보이는 럭셔리한 호텔<br> 부터 주머니 가벼운 대학생을위한 게스트 하우스까지!<br> 당신의 여정에 마침표를 찍어줄 제주의 다양한 숙소를 찾아보자.</p>
        </a></div>      <!-- 숙소 메인페이지 디테일-->
        <div class="pic">
            <div class="information">
                <div class="information_1">
                    <a href="accomo_detail.html">                      <!--  페이지 경로   -->
                        <div class="img"><img class="tourimg" src="pic/accomodation/oceansweet.gif"></div>      <!--  이미지 경로  -->
                        <div class="content">
                            <h6>오션스위츠 제주</h6>
                            <h6>제주시>제주시내</h6>
                        </div>
                    </a>
                </div>
                <div class="information_1">
                    <a href="accomo_detail.html">                     <!--  페이지 경로   -->
                        <div class="img"><img class="tourimg" src="pic/accomodation/pension.jpg"></div>      <!--  이미지 경로  -->
                        <div class="content">
                            <h6>나미송이 머무는곳</h6>
                            <h6>제주시>애월</h6>
                        </div>
                    </a>
                </div>
                <div class="information_1">
                    <a href="accomo_detail.html">                      <!--  페이지 경로   -->
                        <div class="img"><img class="tourimg" src="pic/accomodation/gusethouse.gif"></div>      <!--  이미지 경로  -->
                        <div class="content">
                            <h6>조천 스위츠 마을</h6>
                            <h6>제주시>조천</h6>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <hr id="hr">
   
    <div id="footer"></div>
</body>
</html>