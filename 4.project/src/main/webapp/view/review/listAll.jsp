<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Homepage</title>
   <link rel="stylesheet" type="text/css" href="../../resources/css/main.css" />
   <link rel="stylesheet" type="text/css" href="../../resources/css/page.css" />
    <link rel="stylesheet" type="text/css" href="../../resources/css/review/listAll.css" />
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Gaegu|Nanum+Pen+Script" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

</head>
<body>
    <div id="headers"></div>

    <div class="body">
        <div id="img">
            <div id="contents">
                <div class="title-area">
                    <div class="mytrip" >나의여행</div>
                </div>
                <div class="title-area2">
                    <div class="choice1">
                        <select style="width:150px; height:50px; font-size:25px; border:none; font-family: 'Gaegu', cursive; font-weight: bold">
                                <option>제목+내용</option>
                                <option>제목</option>
                                <option>작성자</option>
                            </select>
                        </div>
                        <div class="search1">
                        <input id="search1" type="search" name="search" placeholder="검색할 내용을 입력하세요"/>
                    </div>
                    <div class="searchButton">
                        <button id="searchButton" >검색</button>
                    </div>
                    <div class="write">
                        <button id="write"><a href="writeform.do">글쓰기</a></button>
                    </div>
                </div>
            </div>            
        </div>
        <div class="list">
                <table summary="나의여행 전체목록">
                <tr>
                    <th style="width:8%">번호</th>
                    <th style="width:10%">
                        <select class="choice2" 
                        style=" width:100px; height:50px; font-size:35px; border:none; border-bottom: 1px solid gray; font-family: 'Gaegu', cursive; font-weight: bold">
                            <option>선택</option>
                            <option>관광</option>
                            <option>맛집</option>
                            <option>숙박</option>
                        </select>
                    </th>
                    <th style="width:40%">제목</th>
                    <th style="width:10%">작성자</th>
                    <th style="width:15%">작성일</th>
                    <th>조회수</th>
                    <th>좋아요</th>
                </tr>
                <c:forEach var="list" items="${lists}">
                <tr>
                    <td style="width:8%">${list.boardNo}</td>
                    <td style="width:10%">${list.reviewCategoryNo }</td>
                    <td style="width:40%"><a id="titleLink" href="detail.do?no="+${list.boardNo}>${list.title}</a></td>
                    <td style="width:10%">${list.name}</td>
                    <td style="width:15%"><fmt:formatDate value="${list.writeDate}" pattern="yyyy.MM.dd"/> </td>
                    <td>${list.viewCnt}</td>
                    <td>${list.likeCnt}</td>
                </tr>
                </c:forEach>
               
            </table> 
        </div>
        </div>
        <!-- 페이징 -->
        <div class="page">
            <div class="prev"><a href="#">이전</a></div>
            <div><a href="#">1</a></div>
            <div><a href="#">2</a></div>
            <div><a href="#">3</a></div>
            <div><a href="#">4</a></div>
            <div><a href="#">5</a></div>
            <div><a href="#">6</a></div>
            <div><a href="#">7</a></div>
            <div><a href="#">8</a></div>
            <div><a href="#">9</a></div>
            <div><a href="#">10</a></div>
            <div class="next"><a href="#">다음</a></div>
        </div>
              
    <div id="footer"></div>
    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script> 
   <script type="text/javascript">   
        $(document).ready( function() { 

   		$("#headers").load("../header.html");  // 원하는 파일 경로를 삽입하면 된다
   		$("#footer").load("../footer.html");  // 원하는 파일 경로를 삽입하면 된다
   		});
        </script>

   

  
</body>


</html>