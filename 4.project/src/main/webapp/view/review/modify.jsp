<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Homepage</title>
    <link rel="stylesheet" type="text/css" href="../../resources/css/main.css" />
    <link rel="stylesheet" type="text/css" href="../../resources/css/review/modify.css" />
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Gaegu|Nanum+Pen+Script" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

</head>
<jsp:include page="/view/header.jsp" />
<body>
    <div id="headers"></div>

    <div class="body">
        <form method="post" action="update.do">
        <input type="hidden" name="no" value="${update.boardNo}" />
            <div id="img">
                <div id="contents">
                    <div class="title-area">
                    <div class="mytrip" >나의여행기록</div>
                </div>
                <div class="title-area2">
                  
                </div>
            </div>            
        </div>
            <div class="list">
                <table summary="나의여행 글등록">
                <tr>
                    <th style="width:20%">말머리</th>
                    <th style="width:20%">
                        <select id="choice1" name="reviewCategory">
                            <option>선택</option>
                         	<option value="1"<c:if test="${update.reviewCategoryNo==1}">selected</c:if>>관광</option>
                            <option value="2" <c:if test="${update.reviewCategoryNo==2}">selected</c:if>>맛집</option>
                            <option value="3"<c:if test="${update.reviewCategoryNo==3}">selected</c:if>>숙박</option>
                        </select>
                    </th>
                    <th style="width:15%;">평가</th>
                    <th style="width:70%">
                            <select id="choice2" name="ratingCategory">
                                <option>선택하세요</option>
                             	<option value="11" <c:if test="${update.ratingCategoryNo==11}">selected</c:if>>★★★★★ 아주 좋아요</option>
                                <option value="12" <c:if test="${update.ratingCategoryNo==12}">selected</c:if>>★★★★☆ 맘에 들어요</option>
                                <option value="13" <c:if test="${update.ratingCategoryNo==13}">selected</c:if>>★★★☆☆ 보통이에요</option>
                                <option value="14" <c:if test="${update.ratingCategoryNo==14}">selected</c:if>>★★☆☆☆ 별로에요</option>
                                <option value="15" <c:if test="${update.ratingCategoryNo==15}">selected</c:if>>★☆☆☆☆ 추천하지않아요</option>
                            </select>
                    </th>
                </tr>
                <tr>
                    <th>제목</th> 
                    <td colspan="3"><input id="content" type="text" name="title" value="${update.title}"/></td>
                </tr>
                <tr>
                    <th>파일첨부</th>
                    <td colspan="2"><span id="contentimg">pic/review/food1.png</span></td>
                    <td > <div class="filebox">  
                            <label for="ex_file">파일 선택</label>
                            <input type="file" id="ex_file">
                          </div></td>
                </tr>
              
            </table> 
            
                <div class="contentWrite">
                    <textarea id="contentWrite1"rows="30" cols="4" name="content" > 
 					${update.content}</textarea>
                </div>
                </div>
                <span class="save">
                        <button id="save" type="submit">저장</button>
                </span>
        </form>
     

    </div>
        
        <span class="list1">        
            <button id="list1"><a href="list.do">목록보기</a></button>
        </span>    
    <div id="footer"></div>
    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script> 
    <script type="text/javascript">   
        $(document).ready( function() { 

   		$("#footer").load("../footer.html");  // 원하는 파일 경로를 삽입하면 된다
   		});
        </script>
    
</body>


</html>