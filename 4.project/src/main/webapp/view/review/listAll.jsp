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
   <link rel="stylesheet" type="text/css" href="../../resources/css/page.css" />
    <link rel="stylesheet" type="text/css" href="../../resources/css/review/listAll.css" />
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Gaegu|Nanum+Pen+Script" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

</head>
<body>
    <div id="headers"></div>

    <div class="body">
        <div id="img">
            <div id="contents">
                <div class="title-area">
                    <div class="mytrip" >나의여행</div>
                </div>
                <div class="title-area2">
                    <div class="choice1">
                        <select style="width:150px; height:50px; font-size:25px; border:none; font-family: 'Gaegu', cursive; font-weight: bold">
                                <option>제목+내용</option>
                                <option>제목</option>
                                <option>작성자</option>
                            </select>
                        </div>
                        <div class="search1">
                        <input id="search1" type="search" name="search" placeholder="검색할 내용을 입력하세요"/>
                    </div>
                    <div class="searchButton">
                        <button id="searchButton" >검색</button>
                    </div>
                    <div class="write">
                        <button id="write"><a href="mytrip_write.html">글쓰기</a></button>
                    </div>
                </div>
            </div>            
        </div>
        <div class="list">
                <table summary="나의여행 전체목록">
                <tr>
                    <th style="width:8%">번호</th>
                    <th style="width:10%">
                        <select class="chice2" 
                        style=" width:100px; height:50px; font-size:35px; border:none; border-bottom: 1px solid gray; font-family: 'Gaegu', cursive; font-weight: bold"
                        >
                            <option>선택</option>
                            <option>관광</option>
                            <option>맛집</option>
                            <option>숙박</option>
                        </select>
                    </th>
                    <th style="width:40%">제목</th>
                    <th style="width:10%">작성자</th>
                    <th style="width:15%">작성일</th>
                    <th>조회수</th>
                    <th>좋아요</th>
                </tr>
                <tr>
                    <td style="width:8%">10</td>
                    <td style="width:10%">맛집</td>
                    <td style="width:40%"><a id="titleLink" href="mytrip_detail.html">[제주김만복]눈과입이호강했습니다.</a></td>
                    <td style="width:10%">김정래</td>
                    <td style="width:15%">2019.3.14</td>
                    <td>0</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td style="width:8%">9</td>
                    <td style="width:10%">맛집</td>
                    <td style="width:40%"><a id="titleLink" href="mytrip_detail+comment.html" >[산방식당]맛있어요</a></td>
                    <td style="width:10%">도비</td>
                    <td style="width:15%">2019.3.14</td>
                    <td>10</td>
                    <td>4</td>
                </tr>
                
                <tr>
                    <td style="width:8%">8</td>
                    <td style="width:10%">관광</td>
                    <td style="width:40%">[성산일출봉]힘들지만 뿌듯,완벽</td>
                    <td style="width:10%">이규종</td>
                    <td style="width:15%">2019.3.13</td>
                    <td>20</td>
                    <td>11</td>
                </tr>
                
                <tr>
                    <td style="width:8%">7</td>
                    <td style="width:10%">숙박</td>
                    <td style="width:40%">[나미송이머무는곳]다녀감</td>
                    <td style="width:10%">이후승</td>
                    <td style="width:15%">2019.3.13</td>
                    <td>33</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td style="width:8%">6</td>
                    <td style="width:10%">숙박</td>
                    <td style="width:40%">[스위츠마을]이색적인 제주를 만남</td>
                    <td style="width:10%">박지수</td>
                    <td style="width:15%">2019.3.13</td>
                    <td>52</td>
                    <td>15</td>
                </tr>
                <tr>
                    <td style="width:8%">5</td>
                    <td style="width:10%">관광</td>
                    <td style="width:40%">[우도]행복했던 시간~</td>
                    <td style="width:10%">오이슬</td>
                    <td style="width:15%">2019.3.13</td>
                    <td>49</td>
                    <td>34</td>
                </tr>
                <tr>
                    <td style="width:8%">4</td>
                    <td style="width:10%">관광</td>
                    <td style="width:40%">[점보빌리지]코끼리들의 재롱잔치</td>
                    <td style="width:10%">구본현</td>
                    <td style="width:15%">2019.3.13</td>
                    <td>57</td>
                    <td>35</td>
                </tr>
                <tr>
                    <td style="width:8%">3</td>
                    <td style="width:10%">맛집</td>
                    <td style="width:40%">[로뎀]또방문하고싶은곳,굿!!</td>
                    <td style="width:10%">구본영</td>
                    <td style="width:15%">2019.3.12</td>
                    <td>60</td>
                    <td>22</td>
                </tr>
                <tr>
                    <td style="width:8%">2</td>
                    <td style="width:10%">관광</td>
                    <td style="width:40%">[섭지코지]인생사진 건지기!</td>
                    <td style="width:10%">조진영</td>
                    <td style="width:15%">2019.3.12</td>
                    <td>102</td>
                    <td>40</td>
                </tr>
                <tr>
                    <td style="width:8%">1</td>
                    <td style="width:10%">숙박</td>
                    <td style="width:40%">[하워드존슨]너무좋아요 짱짱짱</td>
                    <td style="width:10%">박지현</td>
                    <td style="width:15%">2019.3.12</td>
                    <td>78</td>
                    <td>17</td>
                </tr>
            </table> 
        </div>
        <!-- 페이징 -->
        <div class="page">
            <div class="prev"><a href="#">이전</a></div>
            <div><a href="#">1</a></div>
            <div><a href="#">2</a></div>
            <div><a href="#">3</a></div>
            <div><a href="#">4</a></div>
            <div><a href="#">5</a></div>
            <div><a href="#">6</a></div>
            <div><a href="#">7</a></div>
            <div><a href="#">8</a></div>
            <div><a href="#">9</a></div>
            <div><a href="#">10</a></div>
            <div class="next"><a href="#">다음</a></div>
        </div>
              
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