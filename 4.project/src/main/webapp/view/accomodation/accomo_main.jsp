<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>숙소메인</title>
    <link rel="stylesheet" type="text/css" href="../../resources/css/accomodation/accomo_main.css" />
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
            <form action="action.do" method="get">
                
                <ul class="type">
                    <li class="subtype1">숙소 종류</li>
                    
                    <li class="subtype2">
                        <input type="radio" id="radio_total" class="radioType"  name="type" value="total"  />
                        <label for ="radio_total" class="type">전체</label>
                        <input type="radio" id="radio_hotel" class="radioType"  name="type" value="hotel"  />
                        <label for ="radio_hotel"  class="type">호텔</label>
                        <input type="radio" id="radio_pension"  class="radioType" name="type" value="pension"  />
                        <label for ="radio_pension"  class="type">펜션</label>
                        <input type="radio" id="radio_gusetHouse" class="radioType"  name="type" value="gusestHouse"  />
                        <label for ="radio_gusetHouse"   class="type">게스트 하우스</label>
                    </li>
                </ul>
                <ul class="city">
                    <li class="subcity1">지역</li>
                    <li class="subcity2">  
                        <input type="radio" class="radioCity" id="radio_totalcity"  name="city" value="total"  />
                        <label for ="radio_totalcity" class="city" >전체</label>
                        <input type="radio" id="radio_jeju" class="radioCity" name="city" value="jeju"  />
                        <label for ="radio_jeju"  class="city">제주시</label>
                        <input type="radio" id="radio_seogwipo" class="radioCity"  name="city" value="seogwipo"  />
                        <label for ="radio_seogwipo"  class="city">서귀포시</label>
                        <input type="radio" id="radio_aewol" class="radioCity"  name="city" value="aewol"  />
                        <label for ="radio_aewol"   class="city">애월읍</label>
                        
                        
                    </li>
                    <li class="subcity3">  
                        <input type="radio" id="radio_hanlim" class="radioCity"  name="city" value="hanlim"  />
                        <label for ="radio_hanlim" class="city">한림읍</label>
                        <input type="radio" id="radio_seongsan" class="radioCity"  name="city" value="seongsan"  />
                        <label for ="radio_seongsan"  class="city">성산읍</label>
                        <input type="radio" id="radio_udo" class="radioCity"  name="city" value="udo"  />
                        <label for ="radio_udo"  class="city">우도</label>
                        <input type="radio" id="radio_chuza" class="radioCity"  name="city" value="chuza"  />
                        <label for ="radio_chuza"   class="city">남원읍</label>        
                    </li>
                    
                </ul>
                <ul class="select" id="select"><button id="button" type="button">검색<button/>
                    
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


<script>


$('#button').click(function(){
	
 $.ajax({
	url: "mAjax.do", 
	dataType: "json",
	data: {city:$('.radioCity:checked').val(), type: $('.radioType:checked').val()},
	success: function () {
		console.log("success");
		
	}//function
	
	});

});

</script>


</body>
</html>