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
    <title>tourist-main</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../../resources/css/main.css" />
    <link rel="stylesheet" type="text/css" href="../../resources/css/tourist/tourist-main.css" />
    <link rel="stylesheet" type="text/css" href="../../resources/css/page.css" />
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
    <style>
    
    </style>
</head>
<!-- include -->
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
            <div class="content-top">
                <div>
                    전체<span>(${pageResult.count})</span>
                </div>
                <div></div>
                <div></div>
                <div class="sort_type">
                    <button type="button" class="ico_sort"><img src="../../resources/images/tourist/ico_sort_thumb_on.png"></button>
                    <button type="button" class="ico_sort_list"><img src="../../resources/images/tourist/ico_sort_list_on.png"></button>
                </div>
                <div>
                    <select name="list">
                        <option value="0">최신순</option>
                        <option value="1">리뷰순</option>
                        <option value="2">좋아요</option>
                        <option value="3">조회수</option>
                    </select>
                </div>
                <div>
                    <input type="text" name="title-serach" placeholder="여행지검색"/>
                </div>
            </div>
            <div class="content">
            	<c:forEach var="tourist" items="${list}" >
                <a href="detailboard.do?no=${tourist.boardNo}">
                    <div class="container" >
                        <div class="thumbnail">
                            <img src="../../resources/images/tourist/detail01_thum.jpg"/>
                            <h3>${tourist.title}</h3>
                        </div>
                        <div class="info">
                            <div class="infotitle"><b>${tourist.title}</b></div>
                            <div class="location">${tourist.nomination}</div>
                            <div class="category">${tourist.tag}</div>
                            <p>${tourist.simpleIntroduce}</p>
                            <br>
                            <div class="icon">
                                <div class="iconDetail"><img src="../../resources/images/tourist/like.jpg"></div>
                                <div class="iconDetail"><img src="../../resources/images/tourist/view.jpg"></div>
                                <div class="iconDetail"><img src="../../resources/images/tourist/review.jpg"></div>
                                <div>좋아요<br>${tourist.likeCnt}</div>
                                <div>조회수<br>${tourist.viewCnt}</div>
                                <div>리뷰수<br>${tourist.reviewCnt}</div>
                            </div>
                        </div>
                    </div>
                </a>
                </c:forEach>    
            </div>
            <div class="write">
                <a href="writeboardform.do">
                    <button>글쓰기</button>
                </a>
            </div>
            <div class="page">
                <c:if test="${pageResult.count != 0}">
					<jsp:include page="pagetype.jsp" >
						<jsp:param name="link" value="touristlist.do" />
					</jsp:include>
				</c:if>
            </div>
        </div>
    </div>
    <div id="footer"></div>

</body>


</html>