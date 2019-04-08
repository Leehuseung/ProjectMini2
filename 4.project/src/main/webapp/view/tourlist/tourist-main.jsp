<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>tourist-main</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../../resources/css/main.css" />
    <link rel="stylesheet" type="text/css" href="../../resources/css/tourist/tourist-main.css" />
    <link rel="stylesheet" type="text/css" href="../../resources/css/page.css" />
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
    <style>
    
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
            <div class="content-top">
                <div>
                    전체
                </div>
                <div></div>
                <div></div>
                <div class="sort_type">
                    <button type="button" class="ico_sort"><img src="../../resources/images/tourlist/ico_sort_thumb_on.png"></button>
                    <button type="button" class="ico_sort_list"><img src="../../resources/images/tourlist/ico_sort_list_on.png"></button>
                </div>
                <div>
                    <select name="list">
                        <option value="0">최신순</option>
                        <option value="1">리뷰순</option>
                        <option value="2">좋아요</option>
                        <option value="3">조회수</option>
                    </select>
                </div>
                <div>
                    <input type="text" name="title-serach" placeholder="여행지검색"/>
                </div>
            </div>
            <div class="content">
                <a href="tourist-detail.html">
                    <div class="container" >
                        <div class="thumbnail">
                            <img src="../../resources/images/tourlist/detail01_thum.jpg"/>
                            <h3>성산일출봉</h3>
                        </div>
                        <div class="info">
                            <div class="infotitle"><b>성산일출봉</b></div>
                            <div class="location">서귀포시 > 성산</div>
                            <div class="category">#자연</div>
                            <p>제주도의 랜드마크</p>
                            <br>
                            <div class="icon">
                                <div class="iconDetail"><img src="../../resources/images/tourlist/like.jpg"></div>
                                <div class="iconDetail"><img src="../../resources/images/tourlist/view.jpg"></div>
                                <div class="iconDetail"><img src="../../resources/images/tourlist/review.jpg"></div>
                                <div>좋아요<br>5</div>
                                <div>조회수<br>20</div>
                                <div>리뷰<br>7</div>
                            </div>
                        </div>
                    </div>
                </a>    
                <a href="tourist-detail.html">
                    <div class="container" >
                        <div class="thumbnail">
                            <img src="../../resources/images/tourlist/detail01_slide2.JPG"/>
                            <h3>성산일출봉</h3>
                        </div>
                        <div class="info">
                            <div class="infotitle"><b>성산일출봉</b></div>
                            <div class="location">서귀포시 > 성산</div>
                            <div class="category">#자연</div>
                            <p>제주도의 랜드마크</p>
                        </div>
                    </div>
                </a>
                <a href="tourist-detail.html">
                    <div class="container" >
                        <div class="thumbnail">
                            <img src="../../resources/images/tourlist/detail01_slide3.JPG"/>
                            <h3>성산일출봉</h3>
                        </div>
                        <div class="info">
                            <div class="infotitle"><b>성산일출봉</b></div>
                            <div class="location">서귀포시 > 성산</div>
                            <div class="category">#자연</div>
                            <p>제주도의 랜드마크</p>
                        </div>
                    </div>
                </a>
                <a href="tourist-detail.html">
                    <div class="container" >
                        <div class="thumbnail">
                            <img src="../../resources/images/tourlist/detail01_slide5.JPG"/>
                            <h3>성산일출봉</h3>
                        </div>
                        <div class="info">
                            <div class="infotitle"><b>성산일출봉</b></div>
                            <div class="location">서귀포시 > 성산</div>
                            <div class="category">#자연</div>
                            <p>제주도의 랜드마크</p>
                        </div>
                    </div>
                </a>
                <a href="tourist-detail.html">
                    <div class="container" >
                        <div class="thumbnail">
                            <img src="../../resources/images/tourlist/detail01_slide5.JPG"/>
                            <h3>성산일출봉</h3>
                        </div>
                        <div class="info">
                            <div class="infotitle"><b>성산일출봉</b></div>
                            <div class="location">서귀포시 > 성산</div>
                            <div class="category">#자연</div>
                            <p>제주도의 랜드마크</p>
                        </div>
                    </div>
                </a>
                <a href="tourist-detail.html">
                    <div class="container" >
                        <div class="thumbnail">
                            <img src="../../resources/images/tourlist/detail01_slide6.JPG"/>
                            <h3>성산일출봉</h3>
                        </div>
                        <div class="info">
                            <div class="infotitle"><b>성산일출봉</b></div>
                            <div class="location">서귀포시 > 성산</div>
                            <div class="category">#자연</div>
                            <p>제주도의 랜드마크</p>
                        </div>
                    </div>
                </a>
                <a href="tourist-detail.html">
                    <div class="container" >
                        <div class="thumbnail">
                            <img src="../../resources/images/tourlist/detail01_thum.jpg"/>
                            <h3>성산일출봉</h3>
                        </div>
                        <div class="info">
                            <div class="infotitle"><b>성산일출봉</b></div>
                            <div class="location">서귀포시 > 성산</div>
                            <div class="category">#자연</div>
                            <p>제주도의 랜드마크</p>
                        </div>
                    </div>
                </a>
                <a href="tourist-detail.html">
                    <div class="container" >
                        <div class="thumbnail">
                            <img src="../../resources/images/tourlist/detail01_thum.jpg"/>
                            <h3>성산일출봉</h3>
                        </div>
                        <div class="info">
                            <div class="infotitle"><b>성산일출봉</b></div>
                            <div class="location">서귀포시 > 성산</div>
                            <div class="category">#자연</div>
                            <p>제주도의 랜드마크</p>
                        </div>
                    </div>
                </a>
                <a href="tourist-detail.html">
                    <div class="container" >
                        <div class="thumbnail">
                            <img src="../../resources/images/tourlist/detail01_thum.jpg"/>
                            <h3>성산일출봉</h3>
                        </div>
                        <div class="info">
                            <div class="infotitle"><b>성산일출봉</b></div>
                            <div class="location">서귀포시 > 성산</div>
                            <div class="category">#자연</div>
                            <p>제주도의 랜드마크</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="write">
                <a href="tourist-wirte.html">
                    <button>글쓰기</button>
                </a>
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

</body>


</html>