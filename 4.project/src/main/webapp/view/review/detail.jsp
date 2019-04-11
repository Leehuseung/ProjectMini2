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
    <title>Homepage</title>
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Gaegu|Nanum+Pen+Script" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../../resources/css/main.css" />
    <link rel="stylesheet" type="text/css" href="../../resources/css/page.css" />
    <link rel="stylesheet" type="text/css" href="../../resources/css/review/detail.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
   

</head>
<body>
    <div id="headers"></div>

    <div class="body">
        <div id="img">
            <div id="contents">
                <div class="title-area">
                    <div class="mytrip" >나의여행기록</div>
                </div>
                <div class="title-area2">
                   
                </div>
            </div>            
        </div>
            <div class="list">
                <table summary="나의여행 글등록">
                <tr>
                    <!-- 선택한 옵션 db에서 가져오게끔 -->
                    <th style="width:15%">${detail.reviewCategoryNo}</th>
                    <!-- 제목  -->
                    <td colspan="7">${detail.title}</td>
                </tr>
                <tr>
                    <th style="width:10%;">작성자</th>
                    <td>${detail.name}</td>
                    <th>평점</th>
                    <td style="color:rgb(241, 159, 50)">
                    ${detail.ratingCategoryNo}</td>
                    <th>조회수</th>
                    <!--클릭할때마다 늘어나게!!-->
                    <td>${detail.viewCnt}</td>
                    <th style="width:10%">작성일</th>
                    <!-- 날짜 db가져오게 설정 -->
                    <td><fmt:formatDate value="${detail.writeDate}" pattern="yyyy.MM.dd"/></td>
                </tr>
                <tr>
                    <td class="content" colspan="8" rowspan="40">
                   	${detail.content}
                    </td>
                    
                </tr>
            </table> 
                
                
        </div>
        <!-- 좋아요 -->
        <div class="particle-box"></div>
            <button class="btn btn-primary like">
                <i class="glyphicon glyphicon-heart"></i> Like
            </button>
        <div>
        
        
        </div>
            <!-- 버튼 -->
        <div class="buttonList" >
            <span class="list1">
                <button id="list1"><a href="list.do">목록보기</a></button>
            </span>
            <span class="modify">
                <button id="modify"><a href="javascript:modify();">수정</a></button>
            </span>
            <span class="delete">
                <button id="delete"><a href="javascript:del();">삭제</a></button>
            </span>
        </div>  
        <script>
        	 function modify() {
        		 var result= confirm("수정하시겠어요??");
        		 if(result){
        			 location.href="updateform.do?no="+${detail.boardNo};
        		 }
        	 }
             function del() {
                var result = confirm("정말 삭제하시겠어요??");
                var no = ${detail.boardNo};
                if (result) {
                  location.href="delete.do?no="+no;
                }
             }
        </script>
        <!--댓글 파트-->
        
              
        <div class="comment">
                <table>
                    <tr>
                        <th style="width:200px">댓글</th>
                        <td> 0개</td>
                    </tr>
                </table>
        </div>
        <div class="commentWrite">
            <form method="post" action="comment-write.do">
            <input type="hidden" name="no"value="${detail.boardNo}"/>
            <input type="hidden" name="commentNo" value="${param.commentNo}"/>
            
                <span><textarea rows="3" name="content"></textarea></span>
                <span ><input id="commentWrite1" type="submit" value="등록" /></span>
            </form>        
        </div>
             <div class="commentList">
				<table>
					<tr>
						<th style="width: 400px;" align="left">치즈</th>
						<th>2019.3.20</th>
						<th id="commenttd"><input id="like" type="submit" value="♡" />
							<a href=''>신고하기</a> <a href='javascript:aaa()'>수정</a> 
							<a href="javascript:aaa();">삭제</a></th>
					</tr>
					<tr>
                        <td colspan="3">잘 보고갑니다~</td>
                    </tr>
				</table>
					<br>
			</div> 
        </div> 
    <div id="footer"></div>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script> 
    <script type="text/javascript">   
        $(document).ready( function() { 

   		$("#headers").load("../header.html"); // 원하는 파일 경로를 삽입하면 된다
						$("#footer").load("../footer.html"); // 원하는 파일 경로를 삽입하면 된다
					});
	</script>

    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script>
    $(function() {

        function runLike(){
            var rand = Math.floor((Math.random()*100)+1);
            var flows = ["flowOne", "flowTwo", "flowThree"];
            var colors = ["like-1", "like-2", "like-3", "like-4", "like-5", "like-6"];
            var timing = (Math.random()*(1.3-1.0)+1.0).toFixed(1);
            // Animate Particle
        
            $('<div class="particle part-'+rand+' '+colors[Math.floor((Math.random()*6))]+'" style="font-size:'+Math.floor(Math.random()*(40-22)+22)+'px;"><i class="glyphicon glyphicon-heart"></i></div>').appendTo('.particle-box').css({animation: ""+flows[Math.floor((Math.random()*3))]+" "+timing+"s linear"});
            $('.part-'+rand).show();
        
            // Remove Particle
            setTimeout(function(){
                $('.part-'+rand).remove();
            	}, timing*1000-100);
        };
            
        $('.like').on('click', function() {
    	    runLike();
        });
        
	    // 댓글 목록 가져오기			
		function getAjaxCommentList(){
	    	var no = ${detail.boardNo};
			$.ajax({
				url:"comment-list.do",
				data:"no="+no,
				dataType:"json",
				success:function(list){
					console.dir(list);
					let html ="";
					for(let com of list){
						html += "<table>"
						 +"<tr>"
						 +"<th style='width: 400px;' align='left'>"+com.name+"</th>"
						 +"<th>"+com.writeDate+"</th>"
						 +"<th><input id='like' type='submit' value='♡' />"
						 +"<a href=''>신고하기</a> <a href=''>수정</a>"
						 +"	<a href='javascript:aaa();'>삭제</a></th>"
						 +"</tr>"
						 +"<tr>"
	                     +"<td colspan='3'>"+com.content+"</td>"
	                     +"</tr>"
						 +"</table>"
					}
					$(".commentList").html(html);
					
				}
			});
		}
	    
	    // 댓글 목록 호출 
		getAjaxCommentList();
    });

	    
    </script>
</body>


</html>