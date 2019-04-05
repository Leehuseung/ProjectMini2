<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../resources/css/member/loginform.css">
</head>
<body>
 <div class="body"></div>
    <div class="grad"></div>
    <div class="header">
        <div><span>제주도 어디까지 가봤니?</span></div>
    </div>
    <br>
    <div class="login">
			<p id="login">Sign In</p>
            <input type="text" placeholder="userID" name="user"><br>
            <input type="password" placeholder="password" name="password">
            <br>
            <br>
            <div><a href="main_findID.html">아이디찾기</a>&nbsp;|
            <a href="main_findPassword.html">비밀번호찾기</a></div>           
            <input type="button" onclick="location.href='main_adminhome.html'" value="Login">
            <input type="button" onclick="location.href='main_signupform.html'" value="Sign Up">
    </div>
    
</body>
</html>