<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../resources/css/member/loginfailform.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
    <div class="body"></div>
    <div class="grad"></div>
    <div class="header">
        <div><span>제주도 어디까지 가봤니?</span></div>
    </div>
    <br>
    
    <form method="post" action ="/jeju/view/member/login.do">
    <div class="login">
			<p id="login">Sign In</p>
            <input type="text" placeholder="userID" id="id" name="user"><br>
			<input type="password" placeholder="password" id="pass" name="password">
			
            <div id="logcheck">아이디 또는 비밀번호를 다시 확인하세요.<br>
				등록되지 않은 아이디이거나, 
				아이디 또는 <br>비밀번호를 잘못 입력하셨습니다.
			</div>
			<br>
            <div id="find"><a href="main_findID.html">아이디찾기</a>&nbsp;|
            <a href="main_findPassword.html">비밀번호찾기</a></div>           
            <input type="button" id="log" name="log" value="Login">
            <input type="button" id="signup" name="signup" value="Sign Up">
    </div>   
    </form>
    
 <script>
    	$("#log").click(function () {
    		$.ajax({
    			url  : "/jeju/view/member/login.do",
    			data : "id="+$("#id").val()+"&pass="+$("#pass").val(),
    			success : function(data) {
    				 if (data == 0) {    					 
                         window.location.href = '#';
                         $("#id").focus();
    
                     } else {    
                         window.location.href = '/jeju/view/member/main.do';    
                     }
    			}
    			
    		});
    	});
    </script>
</body>
</html>