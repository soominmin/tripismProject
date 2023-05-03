<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tripism Feed</title>

    <style>
        /* div{ border: 1px solid gray; } */
        
        #wrap{ height: 1200px;  position: relative; margin-left: 5%;}
        /* #header{ height: 10% ; box-sizing: border-box; } */
        #left-main{ width: 25%; height: 100% !important; box-sizing: border-box; float: left; min-width: 120px; }
        #middle-main{ width: 65%; height: 100% !important; box-sizing: border-box; float: left; min-width: 300px; overflow: scroll; margin: 0 2.5%; padding: 0 2%; border-left: 1px solid rgb(112, 217, 223);}
        /* #right-main{ width: 17.5%; height: 100% !important; box-sizing: border-box; float: left; min-width: 180px;} */
        /* #footer{ height: 10%; display: block; position: absolute; bottom: 0px !important;} */
        .inner-bar{ margin: 10px 15px; }
        .inner-bar-small{ margin: 10px 5px; }
        
        /* #feedPage{ background-color: whitesmoke; } */
        .btn-feed-three{ width: 120px; }
        .feed-content>img{ display: block; margin: auto; } 
        #shareButtons button{
            margin: 5px 8px;
        }
        #shareButtons div{
            display: inline-block;
            margin: 0px 30px;
        }

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

        textarea {
            overflow: auto;
            position: relative;
            resize: none;
            display: block;
            width: 100%;
            padding: 16px 20px;
            box-sizing: border-box;
            border: 1px solid #e9e9e9;
            border-radius: 4px;
            font-family: inherit;
            font-size: 100%;
            line-height: 2.0;
            margin: 0;
        }
        textarea:focus {
            outline-color: rgb(112, 217, 223);
            outline-width: 1px;
        }
        textarea::placeholder {
            color: #919191;
            font-weight: 500;
        }
        input::placeholder {
            color: #919191;
            font-weight: 500;
        }

        .bBc{
            width: 80px;
            line-height: 20px;
            border-radius: 4px;
            padding: 17px 5px;
            background-color: rgb(112, 217, 223);
            font-size: 14px;
            color: rgb(255, 255, 255);
            box-sizing: border-box;
            outline: auto;
        }
    </style>

</head>
<body>
    <!-- header -->
    <jsp:include page="../common/header.jsp"/>

    <br><br>
    
    <div id="wrap">
        

        <!-- feedPage- -->
        <div id="left-main"> &nbsp;

            <div align="center">
                <img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="image" style="width: 10em;">
            </div>
            <!--<hr class="inner-bar">
             <div class="inner-bar">
                <b>#태그</b> <br>
                <a href="#">#봄</a>
                <a href="#">#여름</a>
                <a href="#">#가을</a>
                <a href="#">#겨울</a>    
            </div> -->

            

            <div style="height: 50px;" align="center">
                <button type="button" class="bBc" style="width: 80%; font-size: large;" onclick="location.href='enrollForm.fd'">글쓰기</button>
            </div> 

            <br>

            <hr class="inner-bar">

            <div class="inner-bar" align="center" style="padding:10% 0%;">
            
            <form action="search.fd">
                <div>
                    <input type="text" name="keyword" value="" placeholder="검색 내용을 입력해주세요" style=" border: 0.5px solid gray; height: 2.5em; width: 100%; border-radius: 10px; text-align: center;"> <br><br>
                    <button type="submit" class="bBc">검색</button>
                </div>
            </form>

            <br>

            <hr class="inner-bar">
            
            <br>

            <button type="button" style="background-color: transparent; border: none;" onclick="location.href='feed.fd'"><img src="${pageContext.request.contextPath}/resources/img/feed/home.png" alt="home" style="width: 2.4em;">
                <p>전체보기</p>
            </button>

            <br>
            <!-- 
            <button style="background-color: transparent; border: none;"><img src="${pageContext.request.contextPath}/resources/img/feed/hot.png" alt="hot" style="width: 2em;">
                <p>실시간</p>
            </button>
             -->
            <br>

            <br>

            <button type="button" style="background-color: transparent; border: none;"><img src="${pageContext.request.contextPath}/resources/img/feed/camera.png" alt="img" style="width: 2.4em;">
                <p>이미지</p>
            </button>
            
            <br>

            <button type="button" style="background-color: transparent; border: none;"><img src="${pageContext.request.contextPath}/resources/img/feed/video.png" alt="video" style="width: 2.4em;">
                <p>동영상</p>
            </button>

            </div>            
        </div>

        <div id="middle-main">&nbsp;

            <!-- 신고용 modal -->
            <form action="#">
                <div class="modal" id="report" >
                    <div class="modal-dialog">
                        <div class="modal-content">
                
                            <!-- Modal Header -->
                            <div class="modal-header" align="center">
                                <h4 class="modal-title">신고하기</h4>
                            </div>
                
                            <!-- Modal body -->
                            <div class="modal-body" >
                                <b>선택해주세요</b> <br>
                                <select name="condition" id="condition">
                                    <option value="ad">광고</option>
                                    <option value="19">성적인 콘텐츠</option>
                                    <option value="error">잘못된 정보</option>
                                    <option value="hatred">혐오감 유발</option>
                                </select>
                                
                            <hr class="inner-bar">

                                <textarea name="" id=""  placeholder="자세한 내용을 적어주세요" align="center"></textarea>
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

            <!-- 공유용 modal -->
            <form action="#"> <!-- 쓸일없는 form일지도.. -->
                <div class="modal" id="share">
                    <div class="modal-dialog">
                        <div class="modal-content">
                
                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">공유하기</h4>
                            </div>
                
                            <!-- Modal body -->
                            <div class="modal-body" id="shareButtons">
                                <div align="center">
                                    <button style="border: none;">
                                        <img src="${pageContext.request.contextPath}/resources/img/feed/twitterLogo.png" alt="twitter" onclick=shareTwitter(); style="height: 75px;">
                                    </button>
                                    <p>트위터</p>
                                </div>

                                <div align="center">
                                    <button style="border: none; border-radius: 15px;">
                                        <img src="${pageContext.request.contextPath}/resources/img/feed/facebookLogo.png" alt="facebook" onclick=shareFacebook(); style="height: 75px;">
                                    </button>
                                    <p>페이스북</p>
                                </div>

                                <div align="center">
                                    <button style="border: none;">
                                        <img src="https://developers.kakao.com/assets/img/about/logos/kakaotalksharing/kakaotalk_sharing_btn_medium.png" onclick=shareKakao();  alt="카카오톡 공유 보내기 버튼" style="height: 75px;">
                                    </button>
                                    <p>카카오톡</p>
                                </div>

                                <div style="margin-top: 30px;">
                                    <span onclick="copyTheURL(this)">
                                        <input type="text" value="여기에 피드주소 넣으려함" style="text-align: center; width: 300px;" readonly>
                                    </span> &lt; 클릭 시 복사
                                </div>
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

            
            
			<!-- 무한스크롤 시작할 자리 -->
            <div class="inner-bar" id="feedPage" style="padding: 5px;">
                <div class="inner-bar-small">
                    <img src="http://k.kakaocdn.net/dn/bg1bQs/btrN4Orw1rt/ywz81BDR7UcSZ319qKlLQ1/img_640x640.jpg" alt="닉네임" style="width: 2.7em;"> 
                    <b style="margin-left: 13px ;">차카이브</b>
                    <input type="text" style="width: 70px; text-align: center; border: none;" placeholder="1주일전" disabled>

                    <button type="button" style="border: none;" onclick="location.href='updateForm.fd'">
                        <img src="${pageContext.request.contextPath}/resources/img/feed/paper.png" alt="" style="width: 1.5em; margin: 8px 0px;">
                    </button>
                    
                    <button type="button" data-toggle="modal" data-target="#report" style="float: right; margin-top: 5px; ">

                        신고하기

                        <!-- <img src="${pageContext.request.contextPath}/resources/img/feed/siren.png" alt="" style="width: 1.4em; height: 1.4em;" >
                        <img src="${pageContext.request.contextPath}/resources/img/feed/siren2.png" alt="" style="width: 1.4em; height: 1.4em;"> -->
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
                    <img src="${pageContext.request.contextPath}/resources/img/feed/thumb-up.png" alt="thumb-up" style="width: 1.2em; height:1.2em;">
                    <b>16</b>
                </div>

                <hr class="inner-bar">

                <div class="inner-bar-small" align="center">
                    <button type="button" class="btn-feed-three" style="background-color: transparent; border: none;" onclick="likeChange();">좋아요</button> |
                    <button type="button" class="btn-feed-three" style="background-color: transparent; border: none;" onclick="viewReply();">댓글쓰기</button> |
                    <button type="button" data-toggle="modal" data-target="#share" class="btn-feed-three" style="background-color: transparent; border: none;" >공유하기</button>
                </div>

                <hr class="inner-bar">

			    <!-- 댓글 작성 시작 -->
                <div class="inner-bar-small" style="display: none;" id="reply-input"> &nbsp;
                    <form action="#">
                        <img src="${pageContext.request.contextPath}/resources/img/feed/user.png" alt="loginUser-img" style="width: 2em;"> &nbsp;
                        <input type="text" placeholder="댓글을 입력하세요" style="border-radius: 5px; width: 20em;">

                        <div class="inner-bar-small" align="center" style="margin-top: 10px;">
                            <button type="submit" class="bBc" style="width: 10em;">완료</button>
                        </div>
                    </form>
                </div>
                <!-- 댓글 작성 종료 -->
                
                <div>
                    <div class="inner-bar-small" style="float: left; box-sizing: border-box; margin-bottom: 0px;">
                        <div style="box-sizing: border-box; ">
                            <img src="${pageContext.request.contextPath}/resources/img/feed/user.png" alt="reply-user" style=" width: 1.6em; display: inline;">
                        </div>
                    </div>
                    <div style="display: inline-block; background-color: #ebebeb; margin-left: 10px; border-radius: 9px; padding: 5px 10px;">
                        <span style="display: inline;">1시간 전</span> <br>
                        <b style="margin-bottom: 5px;">유저닉네임1</b>
                        <p style="margin-bottom: 0px;">첫번째 댓글 달아보고 지나가고 또 봅니다.</p>
                    </div>
                </div>

                <br>

                <div>
                    <div class="inner-bar-small" style="float: left; box-sizing: border-box; margin-bottom: 0px;">
                        <div style="box-sizing: border-box; ">
                            <img src="${pageContext.request.contextPath}/resources/img/feed/user.png" alt="reply-user" style=" width: 1.6em; display: inline;">
                        </div>
                    </div>
                    <div style="display: inline-block; background-color: #ebebeb; margin-left: 10px; border-radius: 9px; padding: 5px 10px;">
                        <span style="display: inline;">30분 전</span> <br>
                        <b style="margin-bottom: 5px;">유저닉네임2</b>
                        <p style="margin-bottom: 0px;">우리 동네에서 하는 축제는 가고 싶어요~</p>
                    </div>
                </div>
            </div>
			<!-- 무한스크롤 끝낼 자리 -->
            
            <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

            <script>
                function viewReply(){
                    let btn1 = document.getElementById('reply-input');
                    if(btn1.style.display !== 'none'){
                        btn1.style.display = 'none';
                    } else {
                        btn1.style.display = 'block';
                    }
                }
                function shareTwitter() {
                    let sendText = "tripism 새소식 보러오세요";
                    let sendLink = "http://localhost:8007/tripism/feed/"
                    window.open("https://twitter.com/intent/tweet?text=" + sendText + "&url=" + sendLink);
                    console.log("트위터 이동됨")
                }
                function shareFacebook() {
                    let sendUrl = "http://localhost:8007/tripism/feed/";
                    // window.open("http://www.facebook.com/sharer/sharer.php?href=" + sendUrl); 기존 것
                    window.open('http://www.facebook.com/sharer.php?href=http://localhost:8007/tripism/feed.fd')
                    console.log("페이스북 이동됨")
                }

                function copyTheURL(ths) {

                    var ths = $(ths);

                    var obj = ths.children("input");

                    obj.select();

                    document.execCommand("copy");

                    }

                
            </script>

            <script src="https://t1.kakaocdn.net/kakao_js_sdk/2.1.0/kakao.min.js"
            integrity="sha384-dpu02ieKC6NUeKFoGMOKz6102CLEWi9+5RQjWSV0ikYSFFd8M3Wp2reIcquJOemx" crossorigin="anonymous"></script>
            <script>
            Kakao.init('4720b0d82591f066ae5570742f3e4a9c'); // 사용하려는 앱의 JavaScript 키 입력
            </script>

            <script>
            function shareKakao() {
            Kakao.Share.sendDefault({
                objectType: 'feed',
                content: {
                title: '딸기 치즈 케익',
                description: '#케익 #딸기 #삼평동 #카페 #분위기 #소개팅',
                imageUrl:
                    '${pageContext.request.contextPath}/resources/img/logo.png',
                link: {
                    // [내 애플리케이션] > [플랫폼] 에서 등록한 사이트 도메인과 일치해야 함
                    mobileWebUrl: 'https://developers.kakao.com',
                    webUrl: 'https://developers.kakao.com',
                },
                },
                social: {
                likeCount: 286,
                commentCount: 45,
                sharedCount: 845,
                },
                buttons: [
                {
                    title: '웹으로 보기',
                    link: {
                    mobileWebUrl: 'https://developers.kakao.com',
                    webUrl: 'https://developers.kakao.com',
                    },
                },
                {
                    title: '앱으로 보기',
                    link: {
                    mobileWebUrl: 'https://developers.kakao.com',
                    webUrl: 'https://developers.kakao.com',
                    },
                },
                ],
            });
            }
            </script>

            <br>
            
        </div>
        <!-- <div id="right-main">
            

        </div> -->

    </div>
    <!-- footer -->
    <jsp:include page="../common/footer.jsp"/>

</body>
</html>