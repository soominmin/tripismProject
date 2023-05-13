<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피드 작성</title>

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
        
        #wrap{ height: 1000px;  position: relative; margin-left: 5%}
        /* #header{ height: 10% ; box-sizing: border-box; } */
        /* #left-main{ width: 10%; height: 90% !important; box-sizing: border-box; float: left !important; min-width: 120px; } */
        #middle-main{ width: 65%; height: 90% !important; box-sizing: border-box; float: left !important; min-width: 300px; overflow: scroll; display: block; margin: auto 15% !important; padding: 0 2.5%; }
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
			
			.thumbnail {
				height: 100px;
				margin: 10px
			}
			
    </style>

</head>
<body>

    <!-- header -->
    <jsp:include page="../common/header.jsp"></jsp:include>

	<!--  -->
    <div id="wrap">

        <br><br>
        

        <div id="middle-main" align="center">&nbsp;

            <!-- 글쓰기용  -->
            <form action="insert.fd" method="post" enctype="multipart/form-data"> <!--  파일 그 자체를 넘기려면 enctype이 필요 -->
                <div>
                    <div>
                        <div>
                			
                            <!-- Enroll Header -->
                            <input type='hidden' name='memNo' value='${ loginUser.memNo }'>
                            <div>
                                <h4>피드작성</h4> <br>
                            </div>
                
                            <!-- Enroll body -->
                            <div>
                                <input type="text" name="feedTitle" placeholder="ex) 아침고요수목원에 다녀왔어요" maxlength="100" required>
                            </div>

                            <br>
                            <hr class="inner-bar">
                            <br>

                            <div class="WriteWebSectionstyle__HorizontalLine-sc-ixmlq3-1 cGslsG"></div>

                            <div>
								<textarea class="WriteWebSectionstyle__WriteTextarea-sc-ixmlq3-3 IUMRx desc" name="feedContents" id="desc" placeholder="
								1. 작성할 내용을 생각해보세요 
								ex) 가족과 함께 오랜만에 나들이를 다녀왔습니다. 
								
								2. 사진을 넣을지 동영상을 넣을지 생각해보세요
								ex) 꽃사진 1, 2, 3 / 동영상.mp4
								
								3. 다른 사람들에게 다녀온 여행지를 추천해보세요
								ex) 가족과 함께~ , 부모님과 함께~, 우리 아이 체험학습장소로~
								
								(1000자 이내) " style="height: 400px; resize: none ;" required></textarea>
                            </div>
                        </div>
                        
						<br>

                        <div align="left">
                            <table>
                                <thead>
                                   
                                </thead>
                                <tbody id="fileHere">
                                    <tr>
                                        <input type="file" class="files" name="upFile1" accept="image/*"> <!-- 2번 -->
                                        <input type="file" class="files" name="upFile2" accept="image/*"> <br>
                                        <input type="file" class="files" name="upFile3" accept="image/*"> 
                                        <input type="file" class="files" name="upFile4" accept="image/*"> 
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div align="left">
							<div style="width: 672.4px; height: 400px; border: 1px dotted gray; overflow: auto">	
								<div id="result"></div>
							</div>
						</div>

                        <!-- Enroll footer -->
                        <div class="button__ButtonAreaDiv-sc-1szjplo-6 bGwIdM" style="margin-top: 7px;">
                            <button type="button"
                                class="button__ButtonConfirmButton-sc-1szjplo-7 hlWCvk"
                                style="width: calc(50% - 8px);"
                                onclick="location.href='feed.fd'">취소</button>
                            <button type="submit"
                                class="button__ButtonConfirmButton-sc-1szjplo-7 dcFMHq"
                                style="width: calc(50% - 8px);">작성완료</button>
                        </div>
                        
                        
                    </div>
                </div>
            </form>
            

            <script>
					function handleFileSelect() { // 2번 시도
					    //Check File API support
					    if (window.File && window.FileList && window.FileReader) {

					        var files = event.target.files; //FileList object
					        var output = document.getElementById("result");

					        for (var i = 0; i < files.length; i++) {
					            var file = files[i];
					            //Only pics
					            if (!file.type.match('image')) continue;

					            var picReader = new FileReader();
					            picReader.addEventListener("load", function (event) {
					                var picFile = event.target;
					                var div = document.createElement("div");
					                div.innerHTML = "<img class='thumbnail' src='" + picFile.result + "'" + "title='" + picFile.name + "'/>";
					                output.insertBefore(div, null);
					            });
					            //Read the image
					            picReader.readAsDataURL(file);
					        }
					    } else {
					        console.log("Your browser does not support File API");
					    }
					}
	
					let img = document.getElementsByClassName('files')
			        for(var i = 0; i<img.length; i++){
			            img[i].addEventListener('change', handleFileSelect, false)
			        }
            </script>

        </div>

    </div>

    <!-- footer -->
    <jsp:include page="../common/footer.jsp"></jsp:include>
    

</body>
</html>