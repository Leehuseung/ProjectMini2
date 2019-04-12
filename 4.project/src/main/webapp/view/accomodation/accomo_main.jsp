<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>숙소메인</title>
    <link rel="stylesheet" type="text/css" href="../../resources/css/accomodation/accomo_main.css" />
    <link rel="stylesheet" type="text/css" href="../../resources/css/main.css" />
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script> 

<script type="text/javascript">   
$(document).ready( function() { 

$("#headers").load("../header.html");   // 원하는 파일 경로를 삽입하면 된다
$("#footer").load("../footer.html"); // 원하는 파일 경로를 삽입하면 된다
}); 
</script>
    
    
    


</head>
<body>
<div id="headers"></div>
        

    <div class="body">
        
        <div class="introduction">
           
            <ul class="title">숙소</ul>
           
            <ul class="title2">호텔에서 게스트 하우스까지 다양한 제주의 숙소</ul>
            <ul class="title3">한라산과 에메랄드 빛 바다가 보이는 럭셔리한 호텔 부터 주머니 가벼운 대학생을위한 게스트 하우스까지!<br> 당신의 여정에 마침표를 찍어줄 제주의 다양한 숙소를 찾아보자.</ul>
        </div>
        <div class="search-city">
            <form action="mainSearch.do" method="get">
                
                
                <ul class="type">
                    <li class="subtype1">숙소 종류</li>
                    
                    <li class="subtype2">
                        <input type="radio" id="radio_total" class="radioType"  name="type" value="전체"  />
                        <label for ="radio_total" class="type">전체</label>
                        <input type="radio" id="radio_hotel" class="radioType"  name="type" value="호텔"  />
                        <label for ="radio_hotel"  class="type">호텔</label>
                        <input type="radio" id="radio_pension"  class="radioType" name="type" value="펜션"  />
                        <label for ="radio_pension"  class="type">펜션</label>
                        <input type="radio" id="radio_gusetHouse" class="radioType"  name="type" value="게스트하우스"  />
                        <label for ="radio_gusetHouse"   class="type">게스트 하우스</label>
                    </li>
                </ul>
                <ul class="city">
                    <li class="subcity1">지역</li>
                    <li class="subcity2">  
                        <input type="radio" class="radioCity" id="radio_totalcity"  name="city" value="전체"  />
                        <label for ="radio_totalcity" class="city" >전체</label>
                        <input type="radio" id="radio_jeju" class="radioCity" name="city" value="제주시"  />
                        <label for ="radio_jeju"  class="city">제주시</label>
                        <input type="radio" id="radio_seogwipo" class="radioCity"  name="city" value="서귀포시"  />
                        <label for ="radio_seogwipo"  class="city">서귀포시</label>
                        <input type="radio" id="radio_aewol" class="radioCity"  name="city" value="애월읍"  />
                        <label for ="radio_aewol"   class="city">애월읍</label>
                        
                        
                    </li>
                    <li class="subcity3">  
                        <input type="radio" id="radio_hanlim" class="radioCity"  name="city" value="한림읍"   />
                        <label for ="radio_hanlim" class="city">한림읍</label>
                        <input type="radio" id="radio_seongsan" class="radioCity"  name="city" value="성산읍"  />
                        <label for ="radio_seongsan"  class="city">성산읍</label>
                        <input type="radio" id="radio_udo" class="radioCity"  name="city" value="우도"  />
                        <label for ="radio_udo"  class="city">우도</label>
                        <input type="radio" id="radio_chuza" class="radioCity"  name="city" value="추자도"  />
                        <label for ="radio_chuza"   class="city">남원읍</label>        
                    </li>
                    
                </ul>
                <ul class="select" id="select"><button id="button">검색<button/>
                    
                </ul>
                <div id ="accomo_write"><a href="writeForm.do">글 등록</a></div>
            </form>
        </div>
        
        <div class="thumbnail-info">
          
         <%int i=1;%> 
          
          
         <script>
         var k=1;
         </script>
    	<c:forEach var="board" items="${list}">
    	
        <div class="info_block">
            <div class="info_header2">위치:${board.city}>${board.town} </div>
            <div class="info_pic<%=i++ %>"></div>
            <div class="info_line">${board.ment}</div>
            <div class="info_bottom">
                <div class="bottom_title">${board.name}</div>
                <div></div>
                <div class="bottom_detail"><a href="detail.do?accNo=${board.accNo}"><span>자세히 보기</span></a></div>
            </div>
    </div>
    
    <script>

$('.info_pic'+ k).css('background-image','url("${board.mainFilePath}")'); 
$('.info_pic'+ k).css('background-size','cover');
$('.info_pic'+ k).css('background-repeat','no-repeat');
k++;
</script>
    
    </c:forEach>
  
    
   
    </div>
           
    <div class="page">
           <c:if test="${pageResult.count != 0}">
				<jsp:include page="accomo_page.jsp">
					<jsp:param name="link" value="accomo_main.do"/>
				</jsp:include>
			</c:if>

    </div>
     
    



    <div id="footer"></div>





</body>
</html>