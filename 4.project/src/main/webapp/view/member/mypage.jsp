<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/jeju/resources/css/member/mypage.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"/>
<link rel="stylesheet" type="text/css" href="/jeju/resources/css/main.css" />

</head>

<body>
<script>
	$(document).ready( function() {
		$("#footer").load("../footer.html"); 
	});
</script>	

<jsp:include page="/view/header.jsp" />

    <div class="body">
        <div class="container">
            <div class="subtitle">
            </div>
            <p id="myinfo">내 정보</p>
            </div>
            <div class="my">
                <div class="idbottom">아이디</div>
                <div class="idright">${member.id}</div>
                <div class="right">이름</div>
                <div>${member.name}</div>
                <div class="right">신규 비밀번호</div>
                <div><input type="password"></div>
                <div class="right">신규 비밀번호 확인</div>
                <div><input type="password"></div>
                <div class="right">이메일</div>
                <div>${member.email }</div>
            </div>
            <div class="changeinfo">
                <button type="button" id="changeinfo">정보 변경</button>
            </div>
        </div>
      
    <div id="footer"></div>

</body>
</html>