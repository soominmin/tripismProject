<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tripism Feed</title>

    <style>
        /* div{ border: 1px solid gray; } */
        
        #wrap{ height: 1200px;  position: relative; margin-left: 15%;}
        /* #header{ height: 10% ; box-sizing: border-box; } */
        #left-main{ width: 20%; height: 100% !important; box-sizing: border-box; float: left; min-width: 120px; padding: 0 2%; }
        #middle-main{ width: 50%; height: 100% !important; box-sizing: border-box; float: left; min-width: 300px; overflow: scroll; margin: 0 2.5%; padding: 0 2%; border-left: 1px solid rgb(112, 217, 223);}
        /* #right-main{ width: 17.5%; height: 100% !important; box-sizing: border-box; float: left; min-width: 180px;} */
        /* #footer{ height: 10%; display: block; position: absolute; bottom: 0px !important;} */
        .inner-bar{ margin: 10px 15px; }
        .inner-bar-small{ margin: 10px 5px; }
        
        .feedPage{ border: 1px solid whitesmoke; }
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
            font-weight: 400;
            font-size: 13px;
            padding-left: 10px
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
        
        .LrN{ padding: 0px 20px; margin-bottom: 20px }
        
        .font-bold{ 
        	font-weight: 700;
        	font-size: 18px;
        	line-height: 26px;
        	color: black;
        }
        
        .non-click{ background-color: none;}
        .click{ background-color: rgb(112, 217, 223);}
        
        .non-click:hover{
        	background-color: rgb(112, 217, 223);
        }
        
        .img-wrap{}
        .img-wrap>img{
        	display: inline-block;
        	
        	box-sizing: border-box;
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
            <div class="inner-bar" align="center" style="padding:10% 0%; display: inline-block; margin-top: 50%"  >
            
            <form action="search.fd">
            
            	<span style="position: absolute; left:70px; top: 183px; z-index: 999;">
                <svg
                    width="12px"
                    height="12px"
                    viewBox="0 0 20 20"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                    style="display: inline-block;">
                    <path
                        fill-rule="evenodd"
                        clip-rule="evenodd"
                        d="M8.49933 1.5C7.11505 1.5 5.76184 1.91062 4.61081 2.67998C3.45978 3.44933 2.56262 4.54287 2.03283 5.82234C1.50304 7.10181 1.36441 8.50971 1.6345 9.86801C1.90459 11.2263 2.57126 12.4739 3.55015 13.4532C4.52904 14.4324 5.77619 15.0992 7.13388 15.3694C8.49157 15.6395 9.89885 15.5009 11.1778 14.9709C12.4567 14.441 13.5499 13.5436 14.319 12.3921C15.0881 11.2406 15.4987 9.88686 15.4987 8.50195C15.4987 6.64483 14.7612 4.86383 13.4485 3.55073C12.1359 2.23764 10.3556 1.5 8.49933 1.5ZM3.77726 1.4329C5.17498 0.498663 6.81827 0 8.49933 0C10.7536 0 12.9154 0.8958 14.5094 2.49025C16.1033 4.0847 16.9987 6.24717 16.9987 8.50195C16.9987 10.1834 16.5002 11.8271 15.5663 13.2253C14.6324 14.6234 13.305 15.7132 11.752 16.3567C10.1989 17.0002 8.48991 17.1686 6.84115 16.8405C5.19239 16.5125 3.67795 15.7027 2.48931 14.5136C1.30068 13.3246 0.491236 11.8097 0.163307 10.1605C-0.164622 8.51138 0.00368071 6.80197 0.646943 5.24848C1.29021 3.69498 2.37955 2.36714 3.77726 1.4329Z"
                        fill="#9A9A9A"></path>
                    <path
                        fill-rule="evenodd"
                        clip-rule="evenodd"
                        d="M13.5933 13.5882C13.9839 13.1977 14.6171 13.1978 15.0075 13.5884L19.4572 18.0396C19.8477 18.4302 19.8476 19.0634 19.457 19.4538C19.0664 19.8443 18.4332 19.8442 18.0428 19.4536L13.5931 15.0024C13.2026 14.6118 13.2027 13.9786 13.5933 13.5882Z"
                        fill="#9A9A9A"></path>
                </svg>
            </span>
            
                <div>
                    <input type="text" name="keyword" value="" placeholder="검색 내용을 입력해주세요" style=" border: 0.5px solid gray; height: 2.5em; width: 100%; border-radius: 10px; text-align: center; position: relative;"> <br><br>
                    <button type="submit" class="bBc">검색</button>
                </div>
            </form>

            <br>

            <hr class="inner-bar">
            
            <br>

            <button type="button" class="non-click" style=" background-color: rgb(112, 217, 223); border: none; border-radius: 25% 10%" onclick="location.href='feed.fd'">
            	<img src="${pageContext.request.contextPath}/resources/img/feed/home2.png" alt="home" style="width: 2.4em;">
                <p style="margin-top: 10px">전체보기</p>
            </button>

            <br>

            <button type="button" class="non-click" style="border: none; border-radius: 25% 10%"" onclick="location.href='feedImgAll.fd'"><img src="${pageContext.request.contextPath}/resources/img/feed/image.png" alt="img" style="width: 2.4em;">
                <p style="margin-top: 10px">이미지</p>
            </button>
            
            <br>
            
            <button type="button" class="non-click" style="border: none; border-radius: 25% 10%"" onclick="location.href='#'"><img src="${pageContext.request.contextPath}/resources/img/feed/alert.png" alt="img" style="width: 2.4em;">
                <p style="margin-top: 10px">알림</p>
            </button>
            
            <br>
            
            <button type="button" class="non-click" style="border: none;" onclick="location.href='enrollForm.fd'"><img src="${pageContext.request.contextPath}/resources/img/feed/plus.png" alt="img" style="width: 2.4em;">
            	<p style="margin-top: 10px">글쓰기</p>
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

                                <textarea name="" id=""  placeholder="자세한 내용을 적어주세요" align="center" style="resize: none"></textarea>
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
                                        <input type="text" value="여기에 피드주소 넣으려함" style="text-align: center; width: 280px;" readonly>
                                    </span> &nbsp; &lt;&lt; &nbsp; 클릭 시 복사
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

			<!-- 무한스크롤 시작할 자리 **구현해야함 --> 
			
			<c:set var="done_loop" value="false"/>
			
			<!-- 여기부터 반복문 시작 -->
			<c:forEach var="f" items="${feed}">
			
			<div class="inner-bar feedPage">
                <div class="inner-bar-small LrN">
                		
                    	<img src="${ f.memImg }" alt="회원이미지" style="width: 2.7em;"> 
                    
                    	
                    <b style="margin-left: 13px;" >${ f.memNickname }</b>
                    
                    <input type="text" style="width: 150px; text-align: center; border: none;" placeholder="${ f.feedDate }" disabled>

					<div style="float: right; margin-top: 5px;">
						<%-- <c:if test="${ not empty loginUser.memId and loginUser.memNo eq f.memNo }">
		                    <button type="button" style="border: none;" onclick="location.href='updateForm.fd'">
		                    	<span>수정하기</span>
		                    </button>
		                    <span>|</span>
	                    </c:if>  --%>
	                    
	                    <button type="button" style="border: none;" onclick="postFormSubmit(1);">
		                    	<span>t수정하기</span>
		                    </button>
		                    
		                    <span>|${f.feedNo}</span>
		                    
	                    <button type="button" data-toggle="modal" data-target="#report">
	                        <span>신고하기</span>
	                    </button>
                   </div>
                </div>
                
                <hr class="inner-bar ">
			
                <div class="inner-bar-small LrN ">
                    <p class="font-bold">${ f.feedTitle }</p>
                </div> 
                
                <br>
                
                <div class="feed-content inner-bar-small LrN">
                    <p style="color: black">
                        ${ f.feedContents }
                    </p>
                </div>
            	<div class="img-wrap">	 
                	<c:if test="${ not empty f.imgOriginalName1 }">
                		<img src="${ f.imgChangeName1 }" alt="첨부사진" style="width: 50%; height: 50%;">
	                </c:if>	
	                <c:if test="${ not empty f.imgOriginalName2 }">
                		<img src="${ f.imgChangeName2 }" alt="첨부사진" style="width: 50%; height: 50%;">
	                </c:if>	
	                <c:if test="${ not empty f.imgOriginalName3 }">
                		<img src="${ f.imgChangeName3 }" alt="첨부사진" style="width: 50%; height: 50%;">
	                </c:if>	
	                <c:if test="${ not empty f.imgOriginalName4 }">
                		<img src="${ f.imgChangeName4 }" alt="첨부사진" style="width: 50%; height: 50%;">
	                </c:if>	
				</div>
                <div class="inner-bar-small LrN">
                   <!--  <a href="#">#영랑호</a> 후순위
                    <a href="#">#벚꽃</a> -->
                </div>

                <hr class="inner-bar">

                <div class="inner-bar-small LrN"> &nbsp;
                    <img src="${pageContext.request.contextPath}/resources/img/feed/thumb-up.png" alt="thumb-up" style="width: 1.2em; height:1.2em;">
                    <b><%-- ${ 좋아요수를 가져올것 } --%>#</b>
                </div>

                <hr class="inner-bar">

                <div class="inner-bar-small LrN" align="center">
                    <button type="button" class="btn-feed-three" style="background-color: transparent; border: none;" onclick="likeChange();">좋아요</button> |
                    <button type="button" class="btn-feed-three" style="background-color: transparent; border: none;" onclick="viewReply();">댓글쓰기</button> |
                    <button type="button" data-toggle="modal" data-target="#share" class="btn-feed-three" style="background-color: transparent; border: none;" >공유하기</button>
                </div>

                <hr class="inner-bar">

			    <!-- 댓글 작성 시작 -->
                <div class="inner-bar-small LrN" id="reply-input"> &nbsp;
                	<c:choose>
                		<c:when test="${ empty loginUser }">
                			<form action="#">
	                       		<img src="${pageContext.request.contextPath}/resources/img/feed/user.png" alt="loginUser-img" style="width: 2em;"> &nbsp;
		                        <input type="text" placeholder="로그인한 사용자만 댓글작성 가능합니다." style="border-radius: 5px; width: 80%; padding: 5px" readonly>
		
		                        <div class="inner-bar-small" align="center" style="margin-top: 10px;">
		                            <button type="submit" class="bBc" style="width: 10em;" disabled>완료</button>
		                        </div>
		                    </form>
                		</c:when>
                		
                		<c:otherwise>
		                    <form action="#">
		                        <img src="${pageContext.request.contextPath}/resources/img/feed/user.png" alt="loginUser-img" style="width: 2em;"> &nbsp;
		                        <input type="text" id="replyContent" placeholder="댓글을 입력하세요" style="border-radius: 5px; width: 80%; padding-left: 10px">
		
		                        <div class="inner-bar-small" align="center" style="margin-top: 10px;">
		                            <button type="submit" class="bBc" style="width: 10em;" onclick="addReply();">완료</button>
		                        </div>
		                    </form>
                		</c:otherwise>
                	</c:choose>
                </div>
                <!-- 댓글 작성 종료 -->
                
                <div class="LrN" id="replyArea">
                   
                </div>
                
            </div>
			</c:forEach>
			<!-- 반복문 종료 -->
			
            <div class="inner-bar feedPage">
                <div class="inner-bar-small LrN">
                    <img src="http://k.kakaocdn.net/dn/bg1bQs/btrN4Orw1rt/ywz81BDR7UcSZ319qKlLQ1/img_640x640.jpg" alt="사진이미지" style="width: 2.7em;"> 
                    <b style="margin-left: 13px ;">차카이브</b>
                    <input type="text" style="width: 70px; text-align: center; border: none;" placeholder="1주일전" disabled>

					<div style="float: right; margin-top: 5px;">
	                    <button type="button" style="border: none;" onclick="location.href='updateForm.fd'">
	                    	<span>수정하기</span>
	                    </button>
	                    
	                    <span>|</span>
	                    
	                    <button type="button" data-toggle="modal" data-target="#report">
	                        <span>신고하기</span>
	                    </button>
                   </div>
                </div>

                <hr class="inner-bar ">
			
                <div class="inner-bar-small LrN ">
                    <p class="font-bold">속초는 아직 벚꽃엔딩 중🌸</p>
                </div> 
                
                <br>
                
                <div class="feed-content inner-bar-small LrN">
                    <p style="color: black">
                        남쪽나라는 이제 겹벚꽃, 등나무 이야기가 나오고 있지만 우리 북쪽나라 속초는 이제야 벚꽃엔딩을 맞았어요 🌸 🍃 <br>

                        속초 영랑호에는 아직 부분부분 살아있는 벚꽃이 있으니, 이번 주말 마지막 벚꽃여행 하시는 분은 참고하세요! <br>
    
                        📹 23. 4. 6.(목) 18시 이후 촬영 <br>
                        📍 영랑호수공원, 해병대전우회 부근 <br>
                    </p>
                </div>
                
                <img src="https://s3-image.yeomi.travel/71b361ed-6df3-4617-b71f-a8cb7b537ba9.jpeg?w=1120&q=80" alt="" style="width: 100%; height: 100%;">

                <div class="inner-bar-small LrN">
                    <a href="#">#영랑호</a>
                    <a href="#">#벚꽃</a>
                </div>

                <hr class="inner-bar">

                <div class="inner-bar-small LrN"> &nbsp;
                    <img src="${pageContext.request.contextPath}/resources/img/feed/thumb-up.png" alt="thumb-up" style="width: 1.2em; height:1.2em;">
                    <b>16</b>
                </div>

                <hr class="inner-bar">

                <div class="inner-bar-small LrN" align="center">
                    <button type="button" class="btn-feed-three" style="background-color: transparent; border: none;" onclick="likeChange();">좋아요</button> |
                    <button type="button" class="btn-feed-three" style="background-color: transparent; border: none;">댓글쓰기</button> |
                    <button type="button" data-toggle="modal" data-target="#share" class="btn-feed-three" style="background-color: transparent; border: none;" >공유하기</button>
                </div>

                <hr class="inner-bar">

			    <!-- 댓글 작성 시작 -->
                <div class="inner-bar-small LrN" id="reply-input"> &nbsp;
                    <form action="#">
                        <img src="${pageContext.request.contextPath}/resources/img/feed/user.png" alt="loginUser-img" style="width: 2em;"> &nbsp;
                        <input type="text" placeholder="댓글을 입력하세요" style="border-radius: 5px; width: 80%; padding-left: 10px">

                        <div class="inner-bar-small" align="center" style="margin-top: 10px;">
                            <button type="submit" class="bBc" style="width: 10em;">완료</button>
                        </div>
                    </form>
                </div>
                <!-- 댓글 작성 종료 -->
                
                <div class="LrN">
                    <div class="inner-bar-small" style="float: left; box-sizing: border-box; margin-bottom: 0px;">
                        <div style="box-sizing: border-box; ">
                            <img src="${pageContext.request.contextPath}/resources/img/feed/user.png" alt="reply-user" style=" width: 1.6em; display: inline;">
                        </div>
                    </div>
                    
                    <div style="display: inline-block; background-color: #ebebeb; margin-left: 10px; border-radius: 9px; padding: 5px 10px;">
                        <span style="display: inline;">1시간 전</span> <br>
                        <b style="margin-bottom: 5px;">유저닉네임1</b>
                        <p style="margin-bottom: 0px; color: black;">첫번째 댓글 달아보고 지나가고 또 봅니다.</p>
                    </div>
                </div>

                <br>

                <div class="LrN">
                    <div class="inner-bar-small" style="float: left; box-sizing: border-box; margin-bottom: 0px;">
                        <div style="box-sizing: border-box; ">
                            <img src="${pageContext.request.contextPath}/resources/img/feed/user.png" alt="reply-user" style=" width: 1.6em; display: inline;">
                        </div>
                    </div>
                    <div style="display: inline-block; background-color: #ebebeb; margin-left: 10px; border-radius: 9px; padding: 5px 10px;">
                        <span style="display: inline;">30분 전</span> <br>
                        <b style="margin-bottom: 5px;">유저닉네임2</b>
                        <p style="margin-bottom: 0px; color: black;">우리 동네에서 하는 축제는 가고 싶어요~</p>
                    </div>
                </div>
            </div>
            
            <form class="postForm" action="" method="post">
               <input type="hidden" name="fno" value="${f.feedNo}">
            </form>
            
            <script>
	            function postFormSubmit(num){// 수정하기 클릭시
	            	if(num == 1){
	                $(".postForm").attr("action", "updateForm.fd").submit();
	             		console.log("수정하기 버튼 눌림" + fno)
	            	}
	          }
            </script>
            
			<!-- 무한스크롤 끝낼 자리 -->
			
			<script>
			
				$(function(){
					selectReplyList();
				})
				
				function addReply(){
					if($("#replyContent").val().trim().length != 0) {
						
						$.ajax({
							url:"",
							data:{
								refBoardNo:${f.feedNo},
								replyContent:${"#replyContent"}.val(),
								replyWriter:'${loginUser.memId}',
							},
							success:function(status){
								if(status == "success"){
									selectReplyList();
									$("#replyContent").val("");
								}
							},
							error:function(){
								console.log("댓글작성 ajax 통신 실패")
							}
						});
						
					} else {
						alert("댓글 작성 후 등록 요청해주세요")
					}
				}
				
				function selectReplyList(){ // 해당 게시글에 딸린 댓글리스트 조회용 ajax
		    		$.ajax({
		    			url:"rlist.bo",
		    			data:{
		    				fno:${f.feedNo}
		    			},
		    			success:function(list){
		    				console.log(list);
		    				
		    				let value = "";
		    				
		    				for(let i in list){
		    					value += 
					                    "<div class='inner-bar-small' style='float: left; box-sizing: border-box; margin-bottom: 0px;'>"
					                      + "<div style='box-sizing: border-box;'>"
				                          + "<img src=" + list[i].img + "alt='reply-user' style='width: 1.6em; display: inline;'>"
					                      + "</div>"
					                    + "</div>"
					                    + "<div style='display: inline-block; background-color: #ebebeb; margin-left: 10px; border-radius: 9px; padding: 5px 10px;'>"
						                + "<span style='display: inline;'>" + list[i].replyDate + "</span> <br>"
					                    + "<b style='margin-bottom: 5px;'>" + list[i].memNo + "</b>"
					                    + "<p style='margin-bottom: 0px; color: black;'>" + list[i].replyContents + "</p>"
					                    + "</div>" 
				                        
		    				}
		    				
		    				$("#replyArea").html(value);
		    			},
		    			error:function(){
		    				console.log("댓글리스트 조회용 ajax 통신 실패!")
		    			}
		    		});
		    		
		    	}
			
			</script>
            
            <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

            <script>
            
                /*function viewReply(){ 리플 숨기기/나타내기
                    let btn1 = document.getElementById('reply-input');
                    if(btn1.style.display !== 'none'){
                        btn1.style.display = 'none';
                    } else {
                        btn1.style.display = 'block';
                    }
                }*/
                
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
                
                const nonClick = document.querySelectorAll(".non-click");
                function handleClick(event) {
                	  // div에서 모든 "click" 클래스 제거
                	  nonClick.forEach((e) => {
                	    e.classList.remove("click");
                	  });
                	  // 클릭한 div만 "click"클래스 추가
                	  event.target.classList.add("click");
                	}

                	nonClick.forEach((e) => {
                	  e.addEventListener("click", handleClick);
                	});

                
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