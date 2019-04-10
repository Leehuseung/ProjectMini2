<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>

<body>
<div class="header">
    <div class="top">    			
        <div class="login">
        	<c:choose>
        		<c:when test="${empty sessionScope.user}">        		
                	<a href="${pageContext.request.contextPath}/view/member/loginform.do">로그인</a>                
                </c:when>
                
                <c:otherwise>
                	<a href="${pageContext.request.contextPath}/view/member/logout.do">로그아웃</a>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
    <div class="title">
    제주도 어디까지 가봤니?
    </div>
    <div class="search">
            <ul class="menu">
                <li><a href="/jeju/view/member/main.do" class="is-current" >Home</a></li>
                <li><a href="/jeju/view/tourist/touristlist.do" >관광지</a></li>
                <li><a href="/jeju/view/restraunt/restraunt_main.do" >맛집</a></li>
                <li><a href="accomo_main.html" >숙소</a></li>
                <li><a href="mytrip_listAll.html" >나의여행</a></li>
                <c:choose>
                <c:when test="${empty sessionScope.user}">
                	<li><a href="/jeju/view/member/loginform.do">마이페이지</a></li>
                </c:when>
                <c:otherwise>
                	<li><a href="/jeju/view/member/mypage.do">마이페이지</a></li>
                </c:otherwise>
                </c:choose>   
                             
                <c:choose>
                <c:when test="${sessionScope.id eq 'admin'}">
	                <li><a href="/jeju/view/member/manage.do" >관리페이지</a></li>
	            </c:when>
	            <c:otherwise>
	            	<li><a id="manage">관리페이지</a></li>
	            </c:otherwise>
                </c:choose>
                

                <div class="nav-underline"></div>
            </ul>
        </div>
</div>

<script>
	$("#manage").click(function () {
		alert("권한이 없습니다.");
	});
</script>

</body>
</html>