<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        $("#footer").load("../footer.html");  // 원하는 파일 경로를 삽입하면 된다
    }); 
</script>
<jsp:include page="/view/header.jsp" />
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
                    ${tourist.tag}
                </p>
                ${tourist.title}
                <div class="go-list">
                    <a href="touristlist.do" >
                        <button>목록으로</button> 
                    </a>
                </div>
            </div>
            <div id ="slider">
                <a class="button" id="prev"><</a>
                <a class="button" id="next">></a>
                <c:forEach var="file" items="${fileList}" varStatus="status">
                	<div class="slide" id="slide${status.count}">
                    	<img src="${file}">
                	</div>	
    	   		</c:forEach>		
            </div>
            <ul class="detail-icon">
                <li>
                    <div class="iconDetail1"><a href="tourist-detail.html"><img src="../../resources/images/tourist/detail_info.png"></a></div>
                    <div>상세정보<br>&nbsp;</div>
                </li>
                <li>
                    <div class="iconDetail2"><a href="tourist-detail-map.html"><img src="../../resources/images/tourist/map.png"></a></div>
                    <div>지도<br>&nbsp;</div>
                </li>
                <li>
                    <div class="iconDetail3"><a href="tourist-detail-review.html"><img src="../../resources/images/tourist/review.jpg"></a></div>
                    <div>리뷰<br>${tourist.reviewCnt}</div>
                </li>
                <li>
                    <div class="iconDetail4"><img src="../../resources/images/tourist/like.jpg"></div>
                    <div>좋아요<br>${tourist.likeCnt}</div>
                </li>
                <li>
                    <div class="iconDetail5"><img src="../../resources/images/tourist/view.jpg"></div>
                    <div>조회수<br>${tourist.viewCnt}</div>
                </li>
            </ul>
            <br>
            <div class="detail-title">
                소개 : ${tourist.introduce}
                <div class="pay">
                    이용요금 : ${tourist.fee}
                </div>
            </div>
            <div class="location">
                주소 : ${tourist.address}
                <div>
                    주요 목적 : ${tourist.purpose}
                </div>
            </div>
            <div class="time">
                이용시간 : 평일 ${tourist.weekday}, 주말 ${tourist.weekend}
            </div>
            <div class="phone-num">
                연락처 : ${tourist.contact}
                <div class="update-date">
                    최종 수정일 <fmt:formatDate value="${tourist.writeDate}" pattern="yyyy년-MM월-dd일" />
                </div>
            </div>
            <div class="up-del">
                <a href="updateboardform.do?no=${tourist.boardNo}" >
                    <button>글수정</button>
                </a>
                <a href="deleteboard.do?no=${tourist.boardNo}">
                    <button>글삭제</button>
                </a>
            </div>
            <div class="detail-info">
                <p class="info-title">
                    ${tourist.contentTitle}
                </p>
                <br>
                <p class="info-content">
                    ${tourist.content}
                    <br>
                    <br>
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