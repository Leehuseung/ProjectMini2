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
    <title>tourist-update</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../../resources/css/main.css" />
    <link rel="stylesheet" type="text/css" href="../../resources/css/tourist/tourist-update.css" />
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
                    태그 : <input type="text" class="text" name="tag" value="${tourist.tag}"/>
                    지명 : <input type="text" class="text" name="nomination" placeholder="${tourist.nomination}"/>
                    간단설명 : <input type="text" class="text" name="simpleIntroduce" placeholder="${tourist.simpleIntroduce}"/>
                </p>
                제목 : <input type="text" class="text" name="title" value="${tourist.title}"/>
                <div>
                    <a href="touristlist.do" >
                        <button>목록으로</button> 
                    </a>
                </div>
            </div>
            <div class="picture">
                <form action="" method="post" enctype="multipart/form-data" name="">
                    <input multiple="multiple" type="file" name="FileName[]">
                </form>
                <img src="pic/tourist-img/detail01_slide1.jpg"/>
            </div>
            <br>
            <ul class="detail-icon">
                <li>
                    <div class="iconDetail1"><img src="../../resources/images/tourlist/detail_info.png"></div>
                    <div>상세정보<br>&nbsp;</div>
                </li>
                <li>
                    <div class="iconDetail2"><img src="../../resources/images/tourlist/map.png"></div>
                    <div>지도<br>&nbsp;</div>
                </li>
                <li>
                    <div class="iconDetail3"><img src="../../resources/images/tourlist/review.jpg"></div>
                    <div>리뷰<br>${tourist.reviewCnt}</div>
                </li>
                <li>
                    <div class="iconDetail4"><img src="../../resources/images/tourlist/like.jpg"></div>
                    <div>좋아요<br>${tourist.likeCnt}</div>
                </li>
                <li>
                    <div class="iconDetail5"><img src="../../resources/images/tourlist/view.jpg"></div>
                    <div>조회수<br>${tourist.viewCnt}</div>
                </li>
            </ul>
            <div class="detail-title">
                소개 : <input type="text" class="text" name="introduce" value="${tourist.introduce}"/>
                <div class="pay">
                    이용요금 : <input type="text" class="text" name="fee" value="${tourist.fee}"/>
                </div>
            </div>
            <div class="location">
                주소 : <input type="text" class="text" name="address" value="${tourist.address}"/>
                <div>
                    주요목적 : <input type="text" class="text" name="purpose" value="${tourist.purpose}"/>
                </div>
            </div>
            <div class="time">
                이용시간 : 평일 <input type="text" class="text" name="weekday" value="${tourist.weekday}"/> , 주말 <input type="text" class="text" name="weekend" value="${tourist.weekend}"/>
            </div>
            <div class="phone-num">
                연락처 : (+82) <input type="text" class="text" name="contact" value="${tourist.contact}"/>
                <div class="update-date">
                    최종 수정일 <fmt:formatDate value="${tourist.updateDate}" pattern="yyyy년-MM월-dd일" />
                </div>
            </div>
            <div class="up-del">
                
            </div>
            <div class="detail-info">
                <textarea class="info-title" name="contentTitle" placeholder="${tourist.contentTitle}"></textarea> <br />
                <br>
                <textarea class="info-content" name="content" placeholder="${tourist.content}"></textarea>
                <br><br><br>
                <div>
                    <a href="updateboard.do">
                        <button>수정하기</button>
                    </a>
                    <a>
                        <button onClick="history.back()">취소</button>                
                    </a>    
                </div>
            </div>
        </div>
    </div>
    <div id="footer"></div>

</body>
</html>