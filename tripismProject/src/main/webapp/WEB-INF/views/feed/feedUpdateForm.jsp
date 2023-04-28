<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피드 수정</title>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <!-- jQuery UI 불러오기 -->
        <script src="https://cdn.jsdelivr.net/npm/datepicker-i18n/dist/umd/i18n.min.js"></script>

		<!-- jQuery 라이브러리 -->
		<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
		<!-- jQuery 라이브러리 -->
		<!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->
		
		<!-- jQuery UI 라이브러리 -->
		<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/smoothness/jquery-ui.css">
		<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.min.js"></script>

    <style>
        /* div{ border: 1px solid gray; } */
        
        #wrap{ height: 1000px;  position: relative;}
        /* #header{ height: 10% ; box-sizing: border-box; } */
        /* #left-main{ width: 10%; height: 90% !important; box-sizing: border-box; float: left !important; min-width: 120px; } */
        #middle-main{ width: 70%; height: 90% !important; box-sizing: border-box; float: left !important; min-width: 300px; overflow: scroll; display: block; margin: auto 15% !important; padding: 0 2.5%; }
        /* #right-main{ width: 10%; height: 90% !important; box-sizing: border-box; float: left !important; min-width: 180px;} */
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

            .WriteSelectionModal__StyledModalWrap-sc-1cknulk-0.kxfRvG{
			  display: none;
			}
			 html {
				line-height: 1.15;
				text-size-adjust: 100%;
			}
			section {
				margin: 0;
				padding: 0;
				border: 0;
				font-style: normal;
				display: block;
			}
			
			main {
				display: block;
			}
			div {
				margin: 0;
				padding: 0;
				border: 0;
				font-style: normal;
			}
			div > p {
				margin-top: 0;
				margin-bottom: 0;
			}
			body {
				font-weight: 400;
				font-size: 14px;
			}
			button {
				font-family: inherit;
				line-height: 1.15;
				margin: 0;
				overflow: visible;
				text-transform: none;
				cursor: pointer;
				outline: none;
				vertical-align: top;
				background: unset;
				border: 0;
				padding: 0;
				
			}
			div {
				margin: 0;
				padding: 0;
				border: 0;
				font-style: normal;
			}
			p {
				margin: 0;
				padding: 0;
				border: 0;
				margin-inline-start: 0;
				margin-inline-end: 0;
			}
			
			/*본문내용*/
			.fIxQSV > :nth-child(n+2) {
				margin-top: 65px;
			}
			
			/*제목*/
			.gegbdD > :nth-child(n) {
				margin-top: 26px;
			}
			input[type="text"] {
				display: inline-block;
				width: 100%;
				font-size: 17px;
				line-height: 20px;
				padding: 16px 20px;
				background: #fff;
				border: 1px solid #e9e9e9;
				border-radius: 4px;
				box-sizing: border-box;
				vertical-align: top;
			}
			
			.cGslsG {
				border-top: 1px solid rgb(233, 233, 233);
			}
			/*동행 내용*/
			.gegbdD > :nth-child(n) {
				margin-top: 26px;
			}
			.gegbdD textarea {
				min-height: 400px;
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
			/*버튼선택*/
			.bGwIdM {
				display: flex;
				-webkit-box-pack: justify;
				justify-content: space-between;
				padding: 65px 0 70px;
			}
			/*취소*/
			.hlWCvk {
				position: relative;
				line-height: 20px;
				border-radius: 4px;
				padding: 17px 5px;
				background-color: rgb(219, 219, 219);
				font-size: 14px;
				color: rgb(255, 255, 255);
				box-sizing: border-box;
				outline: auto;
			}
			.dcFMHq {
				position: relative;
				line-height: 20px;
				border-radius: 4px;
				padding: 17px 5px;
				background-color: rgb(112, 217, 223);
				font-size: 14px;
				color: rgb(255, 255, 255);
				box-sizing: border-box;
				outline: auto;
			}
			
			/*버튼*/
			.jUFPpk {
				width: 100%;
				box-sizing: border-box;
				padding: 0px 22px;
				margin: 60px 0px 24px;
				display: flex;
				-webkit-box-pack: justify;
				justify-content: space-between;
			}
			/*뒤로가기*/
			.hpRpYH {
				width: 244px;
				color: rgb(255, 255, 255);
				height: 68px;
				background: rgb(219, 219, 219);
				border-radius: 50px;
				cursor: pointer;
				font-size: 16px;
			}
			/*작성완료*/
			.hbQEgR {
				width: 244px;
				color: rgb(255, 255, 255);
				height: 68px;
				background: linear-gradient(90deg, rgb(112, 217, 223) 0%, rgb(88, 210, 216) 100%);
				border-radius: 50px;
				cursor: pointer;
				font-size: 16px;
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
        <!-- <div id="left-main"> &nbsp;

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


                
                더 적어보자
            </div>            
        </div> -->

        <div id="middle-main" align="center">&nbsp;

            <!-- 글쓰기용 modal -->
            <form action="#">
                <div>
                    <div>
                        <div>
                
                            <!-- Enroll Header -->
                            <div>
                                <h4>피드수정</h4> <br>
                            </div>
                
                            <!-- Enroll body -->
                            <div>
                                <input type="text" name="title" placeholder="ex) 속초는 아직 벚꽃엔딩 중🌸" maxlength="100" value="">
                            </div>

                            <br>
                            <hr class="inner-bar">
                            <br>

                            <div class="WriteWebSectionstyle__HorizontalLine-sc-ixmlq3-1 cGslsG"></div>

                            <div>
                            <textarea class="WriteWebSectionstyle__WriteTextarea-sc-ixmlq3-3 IUMRx desc" name="content" id="desc" placeholder="
                            남쪽나라는 이제 겹벚꽃, 등나무 이야기가 나오고 있지만 우리 북쪽나라 속초는 이제야 벚꽃엔딩을 맞았어요 🌸 🍃
                            속초 영랑호에는 아직 부분부분 살아있는 벚꽃이 있으니, 이번 주말 마지막 벚꽃여행 하시는 분은 참고하세요!
                            📹 23. 4. 6.(목) 18시 이후 촬영
                            📍 영랑호수공원, 해병대전우회 부근
                             " style="height: 400px;"></textarea>
                            </div>
                        </div>
                        
                        <div align="left">
                            <table>
                                <thead>
                                    <th>
                                        첨부 &nbsp; <button class="addFile">(더하기+)</button> &nbsp; <button class="deleteFile">(빼기-)</button>
                                    </th> 
                                </thead>
                                <tbody id="fileHere">
                                    <tr>
                                        <td><input type="file"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        
                        <!-- Enroll footer -->
                        <div class="button__ButtonAreaDiv-sc-1szjplo-6 bGwIdM" style="margin-top: 7px;">
                            <button
                                class="button__ButtonConfirmButton-sc-1szjplo-7 hlWCvk"
                                style="width: calc(50% - 8px);"
                                onclick="location.href='feed.fd'">취소</button>
                            <button
                                class="button__ButtonConfirmButton-sc-1szjplo-7 dcFMHq"
                                style="width: calc(50% - 8px);">작성완료</button>
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
        <!-- <div id="right-main">
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

        </div> -->

    </div>

    <!-- footer -->
    <jsp:include page="../common/footer.jsp"></jsp:include>
    

</body>
</html>