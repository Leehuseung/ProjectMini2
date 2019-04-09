<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="body"></div>
        <div class="grad"></div>
        <br>
        <div class="header">
                <div><span>제주도 어디까지 가봤니?</span></div>
           </div>
        <br>
        <div class="login">
            <p id="id">아이디 찾기</p>
            <p id="text">회원가입시 등록한 정보를 입력하세요.</p><br>
           <span>이름</span> <input type="text" placeholder="username" name="user"><br>
           <span>이메일</span> <input type="email" placeholder="email" name="email">
            <br><br>
            <a href="main_findPassword.html"><span id="pass">비밀번호찾기</span></a>   
            <br><br>
           
           <button>확인</button>&nbsp;
           <button onclick="location.href='main_loginform.html'">뒤로</button>
          
        </div>   
</body>
</html>