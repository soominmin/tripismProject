<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피드 작성</title>

    <style>
        /* div{ border: 1px solid gray; } */
        
        #wrap{ height: 1000px;  position: relative;}
        /* #header{ height: 10% ; box-sizing: border-box; } */
        #left-main{ width: 17.5%; height: 90% !important; box-sizing: border-box; float: left; min-width: 120px; }
        #middle-main{ width: 55%; height: 90% !important; box-sizing: border-box; float: left; min-width: 300px; overflow: scroll; margin: 0 2.5%; padding: 0 2.5%; border-left: 1px solid rgb(112, 217, 223); border-right: 1px solid rgb(112, 217, 223);}
        #right-main{ width: 17.5%; height: 90% !important; box-sizing: border-box; float: left; min-width: 180px;}
        /* #footer{ height: 10%; display: block; position: absolute; bottom: 0px !important;} */
        .inner-bar{ margin: 10px 15px; }
        .inner-bar-small{ margin: 10px 5px; }
        
        #feedPage{ background-color: whitesmoke; }
        .btn-feed-three{ width: 120px; }
        .feed-content>img{ display: block; margin: auto; } 

        body{
            -ms-overflow-style: none;
            }
            
            ::-webkit-scrollbar {
            display: none;
            }
            /*특정 부분 스크롤바 없애기*/
            .box{
            -ms-overflow-style: none;
            }
            .box::-webkit-scrollbar{
            display:none;
            }
            #addFile, #deleteFile{
                border: none;
            }
    </style>

</head>
<body>

    <!-- header -->
    <jsp:include page="../common/header.jsp"></jsp:include>
    
	<!--  -->
    <div id="wrap">

        <br><br>

        <!-- feedPage- -->
        <div id="left-main"> &nbsp;

                <div class="inner-bar" align="center" style="padding:30% 0%;">
 
                <button style="background-color: transparent; border: none;" onclick="location.href='index.jsp'"><img src="${pageContext.request.contextPath}/resources/img/feed/home.png" alt="home" style="width: 2em;">
                    <p>홈</p>
                </button>

                <br>

                <button style="background-color: transparent; border: none;"><img src="${pageContext.request.contextPath}/resources/img/feed/hot.png" alt="hot" style="width: 2em;">
                    <p>실시간</p>
                </button>

                <br>

                <hr class="inner-bar">
                
                <br>

                <button style="background-color: transparent; border: none;"><img src="${pageContext.request.contextPath}/resources/img/feed/camera.png" alt="img" style="width: 2em;">
                    <p>사진</p>
                </button>
                
                <br>

                <button style="background-color: transparent; border: none;"><img src="${pageContext.request.contextPath}/resources/img/feed/video.png" alt="video" style="width: 2em;">
                    <p>비디오</p>
                </button>


                
                <!--더 적어보자--> 
            </div>            
        </div>

        <div id="middle-main" align="center">&nbsp;
            <div>
                <h4>추천피드</h4>
            </div>

            <br>
            <hr class="inner-bar">
            <br>

            <div id="feed-wrap">
                <div style="display: block;">
                    <div style="float: right; width: 65%; height: 6em;" >
                        <div style="height: 30%; margin-bottom: 3%;">제목</div>
                        <div style="height: 60%;">내용</div>
                    </div>
                    
                    <div style="float: left; width: 30%; height: 6em;">
                        사진
                    </div>
                </div>
                
                <hr class="inner-bar" style="clear: both;">

                <div style="display: block;">
                    <div style="float: right; width: 65%; height: 6em;" >
                        <div style="height: 30%; margin-bottom: 3%;">제목</div>
                        <div style="height: 60%;">내용</div>
                    </div>
                    
                    <div style="float: left; width: 30%; height: 6em;">
                        사진
                    </div>
                </div>
                
                <hr class="inner-bar" style="clear: both;">

                <div style="display: block;">
                    <div style="float: right; width: 65%; height: 6em;" >
                        <div style="height: 30%; margin-bottom: 3%;">제목</div>
                        <div style="height: 60%;">내용</div>
                    </div>
                    
                    <div style="float: left; width: 30%; height: 6em;">
                        사진
                    </div>
                </div>
                
                <hr class="inner-bar" style="clear: both;">

                <div style="display: block;">
                    <div style="float: right; width: 65%; height: 6em;" >
                        <div style="height: 30%; margin-bottom: 3%;">제목</div>
                        <div style="height: 60%;">내용</div>
                    </div>
                    
                    <div style="float: left; width: 30%; height: 6em;">
                        사진
                    </div>
                </div>
                
                <hr class="inner-bar" style="clear: both;">

                <div style="display: block;">
                    <div style="float: right; width: 65%; height: 6em;" >
                        <div style="height: 30%; margin-bottom: 3%;">제목</div>
                        <div style="height: 60%;">내용</div>
                    </div>
                    
                    <div style="float: left; width: 30%; height: 6em;">
                        사진
                    </div>
                </div>
                
                <hr class="inner-bar" style="clear: both;">

                <div style="display: block;">
                    <div style="float: right; width: 65%; height: 6em;" >
                        <div style="height: 30%; margin-bottom: 3%;">제목</div>
                        <div style="height: 60%;">내용</div>
                    </div>
                    
                    <div style="float: left; width: 30%; height: 6em;">
                        사진
                    </div>
                </div>
                
                <hr class="inner-bar" style="clear: both;">

                <div style="display: block;">
                    <div style="float: right; width: 65%; height: 6em;" >
                        <div style="height: 30%; margin-bottom: 3%;">제목</div>
                        <div style="height: 60%;">내용</div>
                    </div>
                    
                    <div style="float: left; width: 30%; height: 6em;">
                        사진
                    </div>
                </div>
                
                <hr class="inner-bar" style="clear: both;">

                <div style="display: block;">
                    <div style="float: right; width: 65%; height: 6em;" >
                        <div style="height: 30%; margin-bottom: 3%;">제목</div>
                        <div style="height: 60%;">내용</div>
                    </div>
                    
                    <div style="float: left; width: 30%; height: 6em;">
                        사진
                    </div>
                </div>
                
                <hr class="inner-bar" style="clear: both;">

                <div style="display: block;">
                    <div style="float: right; width: 65%; height: 6em;" >
                        <div style="height: 30%; margin-bottom: 3%;">제목</div>
                        <div style="height: 60%;">내용</div>
                    </div>
                    
                    <div style="float: left; width: 30%; height: 6em;">
                        사진
                    </div>
                </div>
                
                <hr class="inner-bar" style="clear: both;">

                <div style="display: block;">
                    <div style="float: right; width: 65%; height: 6em;" >
                        <div style="height: 30%; margin-bottom: 3%;">제목</div>
                        <div style="height: 60%;">내용</div>
                    </div>
                    
                    <div style="float: left; width: 30%; height: 6em;">
                        사진
                    </div>
                </div>
                
                <hr class="inner-bar" style="clear: both;">
            </div>
            

        
            
        </div>
        <div id="right-main">
            <div align="center">
                <img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="image" style="width: 10em;">
            </div>

            <hr class="inner-bar">

            <div class="inner-bar">
                <b>#태그</b> <br>
                <a href="#">#봄</a>
                <a href="#">#여름</a>
                <a href="#">#가을</a>
                <a href="#">#겨울</a>    
            </div>

            <hr class="inner-bar">

            <div class="inner-bar">
                <b>추천 피드</b> <a href="#" style="float: right;">더보기&gt;</a>
            </div>

            <div class="inner-bar" onclick="location.href='#'">
                <p>
                    <b>여의도 벚꽃축제</b> <br>
                    여의도 벚꽃축제 다녀왔어요!
                </p>

            </div>

            <div class="inner-bar"><hr></div>
            
            <div class="inner-bar" onclick="location.href='#'">
                <p>
                    <b>제주도 얼른 오세요</b> <br>
                    가족여행으로 제주도를 다녀왔습니다
                </p>

            </div>

            <div class="inner-bar"><hr></div>

            <div class="inner-bar" onclick="location.href='#'">
                <p>
                    <b>서울숲 탐방기</b> <br>
                    안녕하세요. 서울 도심 속 숲을 찾아 서울숲에 다녀왔습니다.
                </p>

            </div>

        </div>

    </div>

    <!-- footer -->
    <jsp:include page="../common/footer.jsp"></jsp:include>
    

</body>
</html>