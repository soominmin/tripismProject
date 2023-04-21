<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피드 홈</title>

	<!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <!-- Plugins css Style -->
    <link href='../common/Star travel/Static HTML/assets/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
    <link href='../common/Star travel/Static HTML/assets/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
    <link href="../common/Star travel/Static HTML/assets/plugins/animate/animate.css" rel="stylesheet">
    <link href="../common/Star travel/Static HTML/assets/plugins/menuzord/css/menuzord.css" rel="stylesheet">
    <link href="../common/Star travel/Static HTML/assets/plugins/menuzord/css/menuzord-animations.css" rel="stylesheet">

    <link href='../common/Star travel/Static HTML/assets/plugins/fancybox/jquery.fancybox.min.css' rel='stylesheet'>
    
    <link href='../common/Star travel/Static HTML/assets/plugins/selectric/selectric.css' rel='stylesheet'>
 
    <!-- GOOGLE FONT -->
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700' rel='stylesheet'>

    <!-- CUSTOM CSS -->
    <link href="../common/Star travel/Static HTML/assets/css/star.css" id="option_style" rel="stylesheet">

    <!-- Javascript -->
    
    <script src="../common/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="../common/assets/plugins/menuzord/js/menuzord.js"></script>
    
    <script src='../common/assets/plugins/fancybox/jquery.fancybox.min.js'></script>
    
    <script src="../common/assets/plugins/lazyestload/lazyestload.js"></script>
    
    <script src="../common/assets/plugins/smoothscroll/SmoothScroll.js"></script>
    
    <script src="../common/assets/js/star.js"></script>

    <style>
        /* div{ border: 1px solid gray; } */
        
        #wrap{ height: 1000px;  position: relative;}
        #header{ height: 10%; box-sizing: border-box; }
        #left-main{ width: 17.5%; height: 80%; box-sizing: border-box; float: left; min-width: 120px; }
        #middle-main{ width: 55%; height: 80%; box-sizing: border-box; float: left; min-width: 300px; overflow: scroll; margin: 0 2.5%; padding: 0 2.5%; border-left: 1px solid rgb(112, 217, 223); border-right: 1px solid rgb(112, 217, 223);}
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
        <div id="header"> 
            <!-- header.html 포함 -->
            <img src="../common/LOGO.png" alt="LOGO" style="width: auto; height: 100%;">
        </div>

        <!-- feedPage- -->
        <div id="left-main"> &nbsp;

                <div class="inner-bar" align="center" style="padding:50% 0%;">
                
                <form action="#">
                    <div>
                        <input type="text" style="border-radius: 10px; text-align: center;"> <br><br>
                        <button type="submit" class="btn-primary">검색</button>
                    </div>
                </form>
                <hr class="inner-bar">
                    
                <button style="background-color: transparent; border: none;" onclick="location.href='#'">
                	<img src="C:\tripismProject\tripismProject\src\main\webapp\resources\img\icons\home.png" alt="home" style="width: 2em;">
                    <p>홈</p>
                </button>

                <br>

                <button style="background-color: transparent; border: none;" onclick="location.href='#'">
                	<img src="img/hot.png" alt="hot" style="width: 2em;">
                    <p>실시간</p>
                </button>

                <hr class="inner-bar">

                <button style="background-color: transparent; border: none;" onclick="location.href='#'">
                	<img src="img/camera.png" alt="img" style="width: 2em;">
                    <p>사진</p>
                </button>
                
                <br>

                <button style="background-color: transparent; border: none;" onclick="location.href='#'">
                	<img src="img/video.png" alt="video" style="width: 2em;">
                    <p>비디오</p>
                </button>

            </div>            
        </div>

        <div id="middle-main">&nbsp;

            <!-- 신고용 modal -->
            <form action="#">
                <div class="modal" id="report">
                    <div class="modal-dialog">
                        <div class="modal-content">
                
                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">신고하기</h4>
                            </div>
                
                            <!-- Modal body -->
                            <div class="modal-body">
                                <b>이유를 선택해주세요</b> <br>
                                <select name="" id="">
                                    <option value="">광고</option>
                                    <option value="">성적인 콘텐츠</option>
                                    <option value="">잘못된 정보</option>
                                    <option value="">혐오감 유발</option>
                                </select>
                                
                                <hr class="inner-bar">

                                <textarea name="" id="" cols="57" rows="10" placeholder="자세한 내용을 적어주세요"></textarea>
                            </div>
                        
                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-secondary">완료</button>
                                <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
                            </div>
                        
                        </div>
                    </div>
                </div>
            </form>

            <div style="height: 20px;" align="right">
                <button type="button" onclick="location.href='enrollForm.fd'">글쓰기</button>
            </div>

            <div class="inner-bar" id="feedPage" style="padding: 5px;">
                <div class="inner-bar-small">
                    <img src="http://k.kakaocdn.net/dn/bg1bQs/btrN4Orw1rt/ywz81BDR7UcSZ319qKlLQ1/img_640x640.jpg" alt="강서구청-페이스북" style="width: 2.7em;"> 
                    <b>차카이브</b>
                    <input type="text" style="width: 70px; text-align: center; border: none;" placeholder="1주일전" disabled>

                    <button style="border: none;" data-toggle="modal" data-target="#modify">
                        <img src="img/paper.png" alt="" style="width: 1.5em;">
                    </button>
                    
                    <button type="button" data-toggle="modal" data-target="#report" style="float: right; border: none;">
                        <img src="img/siren.png" alt="" style="width: 1.4em; height: 1.4em;" >
                        <img src="img/siren2.png" alt="" style="width: 1.4em; height: 1.4em;">
                    </button>
                   
                </div>

                <hr class="inner-bar">

                <div class="inner-bar-small">
                    <b>속초는 아직 벚꽃엔딩 중🌸</b>
                </div> <br>
                <div class="feed-content inner-bar-small">
                    <p>
                        남쪽나라는 이제 겹벚꽃, 등나무 이야기가 나오고 있지만 우리 북쪽나라 속초는 이제야 벚꽃엔딩을 맞았어요 🌸 🍃 <br>

                        속초 영랑호에는 아직 부분부분 살아있는 벚꽃이 있으니, 이번 주말 마지막 벚꽃여행 하시는 분은 참고하세요! <br>
    
                        📹 23. 4. 6.(목) 18시 이후 촬영 <br>
                        📍 영랑호수공원, 해병대전우회 부근 <br>
                        <img src="https://s3-image.yeomi.travel/71b361ed-6df3-4617-b71f-a8cb7b537ba9.jpeg?w=1120&q=80" alt="" style="width: 100%; height: 100%;">
                    </p>
                </div>

                <div class="inner-bar-small">
                    <a href="#">#영랑호</a>
                    <a href="#">#벚꽃</a>
                </div>

                <hr class="inner-bar">

                <div class="inner-bar-small"> &nbsp;
                    <img src="img/thumb-up.png" alt="thumb-up" style="width: 1.2em; height:1.2em;">
                    <b>16</b>
                </div>

                <hr class="inner-bar">

                <div class="inner-bar-small" align="center">
                    <button type="button" class="btn-feed-three" style="background-color: transparent; border: none;">좋아요</button> |
                    <button type="button" class="btn-feed-three" style="background-color: transparent; border: none;" onclick="viewReply();">댓글쓰기</button> |
                    <button type="button" class="btn-feed-three" style="background-color: transparent; border: none;">공유하기</button>
                </div>

                <hr class="inner-bar">

                <div class="inner-bar-small" style="display: none;" id="reply-input"> &nbsp;
                    <form action="#">
                        <img src="img/user.png" alt="loginUser-img" style="width: 1.8em;">
                        <input type="text" placeholder="댓글을 입력하세요" style="border-radius: 5px;">

                        <div class="inner-bar-small" align="center" style="margin-top: 10px;">
                            <button type="submit" class="btn-primary" style="width: 10em;" >완료</button>
                        </div>
                    </form>
                </div>

                <div class="inner-bar-small" style="background-color: white; box-sizing: border-box; margin-bottom: 0px;">
                    <div style="box-sizing: border-box; ">
                        <img src="img/user.png" alt="reply-user" style=" width: 1.6em; display: inline;">
                        <p style="display: inline;">1시간 전</p>
                    </div>
                    <div style="display: inline-block;">
                        <p style="margin-bottom: 5px;">유저닉네임1</p>
                        <p style="margin-bottom: 0px;">첫번째 댓글 달아보고 지나가고 또 봅니다.</p>
                    </div>
                </div>

                <div class="inner-bar-small" style="background-color: white; box-sizing: border-box; margin-bottom: 0px;">
                    <div style="box-sizing: border-box; ">
                        <img src="img/user.png" alt="reply-user" style=" width: 1.6em; display: inline;">
                        <p style="display: inline;">1시간 전</p>
                    </div>
                    <div style="display: inline-block;">
                        <p style="margin-bottom: 5px;">유저닉네임2</p>
                        <p style="margin-bottom: 0px;">두번째 댓글 달아보고 지나가고 또 봅니다.</p>
                    </div>
                </div>
            </div>

            <script>
                function viewReply(){
                    let btn1 = document.getElementById('reply-input');

                    if(btn1.style.display !== 'none'){
                        btn1.style.display = 'none';
                    } else {
                        btn1.style.display = 'block';
                    }
                }
            </script>

            <div class="inner-bar" id="feedPage">
                <div class="inner-bar-small">
                    <img src="https://scontent-ssn1-1.xx.fbcdn.net/v/t39.30808-6/271049706_283720490453218_8148504195384117005_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=tygWrYFwxQMAX-hgaH4&_nc_ht=scontent-ssn1-1.xx&oh=00_AfATle1h24zaNY9Uqr9AxXO8g7cW_uSHHBkJ4dRBCVknvA&oe=6435A1C8" alt="강서구청-페이스북" style="width: 1.5em;height: 1.5em;"> 
                    <b>서울 강서구청</b>
                    <button type="button" style="float: right; border: none;">
                        <img src="img/three-dot.png" alt="" style="width: 1em; height: 1em;">
                    </button>

                    <hr class="inner-bar">
                </div>
             
                <div class="inner-bar-small">
                    방화2동 주민센터가 신청사에서 업무를 시작합니다.
                </div> <br>
                <div class="feed-content inner-bar-small">
                    <p>
                    5호선 개화산역 1번출구 인근 <br>
                    개화동로21길 52 로 이전 예정인 <br>
                    방화2동 주민센터는 <br>
                    작은도서관, 민원실, 체력단련실 등 <br>
                    다양한 서비스를 제공할 예정입니다~! <br>
                    </p>
                    <img src="https://scontent-ssn1-1.xx.fbcdn.net/v/t39.30808-6/339963247_1195460577841489_8810075331266977712_n.jpg?stp=dst-jpg_p526x296&_nc_cat=104&ccb=1-7&_nc_sid=730e14&_nc_ohc=QSd5sI0if1IAX8qLcWI&_nc_ht=scontent-ssn1-1.xx&oh=00_AfBSjMYlpIgQPnzF6zi2enHgM1ClXiOnEPkRt3gF0AkKNw&oe=64364C29" alt="img1">
                </div>

                <div class="inner-bar-small">
                    <a href="#">#강서구</a>
                    <a href="#">#강서구청</a>
                    <a href="#">#방화2동주민센터</a>
                    <a href="#">#방화2동</a>
                    <a href="#">#주민센터</a>
                </div>
                
                <hr class="inner-bar">

                <div class="inner-bar-small"> &nbsp;
                    <img src="img/thumb-up.png" alt="thumb-up" style="width: 1.2em; height:1.2em;">
                    <b>16</b>
                </div>

                <hr class="inner-bar">

                <div class="inner-bar-small" align="center">
                    <button type="button" class="btn-feed-three" style="background-color: transparent; border: none;">좋아요</button> |
                    <button type="button" class="btn-feed-three" style="background-color: transparent; border: none;">댓글달기</button> |
                    <button type="button" class="btn-feed-three" style="background-color: transparent; border: none;">공유하기</button>
                </div>

                <hr class="inner-bar">

                <div class="inner-bar-small"> &nbsp;
                    <img src="img/user.png" alt="loginUser-img" style="width: 1.8em;">
                    <input type="text" placeholder="댓글을 입력하세요" style="border-radius: 5px;">

                    <div class="inner-bar-small" align="center" style="margin-top: 10px;">
                        <button type="submit" class="btn-primary" style="width: 10em;" >완료</button>
                    </div>
                </div>
            </div>

            <br>
            
        </div>
        <div id="right-main">
            <div align="center">
                <img src="../common/LOGO.png" alt="image" style="width: 10em;">
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
        <div id="footer">
            1234
        </div>
    </div>

    
	
</body>
</html>