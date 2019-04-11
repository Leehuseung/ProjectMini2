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
    <link rel="stylesheet" type="text/css" href="../../resources/css/tourist/tourist-wirte.css" />
    <link rel="stylesheet" type="text/css" href="../../resources/css/main.css" />
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
</head>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script> 
<script type="text/javascript">   
    $(document).ready( function() { 
    	$("#footer").load("../footer.html");  // 원하는 파일 경로를 삽입하면 된다
    }); 
</script>
<jsp:include page="/view/header.jsp" />
<body>
    <div id="headers"></div>
    <div class="body">
    <!-- enctype="multipart/form-data" -->
    <form method='POST' action='/jeju/view/tourist/writeboard.do' enctype="multipart/form-data">
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
                    태그 : <input type="text" class="text" name="tag" placeholder="ex)#자연"/>
                    지명 : <input type="text" class="text" name="nomination" placeholder="ex)서귀포시 > 성산"/>
                    간단설명 : <input type="text" class="text" name="simpleIntroduce" placeholder="ex)제주도의 랜드마크"/>
                </p>
                제목 : <input type="text" class="text" name="title" placeholder="ex)성산일출봉"/>
                <div>
                    <a href="touristlist.do" >
                        <button>목록으로</button> 
                    </a>
                </div>
            </div>
            <div class="picture">
                파일첨부 : <br>
                <input multiple="multiple" type="file" id="attach1" name = "attach1"/>
               	<label for ="attach1" class="attach1"></label><br>
               	<input multiple="multiple" type="file" id="attach2" name = "attach2"/>
               	<label for ="attach2" class="attach2"></label><br>
               	<input multiple="multiple" type="file" id="attach3" name = "attach3"/>
               	<label for ="attach3" class="attach3"></label><br>
               	<input multiple="multiple" type="file" id="attach4" name = "attach4"/>
               	<label for ="attach4" class="attach4"></label><br>
            </div>
            <br>
            <ul class="detail-icon">
                <li>
                    <div class="iconDetail1"><img src="../../resources/images/tourist/detail_info.png"></div>
                    <div>상세정보<br>&nbsp;</div>
                </li>
                <li>
                    <div class="iconDetail2"><img src="../../resources/images/tourist/map.png"></div>
                    <div>지도<br>&nbsp;</div>
                </li>
                <li>
                    <div class="iconDetail3"><img src="../../resources/images/tourist/review.jpg"></div>
                    <div>리뷰<br>0</div>
                </li>
                <li>
                    <div class="iconDetail4"><img src="../../resources/images/tourist/like.jpg"></div>
                    <div>좋아요<br>0</div>
                </li>
                <li>
                    <div class="iconDetail5"><img src="../../resources/images/tourist/view.jpg"></div>
                    <div>조회수<br>0</div>
                </li>
            </ul>
            <div class="detail-title">
                소개 : <input type="text" class="text" name="introduce" placeholder="ex)성산일출봉"/>
                <div class="pay">
                    이용요금 : <input type="text" class="text" name="fee" placeholder="ex)유료,일반 : 2.000원 / 장애인 : 무료 (1-3급 동반 1인까지)"/>
                </div>
            </div>
            <div class="location">
                주소 : <input type="text" class="text" name="address" placeholder="ex)서귀포시 성산읍 일출로 284-13"/>
                <div>
                    주요목적 : <input type="text" class="text" name="purpose" placeholder="ex)산책로, 올레코스, 오름"/>
                </div>
            </div>
            <div class="time">
                이용시간 : 평일 <input type="text" class="text" name="weekday" placeholder="ex)(07:30 ~ 19:30)"/> , 주말 <input type="text" class="text" name="weekend" placeholder="ex)(07:30 ~ 19:30)"/>
            </div>
            <div class="phone-num">
                연락처 : (+82) <input type="text" class="text" name="contact" placeholder="ex)064 783 0959"/>
            </div>
            <div class="up-del">
                
            </div>
            <div class="detail-info">
                <textarea class="info-title" name="contentTitle" placeholder="세줄이내로 상세정보 제목을 적어주세요"></textarea> <br />
                <br>
                <textarea class="info-content" name="content" placeholder="본문 내용을 적어주세요"></textarea>
                <br><br><br>
                <div>    
                    <a>
                        <button type="submit">등록하기</button>
                    </a>
                    <a href="touristlist.do">
                        <button>취소</button>         
                    </a>
                </div>
            </div>
        </div>
    </form>
    </div>
    <div id="footer"></div>
<script>

	$(function(){
		for(let i = 1; i < 5 ; i++) { 
		    $("#attach"+i).change(function(e){       
		        var fileName = e.target.files[0].name;  
		        $('.attach'+i).html("파일명: " + fileName);
		    }
		  )
	  }
	});

</script>
</body>
</html>