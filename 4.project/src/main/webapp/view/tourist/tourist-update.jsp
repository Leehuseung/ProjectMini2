<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>tourist-update</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../../resources/css/main.css" />
    <link rel="stylesheet" type="text/css" href="../../resources/css/tourist/tourist-update.css" />
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
</head>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script> 
<script type="text/javascript">   
    $(document).ready( function() { 
    	$("#footer").load("../footer.html");  // 원하는 파일 경로를 삽입하면 된다
    }); 
    
    function check(){
    	if(!document.doSubmit.tag.value){
    		alert("태그를 입력하세요");
    		document.doSubmit.tag.focus();
    		return false;
    	}else if(!document.doSubmit.nomination.value){
    		alert("지명을 입력하세요");
    		document.doSubmit.nomination.focus();
    		return false;
    	}else if(!document.doSubmit.simpleIntroduce.value){
    		alert("간단설명을 입력하세요");
    		document.doSubmit.simpleIntroduce.focus();
    		return false;
    	}else if(!document.doSubmit.title.value){
    		alert("제목을 입력하세요");
    		document.doSubmit.title.focus();
    		return false;
    	}else if(!document.doSubmit.introduce.value){
    		alert("소개를 입력하세요");
    		document.doSubmit.introduce.focus();
    		return false;
    	}else if(!document.doSubmit.fee.value){
    		alert("이용요금을 입력하세요");
    		document.doSubmit.fee.focus();
    		return false;
    	}else if(!document.doSubmit.address.value){
    		alert("주소를 입력하세요");
    		document.doSubmit.address.focus();
    		return false;
    	}else if(!document.doSubmit.purpose.value){
    		alert("주요목적을 입력하세요");
    		document.doSubmit.purpose.focus();
    		return false;
    	}else if(!document.doSubmit.weekday.value){
    		alert("평일 이용시간을 입력하세요");
    		document.doSubmit.weekday.focus();
    		return false;
    	}else if(!document.doSubmit.weekend.value){
    		alert("주말 이용시간을 입력하세요");
    		document.doSubmit.weekend.focus();
    		return false;
    	}else if(!document.doSubmit.contact.value){
    		alert("전화번호를 입력하세요");
    		document.doSubmit.contact.focus();
    		return false;
    	}else if(!document.doSubmit.contentTitle.value){
    		alert("상세 내용 제목을 입력하세요");
    		document.doSubmit.contentTitle.focus();
    		return false;
    	}else if(!document.doSubmit.content.value){
    		alert("상세 본문 내용을 입력하세요");
    		document.doSubmit.content.focus();
    		return false;
    	}else if(!document.doSubmit.attach1.value ||
    			!document.doSubmit.attach2.value ||
    			!document.doSubmit.attach3.value ||
    			!document.doSubmit.attach4.value ||
    			!document.doSubmit.attach5.value ||
    			!document.doSubmit.attach6.value ){
    		alert("파일을 모두 첨부해주세요")
    		return false;
    		
    	}
    }
</script>
<jsp:include page="/view/header.jsp" />
<body>
    <div id="headers"></div>
    <div class="body">
    <form method='POST' action='/jeju/view/tourist/updateboard.do?no=${tourist.boardNo}' enctype="multipart/form-data" name="doSubmit" onsubmit="return check()">
        <div class="sub-title">
            제주도의 관광지를 한눈에...
        </div>
        <div class="side">
            <div class="side-menu">
                <h2>관광지</h2>
                <br>
                <ul class="side-menu-list">
                    <li><a href="#">전체<span></span></a></li>
                    <li><a href="#">자연<span></span></a></li>
                    <li><a href="#">문화관광<span></span></a></li>
                    <li><a href="#">레저/체험<span></span></a></li>
                    <li><a href="#">탬플스테이<span></span></a></li>
                    <li><a href="#">도보<span></span></a></li>
                    <li><a href="#">포토스팟<span></span></a></li>
                    <li><a href="#">일정추천<span></span></a></li>
                </ul>
            </div>   
        </div>
        <div class="wrapper">
            <div class="content-title">
                <p class="content-tag">
                    태그 : <input type="text" class="text" name="tag" value="${tourist.tag}"/>
                    지명 : <input type="text" class="text" name="nomination" placeholder="${tourist.nomination}"/>
                    간단설명 : <input type="text" class="text" name="simpleIntroduce" placeholder="${tourist.simpleIntroduce}"/>
                </p>
                제목 : <input type="text" class="text" name="title" value="${tourist.title}"/>
                <div>
                    <a href="touristlist.do" >
                        <button>목록으로</button> 
                    </a>
                </div>
            </div>
                &nbsp;&nbsp;&nbsp;파일첨부 : <br>
            <div class="picture">
            	<div>
	                <input multiple="multiple" type="file" id="attach1" name = "attach1"/><br>
	               	<div class="attach"><img id="img1" /></div><br>
            	</div>
            	<div>
	               	<input multiple="multiple" type="file" id="attach2" name = "attach2"/><br>
	               	<div class="attach"><img id="img2" /></div><br>
            	</div>
            	<div>
	               	<input multiple="multiple" type="file" id="attach3" name = "attach3"/><br>
	               	<div class="attach"><img id="img3" /></div><br>
            	</div>
            	<div>
	               	<input multiple="multiple" type="file" id="attach4" name = "attach4"/><br>
	               	<div class="attach"><img id="img4" /></div><br>
            	</div>
            	<div>
	               	<input multiple="multiple" type="file" id="attach5" name = "attach5"/><br>
	               	<div class="attach"><img id="img5" /></div><br>
            	</div>
            	<div>
	               	<input multiple="multiple" type="file" id="attach6" name = "attach6"/><br>
	               	<div class="attach"><img id="img6" /></div><br>
            	</div>
            </div>
            <br>
            <ul class="detail-icon">
                <li>
                    <div class="iconDetail1"><img src="../../resources/images/tourist/detail_info.png"></div>
                    <div>상세정보<br>&nbsp;</div>
                </li>
                <li>
                    <div class="iconDetail2"><img src="../../resources/images/tourist/map.png"></div>
                    <div>지도<br>&nbsp;</div>
                </li>
                <li>
                    <div class="iconDetail3"><img src="../../resources/images/tourist/review.jpg"></div>
                    <div>리뷰<br>${tourist.reviewCnt}</div>
                </li>
                <li>
                    <div class="iconDetail4"><img src="../../resources/images/tourist/like.jpg"></div>
                    <div>좋아요<br>${tourist.likeCnt}</div>
                </li>
                <li>
                    <div class="iconDetail5"><img src="../../resources/images/tourist/view.jpg"></div>
                    <div>조회수<br>${tourist.viewCnt}</div>
                </li>
            </ul>
            <div class="detail-title">
                소개 : <input type="text" class="text" name="introduce" value="${tourist.introduce}"/>
                <div class="pay">
                    이용요금 : <input type="text" class="text" name="fee" value="${tourist.fee}"/>
                </div>
            </div>
            <div class="location">
                주소 : <input type="text" class="text" name="address" value="${tourist.address}"/>
                <div>
                    주요목적 : <input type="text" class="text" name="purpose" value="${tourist.purpose}"/>
                </div>
            </div>
            <div class="time">
                이용시간 : 평일 <input type="text" class="text" name="weekday" value="${tourist.weekday}"/> , 주말 <input type="text" class="text" name="weekend" value="${tourist.weekend}"/>
            </div>
            <div class="phone-num">
                연락처 : (+82) <input type="text" class="text" name="contact" value="${tourist.contact}"/>
                <div class="update-date">
                    최종 수정일 <fmt:formatDate value="${tourist.updateDate}" pattern="yyyy년-MM월-dd일" />
                </div>
            </div>
            <div class="up-del">
                
            </div>
            <div class="detail-info">
                <textarea class="info-title" name="contentTitle" placeholder="${tourist.contentTitle}"></textarea> <br />
                <br>
                <textarea class="info-content" name="content" placeholder="${tourist.content}"></textarea>
                <br><br><br>
                <div>
                    <a href="updateboard.do">
                        <button>수정하기</button>
                    </a>
                    <a>
                        <button onClick="history.back()">취소</button>                
                    </a>    
                </div>
            </div>
        </div>
    </form>
    </div>
    <div id="footer"></div>

</body>
<script>

	



	var sel_file;
	
	for(let i = 1; i < 7 ; i++) { 
		$(document).ready(function() {
				$("#attach"+i).on("change", handleImgFileSelect);
		});
		
		function handleImgFileSelect(e) {
			var files = e.target.files;
			var filesArr = Array.prototype.slice.call(files);
			
			filesArr.forEach(function(f) {
				if(!f.type.match("image.*")) {
					alert("확장자는 이미지 확장자만 가능합니다.");
					return;
				}
				
				sel_file = f;
				
				var reader = new FileReader();
				reader.onload = function(e) {
					$("#img" + i).attr("src", e.target.result);
				}
				reader.readAsDataURL(f);
			});
		}
	}


</script>
</html>