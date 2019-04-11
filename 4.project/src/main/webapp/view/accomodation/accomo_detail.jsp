<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>

<html lang="en">

        <script src="//code.jquery.com/jquery-1.11.0.min.js"></script> 
        <script type="text/javascript">   
        $(document).ready( function() { 

        $("#headers").load("../header.html");  // 원하는 파일 경로를 삽입하면 된다
        $("#footer").load("../footer.html");  // 원하는 파일 경로를 삽입하면 된다
        }); 
        </script>



<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Homepage</title>
     <link rel="stylesheet" type="text/css" href="../../resources/css/accomodation/accomo_write.css" />
    	<link rel="stylesheet" type="text/css" href="../../resources/css/accomodation/accomo_detail.css"/>
    
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    
</head>
<body>

 <div id="headers"></div>
   <div class="edit_delete">
    <div class="edit"><a href="accomo_edit.html">글 수정</a></div>
    <div class="delete"><a href="delete.do">글 삭제</a></div>
    <div class="goMain"><a href="">메인이동</a></div>
   </div>
   
   <div class="info_body">
      <div class="head_pic_info">
          <div class="head_pic">a</div>
          <div class="head_info">
             <div class="box1">${board.name}</div>
             <div class="box2">기본정보<br><br>
                                주소: ${board.city} ${board.town}  ${board.address}<br><br>
                                연락처:${board.contact}<br><br>
                                홈페이지:${board.homepage}</div>
             
          </div>
      </div>
      <div class="pic1_pic2">
        <div class= "pic1"></div>
        <div class= "pic2"></div>
      </div>
      <div class="text"><p>${board.intro}
      
       
    </p> </div>
        <div class="pic_info"> 
          <div class="pic_title">
          <div>사진첩</div>
            </div>
            <div class="pic_detail">
                <div class="detail_pic1"></div>
                <div class="detail_pic2"></div>
                <div class="detail_pic3"></div>
                <div class="detail_pic4"></div>
                
            </div>
           
        </div>
   
   
   
   
   <div id="footer"></div>


</div>


<script>

$('.head_pic').css('background-image',`url("${board.mainFilePath}")`);
$('.pic1').css('background-image',`url("${board.subFilePath1}")`);
$('.pic2').css('background-image',`url("${board.subFilePath2}")`);
//$('.pic_middle2').css('background','url("' + e.target.result + '")'); 

</script>

</body>
</html>