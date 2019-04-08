<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signupform</title>
<link rel="stylesheet" href="/jeju/resources/css/member/signupform.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
    <div class="body"></div>
        <div class="grad"></div>
        <br>
        <div class="header">
                <div><span>제주도 어디까지 가봤니?</span></div>
           </div>
        <br>
        
        <form method="post" action="/jeju/view/member/signup.do">
           <div class="login">
           <p id="pass">회원가입</p>
           <span class="n">이름</span><input type="text" placeholder="Name" name="name"><br>
           
           <span class="i">아이디</span><input type="id" placeholder="ID" id ="id" name="id">
           <button type="button" id="checkId" class="check">중복확인</button><br>
           
           <span class="p">비밀번호</span><input type="password" placeholder="Password" name="pass1"><br>
           
           <span class="con">비밀번호 확인</span><input id="passwordcon" type="password" placeholder="Password" name="pass2">
           <br>
           <span class="e">이메일</span><input type="email" id="email" placeholder="Email" name="email">
           <button type="button" id="checkEmail" class="check">중복확인</button>
           <br><br>            
           <button class="sign">가입</button>&nbsp;
           <button type="button" class="sign" id="back">뒤로</button>          
        </div>  
        </form>
       
       <script>
       		$("#back").click(function () {
       			window.location.href = '/jeju/view/member/loginform.do';
       		});
       
       		$("#checkId").click(function () {
       			$.ajax({     
       				url : "/jeju/view/member/signup.do",
       	            data : "id="+$("#id").val(),
       	            success : function(data){
       	            	if(data == 1) {
       	            		console.log(data);
    						alert("이미 사용중인 아이디 입니다.");
    						$("#id").focus();
    					} else {
    						console.log(data);
    						alert("사용 가능한 아이디 입니다.");						
    					}				
       	            }
       	         })
       	      });   
       		$("#checkEmail").click(function () {
       			$.ajax({     
       				url : "/jeju/view/member/signup.do",
       	            data : "email="+$("#email").val(),
       	            success : function(data){
       	            	if(data == 1) {
       	            		console.log(data);
    						alert("이미 사용중인 이메일 입니다.");
    						$("#email").focus();
    					} else {
    						console.log(data);
    						alert("사용 가능한 이메일 입니다.");						
    					}				
       	            }
       	         })
       	      });   
       </script>
      
</body>
</html>