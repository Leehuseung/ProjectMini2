<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../../resources/css/main.css" />
<link rel="stylesheet" href="../../resources/css/member/manageform.css">

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

</head>
<body>
<script>
	$(document).ready( function() {
		$("#footer").load("../footer.html"); 
	});
</script>	

<jsp:include page="/view/header.jsp" />
    <div class="body">
        <div class="member"></div>
        <p id="myinfo">회원관리</p>
        
        <div class="manage">
            <div>번호</div>
            <div>아이디</div>
            <div>이름</div>
            <div>이메일</div>
            <div>가입일</div>
            <div>누적신고횟수</div>
            <div>강퇴여부</div>
            <div>1</div>
            <div>dltndks</div>
            <div>이수안</div>
            <div>dltndks@naver.com</div>
            <div>2019-03-27</div>
            <div>0회</div>
            <div><button class="ban"><a href="javascript:void(0); onclick=doAction();">강퇴하기</a></button></div>          
                       
        </div>
    </div>
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
    </div>    
    <div id="footer"></div>
</body>
</html>