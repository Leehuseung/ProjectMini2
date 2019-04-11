<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../resources/css/member/loginform.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>

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
            <div><a href="/jeju/view/member/findIdform.do">아이디찾기</a>&nbsp;|
            <a href="findPassword.jsp">비밀번호찾기</a></div>           
            <input type="button" id="log" name="log" value="Login">
            <input type="button" id="signup" name="signup" value="Sign Up">
            <br>
           	<div id="naver_id_login"></div>
 
    </div>    
    </form>
    
    
    <script type="text/javascript">
	  	var naver_id_login = new naver_id_login("1rzkZGYIbcGygmGA5uGi", "http://localhost/jeju/view/member/main.do");
	  	var state = naver_id_login.getUniqState();
	  	naver_id_login.setButton("white", 2,40);
	  	naver_id_login.setDomain("http://localhost/jeju/view/member/loginform.do");
	  	naver_id_login.setState(state);
	  	naver_id_login.setPopup();
	  	naver_id_login.init_naver_id_login();
     
    	$("#log").click(function () {
    		$.ajax({
    			url  : "/jeju/view/member/login.do",
    			data : "id="+$("#id").val()+"&pass="+$("#pass").val(),
    			success : function(data) {
    				 if (data == 0) {    					 
                         window.location.href = '/jeju/view/member/loginfailform.do';
    
                     } else {    
                         window.location.href = '/jeju/view/member/main.do';    
                     }
    			}
    			
    		});
    	});
    	
    	$("#signup").click(function () {
    		window.location.href = '/jeju/view/member/signupform.do';
    	});
    	
    </script>
</body>
</html>


       	         