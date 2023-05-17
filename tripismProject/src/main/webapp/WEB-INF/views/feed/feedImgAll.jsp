<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tripism Feed</title>

    <style>
         /* div{ border: 1px solid gray; }  */
        
        #wrap{ height: 1200px;  position: relative; margin-left: 15%;}
        /* #header{ height: 10% ; box-sizing: border-box; } */
        #left-main{ width: 20%; height: 100% !important; box-sizing: border-box; float: left; min-width: 120px; padding: 0 2%; }
        #middle-main{ width: 50%; height: 100% !important; box-sizing: border-box; float: left; min-width: 300px; overflow: scroll; margin: 0 2.5%; padding: 0 2%; border-left: 1px solid rgb(112, 217, 223);}
        /* #right-main{ width: 17.5%; height: 100% !important; box-sizing: border-box; float: left; min-width: 180px;} */
        /* #footer{ height: 10%; display: block; position: absolute; bottom: 0px !important;} */
        .inner-bar{ margin: 10px 15px; }
        .inner-bar-small{ margin: 10px 5px; }
        
         #feedPage{ border: 1px solid whitesmoke; }
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
        
        .LrN{ padding: 0px 20px }
        
        .font-bold{ 
        	font-weight: 700;
        	font-size: 18px;
        	line-height: 26px;
        	color: black;
        }
        
        .non-click{ background-color: none;}
        .click{ background-color: rgb(112, 217, 223);}
        
        .imgT{margin: 16px; border: 1px solid rgb(112, 217, 223); width: 225px; height:225px; box-sizing: border-box; display: inline-block;}
        
        .imgT img{background-size: contain;}
        .non-click:hover{
        	background-color: rgb(112, 217, 223);
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
            
            	<span style="position: absolute; left:70px; top: 183px; z-index: 999">
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

            <button type="button" class="non-click" style=" border: none; border-radius: 20px" onclick="location.href='feed.fd'"><img src="${pageContext.request.contextPath}/resources/img/feed/home2.png" alt="home" style="width: 2.4em;">
                <p style="margin-top: 10px">전체보기</p>
            </button>

            <!-- 
            <button style="background-color: transparent; border: none;"><img src="${pageContext.request.contextPath}/resources/img/feed/hot.png" alt="hot" style="width: 2em;">
                <p>실시간</p>
            </button>
             -->

            <br>

            <button type="button" class="non-click" style="background-color: rgb(112, 217, 223); border: none; border-radius: 25% 10%"">
            	<img src="${pageContext.request.contextPath}/resources/img/feed/image.png" alt="img" style="width: 2.4em;">
                <p style="margin-top: 10px">이미지</p>
            </button>
            
            <br>
            
            <button type="button" class="non-click" style="border: none; border-radius: 25% 10%"" onclick="location.href='#"><img src="${pageContext.request.contextPath}/resources/img/feed/alert.png" alt="img" style="width: 2.4em;">
                <p style="margin-top: 10px">알림</p>
            </button>
            
            <br>
            
            <button type="button" class="non-click" style="border: none;" onclick="location.href='enrollForm.fd'"><img src="${pageContext.request.contextPath}/resources/img/feed/plus.png" alt="write" style="width: 2.4em;">
            	<p style="margin-top: 10px">글쓰기</p>
            </button>

            </div>            
        </div>

        <div id="middle-main">&nbsp;

			<!-- 이미지 모아서 보여줄 공간 시작 -->
			
            <div class="inner-bar" id="feedPage" align="center">
                <div> 
	                <c:forEach var="f" items="${ feed }">
	                	<c:if test="${ not empty f.imgOriginalName1 || not empty f.imgOriginalName2 || not empty f.imgOriginalName3 || not empty f.imgOriginalName4 }">
		                	<c:if test="${not empty f.imgOriginalName1 }">
		                		<div class="imgT" onclick="goFeed();">
			                		<div style="height: 80%; padding: 5px">
			                			<img alt="이미지 자리" src="${ f.imgChangeName1 }" style="width: 80%; ">
			                		</div>
			                		<div style="height: 20%; padding: 5px">
			                			<span>${ f.feedTitle }</span>
			                		</div>
			                	</div>
		                	</c:if>
		                	
		                	<c:if test="${not empty f.imgOriginalName2 }">
		                		<div class="imgT" onclick="goFeed();">
			                		<div style="height: 80%; padding: 5px">
			                			<img alt="이미지 자리" src="${ f.imgChangeName2 }" style="width: 80%; ">
			                		</div>
			                		<div style="height: 20%; padding: 5px">
			                			<span>${ f.feedTitle }</span>
			                		</div>
			                	</div>
		                	</c:if>
		                	
		                	<c:if test="${not empty f.imgOriginalName3 }">
		                		<div class="imgT" onclick="goFeed();">
			                		<div style="height: 80%; padding: 5px">
			                			<img alt="이미지 자리" src="${ f.imgChangeName3 }" style="width: 80%; ">
			                		</div>
			                		<div style="height: 20%; padding: 5px">
			                			<span>${ f.feedTitle }</span>
			                		</div>
			                	</div>
		                	</c:if>
		                	
		                	<c:if test="${not empty f.imgOriginalName4 }">
		                		<div class="imgT" onclick="goFeed();">
			                		<div style="height: 80%; padding: 5px">
			                			<img alt="이미지 자리" src="${ f.imgChangeName4 }" style="width: 80%; ">
			                		</div>
			                		<div style="height: 20%; padding: 5px">
			                			<span>${ f.feedTitle }</span>
			                		</div>
			                	</div>
		                	</c:if>
		                </c:if>
	                </c:forEach>
                	
                </div>
            </div>
			<!-- 이미지 모아서 보여줄 공간 종료 -->
            
            <script>
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
                	
                function goFeed() {
                	location.href = "feed.fd"; 
                	window.scrollTo(0, 1000); 
                	/* let clientH = $('.feedPage');
                	let heightSum = 0;
                	
                	console.log($('.feedPage'));
                	
                	for(let i = 0; i<$('.feedPage').length; i++){
                		heightSum += clientH[i].clientHeight
                		console.log(clientH)
                	} */
                	
                	$(window).scroll(function(){
                		/* scrollHeight = $(document).clientHeight*/
                		// 
                		
                	})
                	/* const clientH = $('.feedPage')
                	location.href = "feed.fd"; */
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