<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../resources/css/member/loginform.css">
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
            <br>
            <br>
            <div><a href="findID.jsp">아이디찾기</a>&nbsp;|
            <a href="findPassword.jsp">비밀번호찾기</a></div>           
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
                         window.location.href = 'loginfailform.jsp';
    
                     } else {    
                         window.location.href = '/jeju/view/member/main.do';    
                     }
    			}
    			
    		});
    	});
    </script>
</body>
</html>


       	         