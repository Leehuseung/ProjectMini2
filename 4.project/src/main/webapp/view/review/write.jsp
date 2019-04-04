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
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Gaegu|Nanum+Pen+Script" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">   
    <style>
    
    /*바디 부분 */
    #img{
        background: url("pic/main/flower.png") no-repeat;
        background-size: 1200px 250px;
        width:100%;
        margin-top: 15px;
       
    }
  
    #img > #contents {
        background-color:rgba(255,255,255,0.5);
    }
    /* 소제목 */
    .title-area{
        display: inline-block;
        height: 130px;
    }
    .title-area2{
        height: 100px;   
    }
    .title-area >.mytrip {
        font-family: 'Nanum Pen Script', cursive;
        padding :25px;
        font-size:70px;
        font-weight: bold;   
        float:left;
     
    }
    /*목록보기버튼*/
    .list1 {
        
        position: relative;
        bottom:45px;
        left:600px;
      
    }
    .list1>#list1 {
        width:150px;
        height: 50px; 
        background: orange;
        border:none;
        border-radius:20px;
    }
    .list1 > #list1 > a{
        font-family: 'Gaegu', cursive;
        font-weight: bold;
        font-size:30px;
        color:black;
        text-decoration: none;
        
    }
    #choice1{
        width:150px; height:55px; font-size:35px; border:none; border-bottom: 1px solid gray; font-family: 'Gaegu', cursive; font-weight: bold;
        font-family: 'Gaegu', cursive;
        font-weight: bold;
    }
    #choice1 option{
        font-family: 'Gaegu', cursive;
        font-weight: bold;
    }
    #choice2{
        width:500px; height:55px; 
        font-size:35px; 
        border:none; border-bottom: 1px solid gray; 
        font-family: 'Gaegu', cursive;
        font-weight: bold;
    }
    #choice2 option{
        font-family: 'Gaegu', cursive;
        font-weight: bold;
    }
    /*저장*/
    .save  > #save > a{
        font-family: 'Gaegu', cursive;
        font-weight: bold;
        font-size:30px;
        color:black;
        text-decoration: none;
        
    }
    .save{
        position: relative;
        bottom:-6px;
        left:420px;
    }
    .save > #save {
        width:150px;
        height: 50px; 
        background: orange;
        border:none;
        border-radius:20px;
        font-family: 'Gaegu', cursive;
        font-weight: bold;
        font-size:30px;
  
    }

    /* 등록 테이블 */
    .list{
        margin: 10px;
        display: inline;
    }
    table{
        width:100%;
        position: relative;
        border-collapse:collapse;
    }
   
    th{
        height:70px;
        border-bottom: 3px solid lightgray;
        border-top: 3px solid lightgray;
        line-height: 60px;
        font-family: 'Gaegu', cursive;
        font-size:35px; 
    }
    td {
        height:70px;
        border-bottom: 3px solid lightgray;
        line-height: 60px;
        font-family: 'Gaegu', cursive;
        font-size:35px; 
    }
    textarea{
        width:100%;
        font-family: 'Gaegu', cursive;
        font-size:30px;
        border-top:none;
        border-bottom:3px solid lightgray;
        border-right:3px solid lightgray;
        border-left:3px solid lightgray;
    }
    /*제목에 내용입력하라는 멘트*/
    #content {
        width:600px;
        height: 50px;
        font-size:30px;
        font-family: 'Gaegu', cursive;
        border:none;
    }
    /* 파일첨부 */
    
    .filebox {
        width: 250px; height: 15px;
        position: relative;
        top:-25px;
        left:150px;
    }


    .filebox label {
    /* display: inline-block; */
    padding: 0.5em .6em;
    color: white;
    font-size: 25px;
    background-color: rgb(241, 159, 50);
    /* cursor: pointer; */
    border-radius: .25em;
    }

    .filebox label:hover {
    background-color: rgb(255, 81, 0);
    }
    .filebox label:active {
    background-color:red;
    }
    .filebox input[type="file"] {
        position: absolute;
        width: 1px;
        height: 1px;
        padding: 0;
        overflow: hidden;
        clip: rect(0, 0, 0, 0);
        border: 0;
    }
     /* 파일첨부 이미지 */
    #contentimg {
        font-size:25px;
        font-family: 'Gaegu', cursive;
        width:500px;
    }

    </style>
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