<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tripism Feed</title>

    <style>
        /* div{ border: 1px solid gray; } */
        
        #wrap{ height: 1200px;  position: relative; margin-left: 20%;}
        /* #header{ height: 10% ; box-sizing: border-box; } */
        #left-main{ width: 20%; height: 100% !important; box-sizing: border-box; float: left; min-width: 120px; padding: 0 2%; }
        #middle-main{ width: 50%; height: 100% !important; box-sizing: border-box; float: left; min-width: 300px; overflow: scroll; margin: 0 2.5%; padding: 0 2%; border-left: 1px solid rgb(112, 217, 223);}
        /* #right-main{ width: 17.5%; height: 100% !important; box-sizing: border-box; float: left; min-width: 180px;} */
        /* #footer{ height: 10%; display: block; position: absolute; bottom: 0px !important;} */
        .inner-bar{ margin: 10px 15px; }
        .inner-bar-small{ margin: 10px 5px; }
        
         #feedPage{ border: 1px solid whitesmoke; }
       
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

        .non-click{ background-color: none;}
        .click{ background-color: rgb(112, 217, 223); }
        
        .imgT{margin: 16px; border: 1px solid rgb(112, 217, 223); width: 180px; height:180px; box-sizing: border-box; display: inline-block;}
        
    </style>

</head>
<body>
    <!-- header -->
    <jsp:include page="../common/header.jsp"/>

    <br><br>
    
    <div id="wrap">
        

        <!-- feedPage- -->
        <div id="left-main"> &nbsp;

            <%-- <div align="center">
                <img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="image" style="width: 10em;">
            </div> --%>
            <!--<hr class="inner-bar">
             <div class="inner-bar">
                <b>#태그</b> <br>
                <a href="#">#봄</a>
                <a href="#">#여름</a>
                <a href="#">#가을</a>
                <a href="#">#겨울</a>    
            </div> -->

            

            <!-- <div style="height: 50px;" align="center">
                <button type="button" class="bBc" style="width: 80%; font-size: large;" onclick="location.href='enrollForm.fd'">글쓰기</button>
            </div>  -->

            <!-- <br>

            <hr class="inner-bar"> -->

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

            <button type="button" class="non-click" style=" border: none; border-radius: 20px" onclick="location.href='feed.fd'"><img src="${pageContext.request.contextPath}/resources/img/feed/home2.png" alt="home" style="width: 2.4em;">
                <p style="margin-top: 10px">전체보기</p>
            </button>

            <!-- 
            <button style="background-color: transparent; border: none;"><img src="${pageContext.request.contextPath}/resources/img/feed/hot.png" alt="hot" style="width: 2em;">
                <p>실시간</p>
            </button>
             -->

            <br>

            <button type="button" class="non-click" style="background-color: rgb(112, 217, 223); border: none; border-radius: 20px">
            	<img src="${pageContext.request.contextPath}/resources/img/feed/image2.png" alt="img" style="width: 2.4em;">
                <p style="margin-top: 10px">이미지</p>
            </button>
            
            <br>
            
            <button type="button" class="non-click" style="border: none;" onclick="location.href='enrollForm.fd'"><img src="${pageContext.request.contextPath}/resources/img/feed/plus.png" alt="img" style="width: 2.4em;">
            	<p style="margin-top: 10px">글쓰기</p>
            </button>

            <%-- <button type="button" style="background-color: transparent; border: none;"><img src="${pageContext.request.contextPath}/resources/img/feed/video.png" alt="video" style="width: 2.4em;">
                <p>동영상</p>
            </button> --%>

            </div>            
        </div>

        <div id="middle-main">&nbsp;

			<!-- 이미지 모아서 보여줄 공간 시작 -->
            <div class="inner-bar" id="feedPage">
                <div> 
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	
                	<br>
                	
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	
                	<br>
                
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	
                	<br>
                
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	
                	<br>
                
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	
                	<br>
                
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	
                	<br>
                
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	
                	<br>
                
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
                	<div class="imgT" align="center">
                		<div style="height: 80%; padding: 5px">
                			<img alt="이미지 자리" src="">
                		</div>
                		<div style="height: 20%; padding: 5px">
                			<span>제목</span>
                		</div>
                	</div>
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