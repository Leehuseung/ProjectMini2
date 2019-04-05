<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/jeju/resources/css/member/signupform.css">
</head>
<body>
    <div class="body"></div>
        <div class="grad"></div>
        <br>
        <div class="header">
                <div><span>제주도 어디까지 가봤니?</span></div>
           </div>
        <br>
        
        <form method="get" action="/jeju/view/member/signup.do">
        	<div class="login">
            <p id="pass">회원가입</p>
           <span class="n">이름</span><input type="text" placeholder="Name" name="name"><br>
           <span class="i">아이디</span><input type="id" placeholder="ID" name="id"><button class="check">중복확인</button><br>
           <span class="p">비밀번호</span><input type="password" placeholder="Password" name="pass1"><br>
           <span class="con">비밀번호 확인</span><input id="passwordcon" type="password" placeholder="Password" name="pass2"><br>
           <span class="e">이메일</span><input type="email" placeholder="Email" name="email"><button class="check">중복확인</button>
            <br><br>            
           <button class="sign">가입</button>&nbsp;
           <button class="sign" onclick="location.href='main_loginform.html'">뒤로</button>          
        </div>  
        </form>
       
      
</body>
</html>