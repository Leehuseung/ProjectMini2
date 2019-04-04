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
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <style>
    
    
    .info_body{
      margin-top:40px;
      display: grid;
      grid-template-rows: 1fr 1fr 1fr 42%;
      grid-row-gap:20px;
    }
    .info_body >div:nth-child(odd){
      width:1305px;
    }
    .head_pic_info{
      height:400px;
      width:1370px;
      display:grid;
      grid-template-columns: 1fr 1fr;
      grid-column-gap: 20px;
    }
    .head_pic_info > div{
      
      width:100%;
     
    }
    .head_pic{
        display: grid;
        grid-template-rows: 10% 80% 10%;
        background:#f3f3f3;
    }
    .head_pic>div{
        width:100%;
       
    
    }
    .head_pic> .box1{
      
        font-size:30px;
        border-bottom:1px solid black;
    }
    #box1_myPC{
        display: inline-block;
        box-sizing:border-box;
        height:37px;
        width:100px;
        text-align:center;
       line-height:40px;
        border: 1px solid orange;
        box-shadow: 3px 3px  gray;
       
        left:335px;
        top:-6px;
        font-size:20px;

    }


    #box1_myPC:hover{
        background-color:orange;
        color:white;
    }
    .box1 input{
   display:none;
    }
    .head_pic> .box2{
        background-image: url("pic/accomodation/oceansweet.gif");
        background-size: cover;
        background-repeat: no-repeat;
        border-bottom: 1px solid black;
    }
    .head_pic>.box3 {
        padding-top:2px;
        font-size:27px;
    }
    .head_Del{
        
        border:1px solid black;
    

        display: inline-block;
        box-sizing:border-box;
        height:37px;
        width:100px;
        text-align:center;
       line-height:40px;
        border: 1px solid orange;
        box-shadow: 3px 3px  gray;
      left:287px;
      top:-1px;
        font-size:20px;

    }
    .head_Del> a{
    text-decoration:none;
    color:black;
    }
    .head_Del:hover{
        background-color:orange;
        color:white;
    }
    .head_info{
        display:grid;
        grid-template-rows: 18% 16% 16% 16% 16% 16% 16%;
        background:#f3f3f3;
    }
    .head_info > div{
        width:100%;
        
    }
    .head_info > .box1{
        font-size:50px;
      
        text-align: center;
    }
    .head_info > .box2{
    font-size:30px;
    line-height: 60px;
    }
    
    .head_info > .box2 > select{
   border:1px solid black;
   font-size:20px;
    background-color: white;
    width:80px;
    height: 40px;
    left:15px;
    top:-5px;
    }
    #area2{
        margin-left: 7px;
    }

    .head_info > .box2 > input{
        border:1px solid black;
   font-size:20px;
    background-color: white;
    width:354px;
    height: 40px;
    left:23px;
    top:-5px;
    }
    .head_info {
    font-size:30px;
    line-height: 60px;

    }
    .head_info > .box3 > input{
        border:1px solid black;
   font-size:20px;
    background-color: white;
    width:450px;
    height: 40px;
    left:90px;
    top:-5px;
    }
    .head_info > .box4 > input{
        border:1px solid black;
   font-size:20px;
    background-color: white;
    width:450px;
    height: 40px;
    left:66px;
    top:-5px;
    }
    .head_info > .box5 > input{
        border:1px solid black;
   font-size:20px;
    background-color: white;
    width:450px;
    height: 40px;
    left:48px;
    top:-5px;
    }
    .head_info > .box6 > input{
        border:1px solid black;
   font-size:20px;
    background-color: white;
    width:450px;
    height: 40px;
    left:79px;
    top:-5px;
    }
    .pic1_pic2{
      height:450px;
      width:1305px;
      display:grid;
      grid-template-columns: 1fr 1fr;
      grid-column-gap: 20px;
     
    }
    .pic1_pic2 > div{
      width:100%;
    background-color: #f3f3f3;
      
    }
    .pic1{

display:grid;
grid-template-rows: 10% 80% 10%;
}

.pic1> div{
 width:100%;
 
}
   
.pic_top{
    line-height: 0px;
        font-size:25px;
    border-bottom: 1px solid black;
    }
    .pic_top input{
   display:none;
    }

    #top_myPC{
        display: inline-block;
        box-sizing:border-box;
        height:37px;
        width:100px;
        text-align:center;
       line-height:40px;
        border: 1px solid orange;
        box-shadow: 3px 3px  gray;
      
        left:456px;
      top:1px;
        font-size:20px;

    }


    #top_myPC:hover{
        background-color:orange;
        color:white;
    }

    .pic_middle1{
        background-image: url("pic/accomodation/oceansweetbed.jpg");
        background-size: cover;
        background-repeat: no-repeat;
    }
    .pic_middle2{
        background-image: url("pic/accomodation/oceansweetbed2.gif");
        background-size: cover;
        background-repeat: no-repeat;
    }

    .pic_bottom{
        border-top:1px solid black;
        line-height: 38px;
        font-size:25px;
    }
    


    
    .bottom_Del{
        
        border:1px solid black;
    

        display: inline-block;
        box-sizing:border-box;
        height:37px;
        width:100px;
        text-align:center;
       line-height:40px;
        border: 1px solid orange;
        box-shadow: 3px 3px  gray;
      
        left:475px;
      top:1px;
        font-size:20px;

    }
    .bottom_Del> a{
    text-decoration:none;
    color:black;
    }
    .bottom_Del:hover{
        background-color:orange;
        color:white;
    }


    .pic_explain{
        text-align: center;
        line-height:220px;
        font-size:30px;
    }
    .pic_info{
        width:1305px;
    
      display: grid;
      grid-template-rows: 8% 92%;
    }
    .pic_info> div{
      width: 1305px;
      border:1px solid black;
    
    }
    .text textarea{
        font-size:30px;
        width:1305px;
        height:450px;
        background:#f3f3f3;
    }
    .pic_title{
        border: 1px solid black;
    }
     .pic_title> div{
     border:1px solid black;
     box-shadow: 3px 3px 1px black;
     margin-top: 10px;
     font-size:30px;
     text-decoration: none;
      color:black;
      display:block;
      border:1px solid black;
      padding:10px;
      width:150px;
      text-align: center;
      font-size: 40px;
      background-color: orange;
    }    

     #select_pic2{
        background-color: white;
        width:50px;
        height:35px;
        right:-550px;
        top:-74px;
        width:100px;
        line-height: 1px;
    }
    #select_pic2:hover{
        background-color:orange;
    color:black
    }
    .select_pic input{
        left:-50000px;
    }
    
    .pic_detail{
        background:#f3f3f3;
        display:grid;
        grid-template-columns: 48% 48%;
        align-items:stretch;
        justify-items: stretch;
        grid-column-gap: 20px;
    }
    .detail_thumbnail{
        background:#f3f3f3;
        margin-top:30px;
       margin-left:30px;
        width:96%;
        height:450px;
        border: 1px solid black;
        display:grid;
       grid-template-rows: 85% 15%;
    }
    .detail_thumbnail > div {
        width:100%;
        
        border:1px solid black;
    }
    .thumbnail_pic1{
    background-image: url("pic/accomodation/oceansweet_thumb1.jpg");
   background-size: cover;
   background-repeat: no-repeat;
    }
    .thumbnail_pic2{
        background-image: url("pic/accomodation/oceansweet_thumb2.jpg");
   background-size: cover;
   background-repeat: no-repeat;
    }
    .thumbnail_pic3{
        background-image: url("pic/accomodation/oceansweet_thumb3.jpg");
   background-size: cover;
   background-repeat: no-repeat;
    }
    .thumbnail_pic4{
        background-image: url("pic/accomodation/oceansweet_thumb4.jpg");
   background-size: cover;
   background-repeat: no-repeat;
    }
    .thumbnail_pic_info{
        display:grid;
        grid-template-columns: 80% 20%;
    }

    .thumbnail_pic_info> div{
        border:1px solid black;
        width: 100%;
    }
    .thumbnail_pic_info> .box1{
        font-size:20px;
        line-height: 60px;
    }
    .thumbnail_pic_info a{
    border:1px solid black;
    box-shadow: 5px 5px 1px black;
    padding:7px;
    text-decoration: none;
    color:black;
    font-size:20px;
    left:30px;
    top:22px;
    }
    .thumbnail_pic_info  a:hover{
        background-color: orange;
    }
    
    #complete_button{
        text-decoration: none;
        margin-top:20px;
    }

    #complete_button button{
        font-size:40px;
        background-color: white;
        display: inline-block;
        box-sizing:border-box;
        height:55px;
        width:140px;
        text-align:center;
       line-height:40px;
        border: 1px solid orange;
        box-shadow: 3px 3px  gray;
      
        left:600px;
        top:1px;
       

    }


    #complete_button button:hover{
        background-color:orange;
        color:white;
    }
   


    </style>

</head>
<body>

<div id="headers"></div>
  
   <form action="write.do" method="GET">
   <div class="info_body">
      <div class="head_pic_info">
          <div class="head_pic">
                <div class=box1>
                        <span>메인사진 첨부하기</span>
                        <span id="box1_myPC">
                        <input id="myPC" type="file" name="attach" />
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
                <select name="area1">
                    <option value="1">제주시</option>
                    <option value="2">서귀포시</option>
                   
                </select>
                <select name="area2" id="area2">
                    <option value="3">애월읍</option>
                    <option value="4">한림읍</option>
                    <option value="5">우도면</option>
                    <option value="6">성산읍</option>
                    <option value="7">남원읍</option>
                </select>
               <input id="leftAddress" type:"text" name="address">
              </div>
              <div class="box3">연락처: <input id="phoneNumber1" type:"text" name="phoneNumber"></div>
              <div class="box4">홈페이지: <input id="website1" type:"text" name="website"></div>
              <div class="box5">20자 멘트: <input id="introduction1" type:"text" name="indroduction"></div>
              <div class="box6">호텔 명: <input id="hotelname1" type:"text" name="hotelname"></div>
          </div>
      </div>
      <div class="pic1_pic2">
        <div class= "pic1"> 
            <div class="pic_top">
                    <span>시설사진 </span>
                    <span id="top_myPC">
                    <input id="myPC_S" type="file" name="attach" />
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
                    <input id="myPC_S" type="file" name="attach" />
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
            <textarea name="content" rows="20" cols="70" placeholder="숙소에 대해 소개해주세요"></textarea>
        </div>
      </div>
        <div class="pic_info"> 
            <div class="pic_title">
                    <div>사진첩</div>
                    <div class="select_pic" id="select_pic2"><input type="file" id="pic_info_attach1"  name="pic_info_attach" />
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