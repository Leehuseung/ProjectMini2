<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
        <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
         <link rel="stylesheet" type="text/css" href="../../resources/css/main.css" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

        
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Homepage</title>
    <style>
  
     /* 맛집 부분 */
     .container{
        width:1200px;
        text-align:center;
     }
     .subtitle{
         box-sizing: border-box;
         width:100%;
         line-height:100px;
         text-align:center;
     }
     .write{
         padding-right:100px;
         padding-left:100px;
         display:grid;
         grid-template-columns:20% 80%;
         text-align:center;
         line-height:50px;
     }
     .write > div{
         height: 50px;
         box-sizing: border-box;
         width:100%;
     }
     .write > div > input{
         width:100%;
         height:20px;
     }
     .name{
         text-align: center;
     }
     button{
         height:40px;
         width:100px;
         font-size:15px;

     }
     .adrress{
         text-align:center;
         height:30px;
         width:100px;
         font-size:15px;
     }
     textarea{
         height:100%;
         width:100%;
     }
     .selecta{
         text-align:left;
     }
    .photo{
        width:83.35%;
        height:100%;
        box-sizing: border-box;
        display:grid;
        grid-template-columns:20% 80%;
        margin-bottom:20px;
    }
    .photo > div{
        box-sizing:border-box;
        height:150px;
        width:100%;
        line-height:150px;
    }
    .photoDetail{
        display:grid;
        grid-gap:20px;
        grid-template-columns : 1fr 1fr 1fr 1fr;
        padding-right:20px;
        padding-left:20px;
    }
    .photoDetail > div{
        width:100%;
        height:100%;
        border:1px solid black;
        box-sizing:border-box;
    }
    .photoDetail > div > img{
        width:100%;
        height:100%;
    }
    .sub{
        margin-top:20px;
    }
    .bot > button{
        height:30px;
        width:100px;
        font-size:18px;
        border-style:none;
        background-color:orange;
        color:white;margin:10px;
        border-radius: 10px;
    }
 
    </style>


</head>
<!-- include -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script> 
<script type="text/javascript">   
$(document).ready( function() { 

$("#headers").load("../header.jsp");  // 원하는 파일 경로를 삽입하면 된다
$("#footer").load("../footer.html");  // 원하는 파일 경로를 삽입하면 된다
}); 


</script>
<body>
    <div id="headers"></div>
    <div class="body">
        <form method='post' action='/jeju/view/restraunt/restraunt_update.do?num=${board.boardNo}' enctype="multipart/form-data">
        <div class="container">
            <div class="subtitle">
                <h1>글쓰기</h1>               
            </div>
            <div class="write">    
                <div class="name">음식점 이름 </div>
                <div><input type=text name="name" value="${board.name}"/></div>
                <div class="name">음식점 소개 </div>
                <div><input type=text name="intro" value="${board.intro}"/></div>
                <div>음식카테고리</div>
                <div class="selecta">
	                <span>
	                    <select class="adrress" name="foodCategory">
	                        <option value='1' >한식</option>
	                        <option value='2'>일식</option>
	                        <option value='3'>양식</option>
	                        <option value='4'>카페</option>
	                    </select>
					</span>	
                </div>
                
                <div class="name">지역선택 </div>
                <div class="selecta">
	                    <select class="adrress" name="location" id="locationbox">
	                        <option value='제주시내'>제주시내</option>
	                        <option value='한경면'>한경면</option>
	                        <option value='한림읍'>한림읍</option>
	                        <option value='애월읍'>애월읍</option>
	                        <option value='조천읍'>조천읍</option>
	                        <option value='구좌읍'>구좌읍</option>
	                        <option value='우도'>우도</option>
	                        <option value='가파도'>가파도</option>
	                        <option value='마라도'>마라도</option>
	                        <option value='대정읍'>대정읍</option>
	                        <option value='안덕면'>안덕면</option>
	                        <option value='중문'>중문</option>
	                        <option value='서귀포시'>서귀포시</option>
	                        <option value='남원읍'>남원읍</option>
	                        <option value='표선면'>표선면</option>
	                    </select>
                </div>
            </div>
            <h2 class="sub">이용안내 입력</h2>
            <div class="write">
                <div class="name">이용시간 </div>
                <div><input  name="businessHours" type=text value="${board.businessHours}"/></div>
                <div class="name" >편의시설 </div>
                <div><input type=text  name="amendity" value="${board.amendity}"/></div>
            </div>
            <div class="photo">
                <div>사진</div>
                <div class="photoDetail">
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
            </div>
                <div>
                    	<span id=filediv><input type="file" name = "attach1"/></span>
                    	<span id=filediv><input type="file" name = "attach2"/></span>
                    	<span id=filediv><input type="file" name = "attach3"/></span>
                    	<span id=filediv><input type="file" name = "attach4"/></span>
                	</form>
                    <button type="submit">글등록</button>
                </div>
        </div>
        </form>
    </div>


    <div id="footer"></div>

</body>
</html>