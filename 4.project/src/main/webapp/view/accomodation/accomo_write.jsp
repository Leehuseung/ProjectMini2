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
  
   <form name="mForm" action="write.do" method="post" enctype="multipart/form-data" onsubmit = "retu">
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
                        <span id="mainFileName">파일명:   </span>
                        <span class="head_Del"><a href="#">삭제</a></span>
                        </div>
          </div>
          <div class="head_info">
              <div class="box1">숙박 정보입력란</div>
              <div class="box2">주소:
                <select name="city" id="selectCities">
                    <option value="0">선택</option>
                    <option value="1">제주시</option>
                    <option value="2">서귀포시</option>
                   
                </select>
                <select name="town" id="selectTowns">
                  <option value="0">선택</option>
                </select>
               <input id="leftAddress" type:"text" name="address">
              
              </div>
              <div class="box3" >연락처: <input id="phoneNumber" type:"text" name="contact"></div>
              <div class="box4" >홈페이지: <input id="website" type:"text" name="homepage"></div>
              <div class="box5" >20자 멘트: <input id="ment" type:"text" name="ment"></div>
              <div class="box6" >숙박 명: <input id="hotelName" type:"text" name="hotelName"></div>
          </div>
      </div>
      <div class="pic1_pic2">
        <div class= "pic1"> 
            <div class="pic_top">
                    <span>보조사진 </span>
                    <span id="top_myPC">
                    <input id="myPC_S1" type="file" name="subPic1" />
                    <label for ="myPC_S1" class="top_myPC_label">내 PC</label>
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
                    <span>보조사진 </span>
                    <span id="top_myPC">
                    <input id="myPC_S2" type="file" name="subPic2" />
                    <label for ="myPC_S2" class="top_myPC_label">내 PC</label>
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
            <textarea id="intro" name="intro" rows="20" cols="70" placeholder="숙소에 대해 소개해주세요"></textarea>
        </div>
      </div>
        <div class="pic_info"> 
            <div class="pic_title">
                    <div>사진첩</div>
                    <div class="select_pic" id="select_pic2"><input multiple="multiple" type="file" id="pic_info_attach1"  name="album" />
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
   
  <script>
  
  $(document).ready(function(){
	  $('#complete_button').click(function(){
		  
	
	
	
var myPC = $("#myPC").val();
	
	if(myPC ==""){
		alert("메인사진을 첨부하시라요.")
	 
		 $('.head_pic > .box2').attr("tabindex",-1).focus();
		return false;
	}//if
	
//------------------------------------------------------------		 
var myPC_S1 = $("#myPC_S1").val();
	
	if(myPC_S1 ==""){
		alert("보조 사진을 첨부하시라요.")
	 
		 $(".pic_middle1").attr("tabindex",-1).focus();
		return false;
	}//if

//------------------------------------------------------------	
var myPC_S2 = $("#myPC_S2").val();
	
	if(myPC_S2 ==""){
		alert("보조 사진을 첨부하시라요.")
	 
		 $(".pic_middle2").attr("tabindex",-1).focus();
		return false;
	}//if	
	
	
	//------------------------------------------------------------
	
var contact = $("#phoneNumber").val();
	
	if(contact ==""){
		alert("무사 연락처를 안입력하셨수꽝?")
	
		 $('#phoneNumber').focus();
		return false;
	}//if

	//------------------------------------------------------------	
	
var website = $("#website").val();
	
	if(website ==""){
		alert("홈페이지 주소를 안입력하셨수당")
	
		 $('#website').focus();
		return false;
	}//if	
//------------------------------------------------------------	


var ment = $("#ment").val();
	
	if(ment ==""){
		alert("홈페이지 소개 멘트를 입력해주세요")
	
		 $('#ment').focus();
		return false;
	}//if	
	
	

	//------------------------------------------------------------	
	
var hotelName = $('#hotelName').val();
	
	if(hotelName ==""){
		alert("숙소 명을 입력해주세요")
	
		 $('#hotelName').focus();
		return false;
	}//if	
	
	  
  // 숙소 입력확인-------------------------
  
  var intro = $('#intro').val();
	
	if(intro ==""){
		alert("숙소  소개를 입력해 주세요")
	
		  $("#intro").attr("tabindex",-1).focus();
		return false;
	}//if	
	
	
	
  
	  });//complete button
	  
  });//document
  
  
  // 이미지 미리보기-------------------------

  $(function(){
	 $("#myPC").change(function(e){
		  if(this.files && this.files[0]){
			  console.dir(this.files[0]);
			  var reader = new FileReader();
			  reader.onload = function(e){
				 $('.head_pic > .box2').css('background','url("' + e.target.result + '")'); 
			  }//onload
			  reader.readAsDataURL(this.files[0]);
		  }//if
			//---------------------- 사진이름추가요
		  var fileName = e.target.files[0].name;  
		  $('#mainFileName').html("파일명: " + fileName);
		  	
	 }); //2번째  function
  });//first function
  //--삭제 버튼 클릭시 이미지 삭제--------------------------------------------
  //$(document).ready(function(){
  $('.head_Del a').click(function(){
	  $('#mainFile').html('<input id="myPC" type="file" name="mainPic" /><label for ="myPC" class="box1_myPC_label">내 PC</label>');
	  $('.head_pic > .box2').css('background',''); 
	  $('#mainFileName').html('파일명:');
	  
	  //post code
	//});
  });
  
  
 //--서브 1 이미지 처리------------------------------------------------------------- 
   $(function(){
	 $("#myPC_S1").change(function(e){
		  if(this.files && this.files[0]){
			  console.dir(this.files[0]);
			  var reader = new FileReader();
			  reader.onload = function(e){
				 $('.head_pic > .box2').css('background','url("' + e.target.result + '")'); 
			  }//onload
			  reader.readAsDataURL(this.files[0]);
		  }//if
			//---------------------- 사진이름추가요
		  var fileName = e.target.files[0].name;  
		  $('#mainFileName').html("파일명: " + fileName);
		  	
	 }); //2번째  function
  });//first function
  //--삭제 버튼 클릭시 이미지 삭제--------------------------------------------
  //$(document).ready(function(){
  $('.head_Del a').click(function(){
	  $('#mainFile').html('<input id="myPC" type="file" name="mainPic" /><label for ="myPC" class="box1_myPC_label">내 PC</label>');
	  $('.head_pic > .box2').css('background',''); 
	  $('#mainFileName').html('파일명:');
	  
	  //post code
	//});
  });
 //---서브 1 이미지 끝---------------------------------------------------- 
  
  
//--select options---------------------

 $("#selectCities").change(function(e){


	 $.ajax({
	
			url: "ajax.do", 
			dataType: "json",
			data: "city=" +  $("#selectCities").val(),
			success: function (list) {
				console.log(list);
				var option ="";
				for(let board of list){
				option += "<option value='" + board.id + "'>" + board.name + "</option>";
				console.log(board.name);
				}//for	
				$("#selectTowns").html(option);
				alert("시 선택 성공");
				
			}//function
			
			});

 });
  
  

  </script> 
  

<div id="footer"></div>


</body>
</html>