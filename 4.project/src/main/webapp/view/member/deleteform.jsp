<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	* {
		font-family: 'Do Hyeon', sans-serif;
	}
	
	#deleteform {
		margin-top : 30px;
	}
	#deleteform > p {
		font-size : 30px;
		font-weight : bold;
		text-align : center;
		color : orange;
	}
	
	hr {
		border : 1px solid orange;
	}
	
	#deleteform > span {
		margin-left : 55px;		
		font-size : 18px;
	}
	#pass {
		line-height : 80px;
	}
	#pass1 {
		border: none;
    	border-bottom: 2px solid orange;
    	border-radius: 5px;	
    	margin-left : 45px;
	}
	
	#pass2 {
		border: none;
    	border-bottom: 2px solid orange;
    	border-radius: 5px;	
    	margin-left : 18px;
	}
	#delete {
		margin-top : 30px; 
		margin-left : 160px;
		width:50px; height : 30px;
		background : orange;
		color : white;
	}
	
</style>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"/>
</head>
<body>
	<div id="deleteform">
	<p>회원탈퇴</p>
	<hr>	
	<span id="pass">비밀번호 :</span> <input id="pass1" type="password" name="pass1">
	<br>
	<span>비밀번호확인 :</span> <input id="pass2" type="password" name="pass2">
	<br><br><br>
	<hr>
	<button type="button" id="delete">확인</button>
	
	</div>
	
	<script>
		$("#delete").click(function () {});
	</script>
</body>
</html>