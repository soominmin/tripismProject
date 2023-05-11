<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!-- Style The Contact Form How Ever You Prefer -->
    <link rel="stylesheet" href="resources/css/star.css">
<title>공지사항</title>



</head>
<body>

<!-- ====================================
——— HEADER
===================================== -->
<!-- 이쪽에 헤더바 포함할꺼임 -->
    <jsp:include page="../common/header.jsp"/>
<!-- ====================================
———	PAGE TITLE
===================================== -->
<section class="page-title">
  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(resources/img/pages/page-title-bg10.jpg);">
    <div class="container">
      <div class="row align-items-center justify-content-center" style="height: 200px;">
        <div class="col-lg-6">
          <div class="page-title-content">
            <div class="title-border">
              <h2 class="text-uppercase text-white font-weight-bold">공지사항</h2>
            </div>
            <p class="text-white mb-0"></p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


<!-- ====================================
———	NOTICE CONTENT SECTION
===================================== -->
<div class="content" >
  <br><br>
  <div class="innerOuter" style="padding:5% 10%;">
      <br>
        <!-- (관리자)로그인후 상태일 경우만 보여지는 글쓰기 버튼-->


         <a class="btn btn-secondary btn-sm" style="float:right" href="noticeEnrollForm.bo">글쓰기</a>

      <br></br>
      <table id="boardList" class="table table-hover" align="center">
          <thead>
            <tr>
              <th>글번호</th>
              <th>제목</th>
              <th>작성자</th>
              <th>작성일</th>
              <th>첨부파일</th>
            </tr>
          </thead>
          <tbody>

            <c:forEach var="n" items="${ list }">
                <tr>
                    <td class="bno">${ n.noticeNo }</td>
                    <td>${ n.noticeName }</td>
                    <td>${ n.noticeWriter }</td>
                    <td>${ n.noticeDate }</td>
                    <td>
						<c:if test="${ not empty n.originName }">
	                        		★
						</c:if>

                    </td>
                </tr>
          	</c:forEach>
          </tbody>
      </table>
      <br>
      
            <script>
            	$(function(){
            		$("#boardList>tbody>tr").click(function(){
            			location.href='noticeDetailView.bo?bno=' + $(this).children(".bno").text();
            		})
            	})
            </script>


            <div id="pagingArea">
                <ul class="pagination">
                		<c:choose>
        	        		<c:when test="${ pi.currentPage eq 1 }">
		        	            <li class="page-item disabled"><a class="page-link" href="">Previous</a></li>
            	    		</c:when>
            	    		<c:otherwise>
		            	        <li class="page-item"><a class="page-link" href="noticeSelectlist.bo?cpage=${ pi.currentPage -1 }">Previous</a></li>
            	    		</c:otherwise>
                		</c:choose>
                		
                		
	                    <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
                    		<li class="page-item"><a class="page-link" href="noticeSelectlist.bo?cpage=${ p }">${ p }</a></li>
	                    </c:forEach>
	                    
	                    
	                    	<c:choose>
		                    	<c:when test="${ pi.currentPage eq pi.maxPage }">
		              		      <li class="page-item disabled"><a class="page-link" href="">Next</a></li>
		                    	</c:when>
		                    	<c:otherwise>
	    	             		   <li class="page-item"><a class="page-link" href="${ pi.currentPage + 1 }">Next</a></li>
		                    	</c:otherwise>
	                    	</c:choose>
	                    
	                    
                </ul>
            </div>
     
      <br clear="both"><br>
      

      <form id="searchForm" action="" method="get" align="center">
          <div class="select">
              <select class="custom-select" name="condition">
                  <option value="writer">작성자</option>
                  <option value="title">제목</option>
                  <option value="content">내용</option>
              </select>
          </div>
          <div class="text">
              <input type="text" class="form-control" name="keyword">
          </div>
          <button type="submit" class="searchBtn btn btn-secondary">검색</button>
      </form>
      <br><br>
  </div>
  <br><br>
</div>


<!-- ====================================
——— FOOTER SECTION
===================================== -->
    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>

</body>
</html>