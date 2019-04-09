<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" type="text/css" href="../../resources/css/accomodation/accomo_write_head.css" />
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <style>
    
    
    
   


    </style>

</head>
<body>

<div id="headers"></div>
  
   <form action="write.do" method="post" enctype="multipart/form-data">
   <div class="info_body">
      <div class="head_pic_info">
          <div class="head_pic">
                <div class=box1>
                        <span>메인사진 첨부하기</span>
                        <span id="box1_myPC">
                        <input id="myPC" type="file" name="mainPic" />
                        <label for ="myPC" class="box1_myPC_label">내 PC</label>
                    </span>
                </div>
                <div class = box2></div>
                <div class = box3 >
                        <span>파일명:  oceansweet.jpg </span>
                        <span class="head_Del"><a href="#">삭제</a></span>
                        </div>
          </div>
          <div class="head_info">
              <div class="box1">숙박 정보입력란</div>
              <div class="box2">주소:
                <select name="group">
                    <option value="1">제주시</option>
                    <option value="2">서귀포시</option>
                   
                </select>
                <select name="g" id="area2">
                    <option value="3">애월읍</option>
                    <option value="4">한림읍</option>
                    <option value="5">우도면</option>
                    <option value="6">성산읍</option>
                    <option value="7">남원읍</option>
                </select>
               <input id="leftAddress" type:"text" name="address">
              </div>
              <div class="box3">연락처: <input id="phoneNumber" type:"text" name="contact"></div>
              <div class="box4">홈페이지: <input id="website" type:"text" name="homepage"></div>
              <div class="box5">20자 멘트: <input id="ment" type:"text" name="ment"></div>
              <div class="box6">호텔 명: <input id="hotelname" type:"text" name="hotelName"></div>
          </div>
      </div>
      <div class="pic1_pic2">
        <div class= "pic1"> 
            <div class="pic_top">
                    <span>시설사진 </span>
                    <span id="top_myPC">
                    <input id="myPC_S" type="file" name="subPic1" />
                    <label for ="myPC_S" class="top_myPC_label">내 PC</label>
                </span>

            </div>
            <div class="pic_middle1"></div>
            <div class="pic_bottom">
                <span>파일명</span>
                <span class="bottom_Del"><a href="#">삭제</a></span>
            </div>
        </div>
        <div class= "pic1"> 
            <div class="pic_top">
                    <span>시설사진 </span>
                    <span id="top_myPC">
                    <input id="myPC_S" type="file" name="subPic2" />
                    <label for ="myPC_S" class="top_myPC_label">내 PC</label>
                </span>

            </div>
            <div class="pic_middle2"></div>
            <div class="pic_bottom">
                <span>파일명</span>
                <span class="bottom_Del"><a href="#">삭제</a></span>
            </div>
        </div>
                
        
  </div>
      <div class="text">
        <div> 
            <textarea name="intro" rows="20" cols="70" placeholder="숙소에 대해 소개해주세요"></textarea>
        </div>
      </div>
        <div class="pic_info"> 
            <div class="pic_title">
                    <div>사진첩</div>
                    <div class="select_pic" id="select_pic2"><input type="file" id="pic_info_attach1"  name="album" />
                        <label for ="pic_info_attach1" class="class_info_attach">내 PC</label></div>
                </div>
            <div class="pic_detail">
                <div class="detail_thumbnail">
                    <div class="thumbnail_pic1"></div>
                    <div class= "thumbnail_pic_info">
                        <div class="box1">파일명: jeju.jpg</div>
                        <div class="box2"><a href="#">삭제 X</a></div>
                    </div>
                </div>
                <div class="detail_thumbnail">
                    <div class="thumbnail_pic2"></div>
                    <div class= "thumbnail_pic_info">
                        <div class="box1">파일명: kalchi.jpg</div>
                        <div class="box2"><a href="#">삭제 X</a></div>
                    </div>
                </div>

                <div class="detail_thumbnail">
                    <div class="thumbnail_pic3"></div>
                    <div class= "thumbnail_pic_info">
                        <div class="box1">파일명: is.jpg</div>
                        <div class="box2"><a href="#">삭제 X</a></div>
                    </div>
                </div>
                <div class="detail_thumbnail">
                    <div class="thumbnail_pic4"></div>
                    <div class= "thumbnail_pic_info">
                        <div class="box1">파일명: delicious.jpg</div>
                        <div class="box2"><a href="#">삭제 X</a></div>
                    </div>
                </div>

                    
                    
            </div>
        </div>
        <div id="complete_button"><button>등록</button></div>
   </div>
</form>
   
   
  

<div id="footer"></div>


</body>
</html>