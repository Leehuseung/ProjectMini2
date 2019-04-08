<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>tourist-detail</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../../resources/css/main.css" />
    <link rel="stylesheet" type="text/css" href="../../resources/css/tourist/tourist-detail.css" />
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
</head>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script> 
<script type="text/javascript">   
    $(document).ready( function() { 
        $("#headers").load("../header.html");  // 원하는 파일 경로를 삽입하면 된다
        $("#footer").load("../footer.html");  // 원하는 파일 경로를 삽입하면 된다
    }); 
</script>
<body>
    <div id="headers"></div>
    <div class="body">
        <div class="sub-title">
            제주도의 관광지를 한눈에...
        </div>
        <div class="side">
            <div class="side-menu">
                <h2>관광지</h2>
                <br>
                <ul class="side-menu-list">
                    <li><a href="#">전체<span></span></a></li>
                    <li><a href="#">자연<span></span></a></li>
                    <li><a href="#">문화관광<span></span></a></li>
                    <li><a href="#">레저/체험<span></span></a></li>
                    <li><a href="#">탬플스테이<span></span></a></li>
                    <li><a href="#">도보<span></span></a></li>
                    <li><a href="#">포토스팟<span></span></a></li>
                    <li><a href="#">일정추천<span></span></a></li>
                </ul>
            </div>   
        </div>
        <div class="wrapper">
            <div class="content-title">
                <p class="content-tag">
                    #자연
                </p>
                성산일출봉
                <div class="go-list">
                    <a href="tourist-main.html" >
                        <button>목록으로</button> 
                    </a>
                </div>
            </div>
            <div id ="slider">
                <a class="button" id="prev"><</a>
                <a class="button" id="next">></a>
                <div class="slide" id="slide1">
                    <img src="pic/tourist-img/detail01_slide1.JPG">
                </div>
                <div class="slide" id= "slide2">
                    <img src="pic/tourist-img/detail01_slide2.JPG">
                </div>
                <div class="slide" id= "slide3">
                    <img src="pic/tourist-img/detail01_slide3.JPG">
                </div>
                <div class="slide" id= "slide4">
                    <img src="pic/tourist-img/detail01_slide4.JPG">
                </div>
                <div class="slide" id= "slide5">
                    <img src="pic/tourist-img/detail01_slide5.JPG">
                </div>
                <div class="slide" id= "slide6">
                    <img src="pic/tourist-img/detail01_slide6.JPG">
                </div>
            </div>
            <ul class="detail-icon">
                <li>
                    <div class="iconDetail1"><a href="tourist-detail.html"><img src="pic/tourist-img/detail_info.png"></a></div>
                    <div>상세정보<br>&nbsp;</div>
                </li>
                <li>
                    <div class="iconDetail2"><a href="tourist-detail-map.html"><img src="pic/tourist-img/map.png"></a></div>
                    <div>지도<br>&nbsp;</div>
                </li>
                <li>
                    <div class="iconDetail3"><a href="tourist-detail-review.html"><img src="pic/tourist-img/review.jpg"></a></div>
                    <div>리뷰<br>7</div>
                </li>
                <li>
                    <div class="iconDetail4"><img src="pic/tourist-img/like.jpg"></div>
                    <div>좋아요<br>5</div>
                </li>
                <li>
                    <div class="iconDetail5"><img src="pic/tourist-img/view.jpg"></div>
                    <div>조회수<br>20</div>
                </li>
            </ul>
            <br>
            <div class="detail-title">
                소개 : 성산일출봉
                <div class="pay">
                    이용요금 : 유료,일반 : 2.000원 / 장애인 : 무료 (1-3급 동반 1인까지)
                </div>
            </div>
            <div class="location">
                주소 : 서귀포시 성산읍 일출로 284-13 
                <div>
                    주요 목적 : 산책로, 올레코스, 오름
                </div>
            </div>
            <div class="time">
                이용시간 : 평일 (07:30 ~ 19:30) , 주말 (07:30 ~ 19:30)
            </div>
            <div class="phone-num">
                연락처 : (+82) 064 783 0959
                <div class="update-date">
                    최종 수정일 2017.06.27
                </div>
            </div>
            <div class="up-del">
                <a href="tourist-update.html" >
                    <button>글수정</button>
                </a>
                <a href="tourist-main.html">
                    <button>글삭제</button>
                </a>
            </div>
            <div class="detail-info">
                <p class="info-title">
                    유네스코 세계자연유산이자 세계7대자연경관 대표 명소 <br>
                    제주 10경 중에서도 으뜸 <br>
                    정상에 올라 보는 일출과 일몰이 장관
                </p>
                <br>
                <p class="info-content">
                    유네스코 세계자연유산에 이어 세계7대자연경관 대표 명소로 선정된 제주 여행의 필수코스,
                    성산일출봉! 누구나 방문하는 곳이지만 그렇다고 해서 빼 놓으면 섭섭하다.
                    조금은 가파른 계단을 따라 정상까지 올라가면 숨이 턱 끝까지 차오르지만,
                    이내 보이는 망망대해의 경관에 고단함이 씻은 듯이 사라진다.
                    특히 일출봉이라는 이름답게 정상에서 보는 일출이 그야말로 기가 막히다는 사실! 
                    예로부터 제주 10경 중 으뜸이라고 전해질 정도이니 가능하다면 이곳에서 하루를 시작하는 것도 좋을 것.
                    참고로 바닷가 쪽으로도 내려갈 수도 있으니 바다를 조금 더 가까이 느끼고 싶다면 추천한다.
                    <br>
                    <br>
                    성산리사무소 하차, 도보 5분 
                </p>
            </div>
        </div>
    </div>
    <div id="footer"></div>
    <script>
        var slides = document.getElementsByClassName('slide');
        var i = 0;
        var slideCount = slides.length;

        //position last slide on left of first silde
        slides[slideCount - 1].style.left = "-100%"

        function moveLeft() {
        i++;
        if (i < slideCount) {
            slides[i].style.visibility = "visible";
            slides[i].style.left = "0";
            slides[i - 1].style.left = "-100%";
            console.log("next, i = " + i);
        } else {

            i = 0; //reset current slide to index 0
            slides[i].style.visibility = "visible";
            slides[i].style.left = "0"; // move current slide to center
            slides[slideCount - 1].style.left = "-100%" // move last slide to left
            console.log("back to start, i = " + i);

            for (var x = 1; x < slideCount - 1; x++) {
            slides[x].style.visibility = "hidden";
            slides[x].style.left = "100%";
            }
        }
        if (i === slideCount - 1) {
            slides[0].style.visibility = "hidden";
            slides[0].style.left = "100%";
        }
        if (i === slideCount - 2) {
            slides[slideCount - 1].style.visibility = "hidden";
            slides[slideCount - 1].style.left = "100%";
        }
        }

        function moveRight() {
        
        if (i > 0) {
            i--; // decrease value of index by 1
            slides[i].style.visibility = "visible";
            slides[i].style.left = "0";
            slides[i + 1].style.left = "100%";
            console.log("previous, i = " + i);
        } else {
            i = slideCount - 1; //reset current slide to last slide
            slides[i].style.visibility = "visible";
            slides[i].style.left = "0"; // move current slide to center
            slides[0].style.left = "100%" // move first slide to right
            console.log("back to end, i = " + i);

            for (var x = 1; x < slideCount - 1; x++) {
            slides[x].style.visibility = "hidden";
            slides[x].style.left = "-100%";
            }
        }
        if (i === 1) { // reset first slide on second slide
            slides[0].style.visibility = "hidden";
            slides[0].style.left = "-100%";
        }
        if (i === 0) { // move last slide to left
            slides[slideCount - 1].style.visibility = "hidden";
            slides[slideCount - 1].style.left = "-100%";
        }
        }

        var prevBut = document.getElementById('prev');
        prevBut.onclick = moveRight;

        var nextBut = document.getElementById('next');
        nextBut.onclick = moveLeft;
    </script>
      
</body>
</html>