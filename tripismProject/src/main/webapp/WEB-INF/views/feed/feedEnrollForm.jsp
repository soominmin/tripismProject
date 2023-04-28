<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피드 작성</title>

	<!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <!-- Plugins css Style -->
    <link defer href='${pageContext.request.contextPath}/resources/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
    <link defer href='${pageContext.request.contextPath}/resources/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
    <link defer href="${pageContext.request.contextPath}/resources/plugins/animate/animate.css" rel="stylesheet">
    <link defer href="${pageContext.request.contextPath}/resources/plugins/menuzord/css/menuzord.css" rel="stylesheet">
    <link defer href="${pageContext.request.contextPath}/resources/plugins/menuzord/css/menuzord-animations.css" rel="stylesheet">
    <link defer href='${pageContext.request.contextPath}/resources/plugins/fancybox/jquery.fancybox.min.css' rel='stylesheet'>
    <link defer href='${pageContext.request.contextPath}/resources/plugins/selectric/selectric.css' rel='stylesheet'>
    <link defer href='${pageContext.request.contextPath}/resources/plugins/daterangepicker/css/daterangepicker.css' rel='stylesheet'>
    <link defer href='${pageContext.request.contextPath}/resources/plugins/rateyo/jquery.rateyo.min.css' rel='stylesheet'>
    <link defer href='${pageContext.request.contextPath}/resources/plugins/no-ui-slider/nouislider.min.css' rel='stylesheet'>
    <link defer href='${pageContext.request.contextPath}/resources/plugins/dzsparallaxer/dzsparallaxer.css' rel='stylesheet'>
    <link defer href='${pageContext.request.contextPath}/resources/plugins/slick/slick.css' rel='stylesheet'>
    <link defer href='${pageContext.request.contextPath}/resources/plugins/slick/slick-theme.css' rel='stylesheet'>
    <link defer href='${pageContext.request.contextPath}/resources/plugins/revolution/css/settings.css' rel='stylesheet'>

    <style>
        /* div{ border: 1px solid gray; } */
        
        #wrap{ height: 1000px;  position: relative;}
        #header{ height: 10%; box-sizing: border-box; }
        #left-main{ width: 17.5%; height: 80%; box-sizing: border-box; float: left; min-width: 120px; }
        #middle-main{ width: 55%; height: 80%; box-sizing: border-box; float: left; min-width: 500px; overflow: scroll; margin: 0 2.5%; padding: 0 2.5%; border-left: 1px solid rgb(112, 217, 223); border-right: 1px solid rgb(112, 217, 223);}
        #right-main{ width: 17.5%; height: 80%; box-sizing: border-box; float: left; min-width: 180px;}
        #footer{ height: 10%; display: block; position: absolute; bottom: 0px;}
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

	<!--  -->
    <div id="wrap">
        <!-- header -->
        <div id="header" align="center"> 
            <!-- header.html 포함 -->
            <img src="${pageContext.request.contextPath}/resources/img/LOGO2.png" alt="LOGO" style="width: auto; height: 100%;">
        </div>

        <!-- feedPage- -->
        <div id="left-main"> &nbsp;

                <div class="inner-bar" align="center" style="padding:50% 0%;">
 
                <button style="background-color: transparent; border: none;" onclick="location.href='index.jsp'"><img src="${pageContext.request.contextPath}/resources/img/feed/home.png" alt="home" style="width: 2em;">
                    <p>홈</p>
                </button>

                <br>

                <button style="background-color: transparent; border: none;"><img src="${pageContext.request.contextPath}/resources/img/feed/hot.png" alt="hot" style="width: 2em;">
                    <p>실시간</p>
                </button>

                <hr class="inner-bar">

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

            <!-- 글쓰기용 modal -->
            <form action="#">
                <div id="input-feed">
                    <div>
                        <div style="width: 445px;">
                
                            <!-- Modal Header -->
                            <div>
                                <h4>피드작성</h4> <br>
                            </div>
                
                            <!-- Modal body -->
                            <div>
                                <input type="text" placeholder="제목을 입력하세요" style="width: 444px;"> <br>
                                <hr class="inner-bar" style="width: 430px;">
                                <textarea name="" id="" cols="57" rows="20"></textarea>
                                <hr class="inner-bar" style="width: 430px;">
                                <div align="left">
                                    <table>
                                        <thead>
                                            <th>
                                                사진첨부 &nbsp; <button class="addFile">더하기</button> &nbsp; <button class="deleteFile">빼기</button>
                                            </th> 
                                        </thead>
                                        <tbody id="fileHere">
                                            <tr>
                                                <td><input type="file"></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <hr class="inner-bar" style="width: 430px;">
                        
                            <!-- Modal footer -->
                            <div>
                                <button type="submit" class="btn btn-secondary">완료</button>
                                <button type="button" class="btn btn-danger" onclick="location.href='feed.fd'">취소</button>
                            </div>
                        
                        </div>
                    </div>
                </div>
            </form>


            <script>
                $(function(){ // 첨부파일 추가버튼
                    $(".addFile").click(function(){
                        $("#fileHere").append("<tr><td><input type='file'></td></tr>");
                    })
                })
                $(function(){ // 첨부파일 제거버튼. 한 개는 남게 만듦
                    $(".deleteFile").click(function(){
                        if($("#fileHere>tr").length <2) {
                            return;
                        }else{
                            $("#fileHere>tr:last").remove();
                        }
                    })
                })
            </script>

        
            
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

        <!-- footer -->
        <div id="footer" style="display: flex; justify-content: center;">
            <jsp:include page="../common/footer.jsp"></jsp:include>
        </div>
    </div>

    

</body>
</html>