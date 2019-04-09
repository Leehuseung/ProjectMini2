<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
        <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
             <link rel="stylesheet" type="text/css" href="../../resources/css/main.css" />
             <link rel="stylesheet" type="text/css" href="../../resources/css/page.css" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Homepage</title>
    <style>

     /* 맛집 부분 */
     .container{
        width:1200px;
     }
     .subtitle{
         padding-top:70px;
         width:100%;
         height:200px;
         text-align:center;
     }
     .subtitle > p {
         font-size:25px;
     }
     .subMenu{
        width:100%;
        height : 8%;

     }
     .subMenu > li{
        border: 0px solid black;
        display:inline-block;
        text-align: center;
        font-size:25px;
        width: calc(100% / 4);
        height:60px;
        margin-right: -6px;      
        font-weight: bold;
	    color: black;
        line-height: 60px;
     }
     .subMenu > li > a {
         width:100%;
         height:100%;
         cursor:pointer;
         display:inline-block;
     }
     .subMenu  > li:hover {
   
        background: orange;
        transition-duration: 0.3s;
        -moz-transition-duration: 0.3s;
        -webkit-transition-duration: 0.3s;
    }
    .subMenu  > li > a:link{
        text-decoration: none;
    }
    .subMenu  > li > a:visited{
        text-decoration: none;
        color: black;
    }
    .subMenu  > li > a:hover{
        font-weight: bold;
	    color: white;
    }
    .writeForm{
        height : 50px;
        line-height:50px;
        box-sizing: border-box;
        margin-top:30px;
    }
    .writeForm div{
        display: inline-block;
    }
    .write{
        display:block;
        float:right;
        height : 100%;
        width:15%;
        text-align: center;
        box-sizing: border-box;
        padding-left:80px;
    }
    .write button{
        border-radius:10px;
        height:30px;
        width:100px;
        font-size:18px;
        border-style:none;
        background-color:orange;
        color:white;
        
    }
    .select{
        box-sizing: border-box;
        height : 100%;
        width:100px;
    }
    .selectBox{
        width:100px;
        height:30px;
        font-size:18px;
    }
    .information{
        height:600px;
        width:100%;
        box-sizing: border-box;
        display:grid;
        grid-template-columns:1fr 1fr 1fr;
        grid-column-gap: 30px;
        padding-top:30px;
        padding-bottom:30px;
    }
    .information > div{
        width:100%;
        height:100%;
        box-shadow:3px 3px #666;
    }
    /*.information_1 > div > div{
        border: 1px solid black;
        box-sizing:border-box;
        display:grid;
        height: 50%;
    } */
    .ex{
        box-sizing:border-box;
        border: 1px solid white;
        height:50%;
        text-align: center;
    }
    .ex > div{
        margin-top:50px;
        box-sizing:border-box;
        width:80%;
        height:50%;
    }
    
    
    .icon{
        box-sizing:border-box;
        height:50%;
        display : grid;
        grid-template-columns: 1fr 1fr 1fr;
        grid-template-rows: 70% 30%;
        line-height:20px;;
        											
    }
    .iconDetail{
        padding:30px;
    }
    .icon > div > img{
        height:100%;
        width:100%;
    }
    .icon > div{
        text-align:center;
        width:100%;
        box-sizing:border-box;
    }
    .information_1 > div{
        box-sizing:border-box;
        grid-template-rows: 1fr 1fr;
        height:50%;
        width:100%;

    }
    .information_1 > div > img{
        height:100%;
        width:100%;
    }
   

    </style>
</head>

<!-- include -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script> 
<script type="text/javascript">   
$(document).ready( function() { 

$("#headers").load("../header.html");  // 원하는 파일 경로를 삽입하면 된다
$("#footer").load("../footer.html");  // 원하는 파일 경로를 삽입하면 된다
}); 


</script>


<body>

    <div id="headers"></div>




    <div class="body">
        <div class="container">
            <div class="subtitle">
                <h1>무엇을 먹을까? 행복한 고민에 빠지게 하는 제주의 한식</h1>
                <br><p>칼칼한 갈치조림, 고소한 고등어 구이, 담백한 전복뚝배기, 성게미역국, 제주 흑돼지 구이 등 다양한 제주의 음식은 행복한 고민에 빠지게 한다. 다양하고 싱싱한 식재료를 이용한 담백하고 맛깔스러운 제주도 음식은 먹는 즐거움을 풍요롭게 한다.</p>               
            </div>
            <div class="subMenu">
                    <li class=han><a href="#" >한 식</a></li>
                    <li class=il><a href="#" >일 식</a></li>
                    <li class=yang><a href="#" >양 식</a></li>
                    <li class=cafe><a href="#" >카 페</a></li>
                </ul>
            </div>
            <div class="writeForm">
                <div class="select">
                    <select class="selectBox" name="area">
                        <option value="1">좋아요순</option>
                        <option value="2">리뷰순</option>
                        <option value="3" selected>평점순</option>
                        <option value="4" selected>이름순</option>
                    </select>
                </div>
                <div class="write">
                    
                    <button type="button" id="doUrl">글등록</button>                
                </div>
            </div>


            <div class="information">
                <div class="information_1">
                    <div onclick="location.href='food_detail1.html'"><img src="pic/food/black.jpg"></div>
                    <div>
                        <div class="ex" onclick="location.href='food_detail1.html'">
                            <div><h3>산방식당(모슬포 본점)</h3>
                                 <h4>서귀포시>안덕</h4>
                            </div>
                        </div>
                        <div class="icon">
                            <div class="iconDetail"><img src="pic/food/like.jpg"></div>
                            <div class="iconDetail"></div>
                            <div class="iconDetail"><img src="pic/food/review.jpg"></div>
                            <div >좋아요<br>5</div>
                            <div></div>
                            <div>리뷰<br>7</div>
                        </div>
                    </div>
                </div>
                <div class="information_1">
                    <div><img src="pic/food/guk.jpg"></div>
                    <div>
                        <div class="ex">
                            <div><h3>로뎀</h3>
                                    <h4>제주시>구착</h4>

                            </div>
                        </div>
                        <div class="icon">
                            <div class="iconDetail"><img src="pic/food/like.jpg"></div>
                            <div class="iconDetail"></div>
                            <div class="iconDetail"><img src="pic/food/review.jpg"></div>
                            <div>좋아요<br>5</div>
                            <div></div>
                            <div>리뷰<br>7</div>
                        </div>
                    </div>
                </div>
                <div class="information_1">
                    <div><img src="pic/food/fish.jpg"></div>
                    <div>
                        <div class="ex" >
                            <div><h3>오라숲소리</h3>
                                    <h4>제주시>제주시내</h4>
                            </div>
                        </div>
                        <div class="icon">
                            <div class="iconDetail"><img src="pic/food/like.jpg"></div>
                            <div class="iconDetail"></div>
                            <div class="iconDetail"><img src="pic/food/review.jpg"></div>
                            <div>좋아요<br>5</div>
                            <div></div>
                            <div>리뷰<br>7</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="information">
                <div class="information_1">
                    <div onclick="location.href='food_detail1.html'"><img src="pic/food/black.jpg"></div>
                    <div>
                        <div class="ex" onclick="location.href='food_detail1.html'">
                            <div><h3>산방식당(모슬포 본점)</h3>
                                 <h4>서귀포시>안덕</h4>
                            </div>
                        </div>
                        <div class="icon">
                            <div class="iconDetail"><img src="pic/food/like.jpg"></div>
                            <div class="iconDetail"></div>
                            <div class="iconDetail"><img src="pic/food/review.jpg"></div>
                            <div >좋아요<br>5</div>
                            <div></div>
                            <div>리뷰<br>7</div>
                        </div>
                    </div>
                </div>
                <div class="information_1">
                    <div><img src="pic/food/22.jpg"></div>
                    <div>
                        <div class="ex">
                            <div><h3>로뎀</h3>
                                    <h4>제주시>구착</h4>

                            </div>
                        </div>
                        <div class="icon">
                            <div class="iconDetail"><img src="pic/food/like.jpg"></div>
                            <div class="iconDetail"></div>
                            <div class="iconDetail"><img src="pic/food/review.jpg"></div>
                            <div>좋아요<br>5</div>
                            <div></div>
                            <div>리뷰<br>7</div>
                        </div>
                    </div>
                </div>
                <div class="information_1">
                    <div><img src="pic/food/33.jpg"></div>
                    <div>
                        <div class="ex" >
                            <div><h3>오라숲소리</h3>
                                    <h4>제주시>제주시내</h4>
                            </div>
                        </div>
                        <div class="icon">
                            <div class="iconDetail"><img src="pic/food/like.jpg"></div>
                            <div class="iconDetail"></div>
                            <div class="iconDetail"><img src="pic/food/review.jpg"></div>
                            <div>좋아요<br>5</div>
                            <div></div>
                            <div>리뷰<br>7</div>
                        </div>
                    </div>
                </div>
            </div>


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
        </div>
    </div>








            <div id="footer"></div>
          <script>
          $("#doUrl").click(function (){ 
        		window.location.href='/jeju/view/restraunt/restraunt_writeForm.do';
        	});
          </script>  
</body>
</html>