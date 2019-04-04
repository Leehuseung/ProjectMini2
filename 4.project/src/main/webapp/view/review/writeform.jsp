<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Homepage</title>
    <link rel="stylesheet" type="text/css" href="../../resources/css/main.css" />
    <link rel="stylesheet" type="text/css" href="../../resources/css/review/review_write.css" />
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Gaegu|Nanum+Pen+Script" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">   
    
</head>
<body>
    <div id="headers"></div>

    <div class="body">
        <form>

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
                    <th style="width:20%">말머리</th>
                    <th style="width:20%">
                        <select id="choice1">
                       
                            <option>선택</option>
                            <option>관광</option>
                            <option>맛집</option>
                            <option>숙박</option>
                        </select>
                    </th>
                    <th style="width:15%;">평점</th>
                    <th style="width:70%">
                            <select id="choice2" >
                                <option>선택하세요</option>
                                <option>★★★★★ 아주 좋아요</option>
                                <option>★★★★☆ 맘에 들어요</option>
                                <option>★★★☆☆ 보통이에요</option>
                                <option>★★☆☆☆ 별로에요</option>
                                <option>★☆☆☆☆ 추천하지않아요</option>
                            </select>
                    </th>
                </tr>
                <tr>
                    <th>제목</th> 
                    <td colspan="3"><input id="content" type="text" placeholder="  제목을 입력하세요."/></td>
                </tr>
                <tr>
                    <th>파일첨부</th>
                    <td colspan="2"><span id="contentimg"></span></td>
                    <td > 
                        <div class="filebox">  
                            <label for="ex_file">파일 선택</label>
                            <input type="file" id="ex_file">
                        </div>
                    </td>
                </tr>
              
            </table> 
                <div class="contentWrite">
                    <textarea rows="30" cols="4" placeholder="  내용을 입력하세요."></textarea>
                </div>
                <span class="save">
                        <button id="save" type="submit"><a href="mytrip_detail.html">저장</a></button>
                </span>
        </form>
                
    </div>
      
        <span class="list1">        
            <button id="list1"><a href="mytrip_listAll.html">목록보기</a></button>
        </span>    

        <div id="footer"></div>
    
        <script src="//code.jquery.com/jquery-1.11.0.min.js"></script> 
        <script type="text/javascript">   
        $(document).ready( function() { 

   		$("#headers").load("../header.html");  // 원하는 파일 경로를 삽입하면 된다
   		$("#footer").load("../footer.html");  // 원하는 파일 경로를 삽입하면 된다
   		});
        </script>
    </body>


</html>