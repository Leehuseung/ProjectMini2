<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../../resources/css/member/findPassword.css">
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
       <div class="login">
           <p id="pass">비밀번호 찾기</p>
           <p id="text">회원가입시 등록한 정보를 입력하세요.</p><br>
          <span>이름</span> <input type="text" placeholder="username" id="name" name="name"><br>
          <span>아이디</span> <input type="email" placeholder="userID" id="id" name="id"><br>
          <span>이메일</span> <input type="email" placeholder="userEmail" id="email" name="email">
           <br><br>
           <a href="/jeju/view/member/findIdform.do"><span id="findid">아이디찾기</span></a>   
           <br><br>
            
          <button type="button" id="check">확인</button>&nbsp;
          <button type="button" id="back">뒤로</button>
         
       </div>  
       
      <script>
	  	$("#check").click(function () {
			$.ajax({
				url : "/jeju/view/member/findPass.do",
				data : "name=" + $("#name").val() + "&id=" + $("#id").val() + "&email=" + $("#email").val(),
				success : function (data) {					
					if(data == 1) {    					 
	                    alert("이메일로 임시 비밀번호가 전송되었습니다.");
	                    window.location.href = '/jeju/view/member/loginform.do';
	                    
	                } else {    
	                    alert("입력한 정보를 확인하세요.");
	                    $("#name").focus();
	                }
				}
			});
		});
      
      
      $("#back").click(function () {
		window.location.href = '/jeju/view/member/loginform.do';
	  });
      </script> 
</body>
</html>