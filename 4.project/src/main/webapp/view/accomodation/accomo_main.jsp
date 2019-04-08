<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>숙소메인</title>
    <link rel="stylesheet" type="text/css" href="../../resources/css/main.css" />
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script> 

<script type="text/javascript">   
$(document).ready( function() { 

$("#headers").load("../header.html");   // 원하는 파일 경로를 삽입하면 된다
$("#footer").load("../footer.html"); // 원하는 파일 경로를 삽입하면 된다
}); 
</script>
    
    
    
    <style>
  
    .body > .introduction {
        background-image: url("../../resources/images/accomodation/default/flower5.jpg");
        
        
  
       background-repeat: no-repeat;
        background-size: 1200px 300px;
        background-position: top left;
        width:1200px;
            height:300px;
            margin: 25px auto;
            
    }
    .body > .search-city{
        background-image: url("../../resources/images/accomodation/default/flower3.png");
        background-repeat: no-repeat;
        background-size:cover;
        width:1200px;
            height:550px;
            margin: 25px auto;
    }
    
    
    
    .body >.introduction >.title{
        font-size:70px;
        color:black;
        font-family: 'Black Han Sans', sans-serif;
        text-decoration: none;
        width:60%;
        height:80px;
        margin-left:auto;
        margin-right:auto;
        margin-top:3%;
        display: block;
    }
    .body >.introduction >.title2{
        color:black;
        text-decoration: none;
        font-size: 35px;
        width:60%;
        height:70px;
        margin-left:auto;
        margin-right:auto;
        
        display: block;
        text-align: center;
        padding-top:20px;
        box-sizing: border-box
    }
    .body >.introduction >.title3{
     
       font-size: 20px;
       color:black;
        text-align: center;
        text-decoration: none;
        width:80%;
        height:70px;
        margin-left:auto;
        margin-right:auto;
        margin-top:2%;
        display: block;
    }
   
    .search-city >form{
        display: block;
       
        width:700px;
        height: 550px;
    }

    .body >.search-city >form >.type{
        
        text-decoration: none;
        width:80%;
        height:200px;
        margin-left:auto;
        margin-right:auto;
        margin-top:1%;
        display: block;
       
    }

     input[type=radio] {
  display: none;

    }
  
     input[type=radio] + label {
  display: inline;
  background-color:orange;
  border-color: orange;
  color: white;
  border-width: 2px;
  border-style: solid;
  border-radius: .5em;
  padding:1px 3px;
  
  font-size: 35px;
}



input[type=radio]:checked + label.type{
  background-color: red;
  border-color: red;
  color:    white
}

input[type=radio]:checked + label.city{
    background-color: red;
  border-color: red;
  color:    white
}

    
    .body >.search-city >form >.type  >.subtype1{
        
        text-decoration: none;
        width:60%;
        height:70px;
        margin-left:auto;
        margin-right:auto;
        margin-top:1%;
        display: block;
        font-size: 50px;
        text-align:center;
        padding-top:10px;
        box-sizing: border-box
    }
   
    .body >.search-city >form >.type >.subtype2{
    
        
        text-decoration: none;
        width:77%;
        height:70px;
        margin-left:90px;
        margin-right:auto;
        margin-top:5%;
        display: block;
    }
    .body >.search-city >form >.city{
        
        text-decoration: none;
        width:65%;
        height:200px;
        margin-left:auto;
        margin-right:auto;
        margin-top:1%;
        display: block;
    }
    .body >.search-city >form >.city >.subcity1{
        
        text-decoration: none;
        width:60%;
        height:70px;
        margin-left:auto;
        margin-right:auto;
        margin-top:1%;
        display: block;
        font-size:50px;
        text-align: center;
    }
    .body >.search-city >form >.city >.subcity2{
        
        text-decoration: none;
        width:90%;
        height:45px;
        margin-left:39px;
        margin-right:auto;
        margin-top:2%;
        display: block;
    }
    .body >.search-city >form >.city >.subcity3{
        text-decoration: none;
        width:90%;
        height:70px;
        left:33px;
      
        margin-top:1%;
        display: block;
    }
    .body >.search-city >form >.select{
        
        text-decoration: none;
        width:40%;
        height:90px;
        margin-left:auto;
        margin-right:auto;
        margin-top:5%;
        display: block;
        font-size:40px;
        text-align: center;
        padding-top:12px;
        box-sizing: border-box;
    }
    ul> #button{
        width:60%;
        height: 100%;
        
        background-color:white;
        font-size:40px;
        color:black;
    }
    #button:hover{
        border-color: orange;
        background-color:orange;
        color:black;
    }
    .thumbnail-info{
        margin-top:100px;
        width:1200px;
        display:grid;
        grid-template-columns: 1fr 1fr;
        
        grid-column-gap: 2em;
        grid-row-gap: 1em;
        
        
    }    
   
     .info_block{
        margin-top:10px;
        background: #f3f3f3;
        grid-row-gap: 1px;
        display:grid;
        width:100%;
        
        height:450px;
        grid-template-rows: 10% 70% 10% 10%
    }
    
    .info_block > div {
       width:100%;
        display:grid;
        
    } 
    .info_block > .info_header1{
    padding-top:10px;
    font-size:30px;
    }
    .info_block > .info_header2{
    padding-top:10px;
    font-size:30px;
    }
    .info_block > .info_header3{
    padding-top:10px;
    font-size:30px;
    }
    .info_block > .info_header4{
    padding-top:10px;
    font-size:30px;
    }
    .info_block > .info_pic1{
        
       background-image: url("../../resources/images/accomodation/oceansweet.gif");
        background-repeat: no-repeat;
        background-size: cover;
        
    }
    .info_block > .info_pic2{
        
        background-image: url("../../resources/images/accomodation/pension.jpg");
         background-repeat: no-repeat;
         background-size: cover;
         
     }
     .info_block > .info_pic3{
        
        
         background-repeat: no-repeat;
         background-size: cover;
         
     }
     .info_block > .info_pic3{
        
        background-image: url("../../resources/images/accomodation/howardhotel.jpg");
         background-repeat: no-repeat;
         background-size: cover;
         
     }
     .info_block > .info_pic4{
        
        background-image: url("../../resources/images/accomodation/gusethouse.gif");
         background-repeat: no-repeat;
         background-size: cover;
         
     }
    
    
    .info_block > .info_line{
        font-size:30px;
        align-items: center;
      text-align: center;
       
    }
    .info_bottom{
        border-top: 1px solid black;
        display: grid;
        grid-template-columns: 1fr 1fr  1fr;
        align-items: center;
        font-size:25px;
    }



    .bottom_detail{
    border:1px solid black;
    }
    
    .bottom_detail >a{
    text-decoration: none;
    color:black;
    padding:1px;
    }
    
    .bottom_detail{
  text-align: center;
  cursor: pointer;
  font-size:24px;
  margin: 0 0 0 60px;
}
/*Button Two*/
.bottom_detail {
  border-radius: 4px;
  background-color:orange;
  border: none;
  padding: 15px;
  width: 150px;
  height:10px;
  transition: all 0.5s;
  top:-2px;
  line-height: 17px;
}


.bottom_detail span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
  
}

.bottom_detail span:after {
  content: '»';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.bottom_detail:hover span {
  padding-right: 25px;
}

.bottom_detail:hover span:after {
  opacity: 1;
  right: 0;
}



    .body > .select-page{
       
        border: 1px solid black;
        width:600px;
        height:70px;
        margin-left:auto;
        margin-right:auto;
        margin-top: 10%;
       text-align: center;
       
    }
    .select-page > div{
      
        display: inline-block;
       
    }
    .write_view{
        margin-left:40px;       
        border:1px solid black;
        width:300px;
        display: inline-block;
      
        
    }
    .write_view >  div{
        display: inline-block;
        width:100px;
        height:30px;
        border:1px solid black;
        
      
    }
    
    .write_view  a{
        text-decoration: none;
      
    }
    .page_num{
        width:20px;
        border: 1px solid black;
        margin:10px 10px;
    }
    .arrow >img{
       top:7px;
    }

    .page {
        box-sizing:border-box;
        height:8%;
        display:grid;
        grid-template-columns:1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr ;
        grid-column-gap: 30px;
        padding-left: 200px;
        padding-right:200px;
        padding-top:20px;
        padding-bottom:20px;
        line-height:35px;
    }
    .page > div {
        box-sizing:border-box;
        border: 1px solid black;
        height:100%;
        width:100%;
        text-align:center;
        border-radius: 50%;
        border: 1px solid orange;
        box-shadow: 3px 3px  gray;
    }
    .page > div:hover{
        background-color:orange;
        color:white;
    }
     .orangered{
         background:orange;
        }
   
    #accomo_write a{
        text-decoration: none;
         font-size:30px;   
            }
        
    #accomo_write{
        margin-top:10px;
        display: inline-block;
        box-sizing:border-box;
        height:45px;
        width:120px;
        text-align:center;
       line-height:50px;
        border: 1px solid orange;
        box-shadow: 3px 3px  gray;
      
        left:821px;
        top:70px;
        font-size:20px;

    }

    #accomo_write:hover{
        background-color:orange;
        color:white;
    }

    .box1 input{
   display:none;
    }


    .footer {
    margin-top: 100px;
    width: 1200px; height: 150px;
    background: orange;
    display:grid;
    grid-template-columns:1fr 2fr ;
    grid-column-gap: 30px;       
}
.phone {
    width: 100%; height: 100%;
    background: orange;
    text-align: center;   
}
.center {
    font-size: 20px;
    margin-top: 57px;
}
.center img {
    width: 40px; height: 40px;
}
.icon_f {
    grid-template-columns:1fr 1fr 1fr ;
    width: 100%; height: 100%;    
    display: grid;
}
.icon_f img {
    width: 50px; height: 50px;
    margin-top: 40px;
    margin-left: 35px;
}
.icon_f p {
    margin-left: 20px;
}
.info1{
    width: 100%;     
}
.info2 {
    width: 100%;     
}
.info3 {
    width: 100%;
}
.footer a {
    text-decoration: none;
    color: black;
}
.footer a {
    text-decoration: none;
    color: black;
}





    </style>


</head>
<body>
<div id="headers"></div>
        

    <div class="body">
        
        <div class="introduction">
            
            <ul class="title">숙소</ul>
            <ul class="title2">호텔에서 게스트 하우스까지 다양한 제주의 숙소</ul>
            <ul class="title3">한라산과 에메랄드 빛 바다가 보이는 럭셔리한 호텔 부터 주머니 가벼운 대학생을위한 게스트 하우스까지!<br> 당신의 여정에 마침표를 찍어줄 제주의 다양한 숙소를 찾아보자.</ul>
        </div>
        <div class="search-city">
            <form action="accomo_main.html" method="get">
                
                <ul class="type">
                    <li class="subtype1">숙소 종류</li>
                    
                    <li class="subtype2">
                        <input type="radio" id="radio_total"  name="type" value="total"  />
                        <label for ="radio_total" class="type">전체</label>
                        <input type="radio" id="radio_hotel"  name="type" value="hotel"  />
                        <label for ="radio_hotel"  class="type">호텔</label>
                        <input type="radio" id="radio_pension"  name="type" value="pension"  />
                        <label for ="radio_pension"  class="type">펜션</label>
                        <input type="radio" id="radio_gusetHouse"  name="type" value="gusestHouse"  />
                        <label for ="radio_gusetHouse"   class="type">게스트 하우스</label>
                    </li>
                </ul>
                <ul class="city">
                    <li class="subcity1">지역</li>
                    <li class="subcity2">  
                        <input type="radio" id="radio_totalcity"  name="city" value="total"  />
                        <label for ="radio_totalcity" class="city" >전체</label>
                        <input type="radio" id="radio_jeju"  name="city" value="jeju"  />
                        <label for ="radio_jeju"  class="city">제주시</label>
                        <input type="radio" id="radio_seogwipo"  name="city" value="seogwipo"  />
                        <label for ="radio_seogwipo"  class="city">서귀포시</label>
                        <input type="radio" id="radio_aewol"  name="city" value="aewol"  />
                        <label for ="radio_aewol"   class="city">애월읍</label>
                        
                        
                    </li>
                    <li class="subcity3">  
                        <input type="radio" id="radio_hanlim"  name="city" value="hanlim"  />
                        <label for ="radio_hanlim" class="city">한림읍</label>
                        <input type="radio" id="radio_seongsan"  name="city" value="seongsan"  />
                        <label for ="radio_seongsan"  class="city">성산읍</label>
                        <input type="radio" id="radio_udo"  name="city" value="udo"  />
                        <label for ="radio_udo"  class="city">우도</label>
                        <input type="radio" id="radio_chuza"  name="city" value="chuza"  />
                        <label for ="radio_chuza"   class="city">남원읍</label>        
                    </li>
                    
                </ul>
                <ul class="select"><button id="button">검색<button/>
                    
                </ul>
                <div id ="accomo_write"><a href="accomo_write.html">글 등록</a></div>
            </form>
        </div>
        <div class="thumbnail-info">
            <div class="info_block">
                <div class="info_header1">위치: 제주시 > 제주시내</div>
                <div class="info_pic1"></div>
                <div class="info_line">5성급 호텔의 럭셔리함을 즐길 수 있는 곳</div>
                <div class="info_bottom">
                    <div class="bottom_title">오션스위츠 제주</div>
                    <div></div>
                    <div class="bottom_detail"><a href="accomo_detail.html"><span>자세히 보기</span></a></div>
                </div>
        </div>
    
        <div class="info_block">
            <div class="info_header2">위치: 제주시 > 애월읍</div>
            <div class="info_pic2"></div>
            <div class="info_line">한밤의 풀벌레 소리와 하늘을 수놓은 별이 있는곳</div>
            <div class="info_bottom">
                <div class="bottom_title">나미송이 머무는 곳</div>
                <div></div>
                <div class="bottom_detail"><a href="#"><span>자세히 보기</span></a></div>
            </div>
    </div>
    <div class="info_block">
            <div class="info_header3">위치: 제주시 > 제주시내</div>
            <div class="info_pic3"></div>
            <div class="info_line">제주 도심에 위치한 비지니스 최적의 호텔</div>
            <div class="info_bottom">
                <div class="bottom_title">하워드 존슨</div>
                <div></div>
                <div class="bottom_detail"><a href="#">자세히 보기</a></div>
            </div>
    </div>
    <div class="info_block">
        <div class="info_header4">위치: 서귀포시 > 한림</div>
        <div class="info_pic4"></div>
        <div class="info_line"> 이색적인 제주를 만나고 싶은 그대에게 </div>
        <div class="info_bottom">
            <div class="bottom_title">조천 스위츠 마을 </div>
            <div></div>
            <div class="bottom_detail"><a href="#">자세히 보기</a></div>
        </div>
        
</div>
    
    </div>
           
    <div class="page">
            <div class="orangered">이전</div>
            <div>1</div>
            <div>2</div>
            <div>3</div>
            <div>4</div>
            <div>5</div>
            <div>6</div>
            <div>7</div>
            <div>8</div>
            <div>9</div>
            <div>10</div>
            <div class="orangered">다음</div>

    </div>
     
    



    <div id="footer"></div>


</body>
</html>