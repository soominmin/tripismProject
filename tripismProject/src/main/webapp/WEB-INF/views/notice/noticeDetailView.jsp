<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>

    <!-- GOOGLE FONT -->
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700' rel='stylesheet'>
    
    
    <!-- jQuery 라이브러리 -->
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
    
    
    <!-- CUSTOM CSS -->
    <link href="../mainCss.css" id="option_style" rel="stylesheet">


    <!-- FAVICON -->
    <link rel="shortcut icon" type="image/png" href="assets/img/favicon.png"/>
    <style>
      table * {
          widows: 600px;
      }
      
      table {
      	width-left: 20% 
      	width-right: 20% 
      }
      
      .content{
      	margin: 100px;
      	width: 80%
      }
      
      .innerOuter{
      	width: 80%
      }
  </style>
  
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
  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(resources/img/pages/page-title-bg2.jpg);">
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
——— CONTENT SECTION
===================================== -->
<div class="content">
  <br><br>
  <div class="innerOuter">

      <a class="btn btn-secondary" style="float:right" href="noticeSelectlist.bo">목록으로</a>
      <br><br><br>
      <table id="contentArea" align="center" class="table">
          <tr>
              <th width="100">제목</th>
              <td colspan="3">${ n.noticeName }</td>
          </tr>
          <tr>
              <th>작성자</th>
              <td>${ n.noticeWriter }</td>
              <th>작성일</th>
              <td>${ n.noticeDate }</td>
          </tr>
          <tr>
              <th>첨부파일</th>
              <td colspan="3">
              	<c:choose>
              		<c:when test="${ empty n.noticeUpfile }">
         				<!-- 첨부파일이 없는 경우 -->
         					첨부파일이 없습니다.
              		</c:when>
              		<c:otherwise>
		                <!-- 첨부파일이 있는 경우-->
		                <a href="${ n.noticeUpfile }" download="${ n.noticeUpfile }">${ n.noticeUpfile }</a>
              		</c:otherwise>
              	</c:choose>
              </td>
          </tr>
          <tr>
              <th>내용</th>
              <td colspan="3"></td>
          </tr>
          <tr>
              <td colspan="4"><p style="height:150px">${ n.noticeContents }</p></td>
          </tr>
      </table>
      <br>
      
      <c:if test="${ not empty loginUser.userId and loginUser.userId eq n.noticeWriter }"></c:if>
      <div align="center">
          <!-- 수정하기, 삭제하기 버튼은 관리자일 경우만 보여져야됨 -->
            <a class="btn btn-primary" onclick="" href="noticeUpdateForm.bo">수정하기</a> <!-- 요기에 href="" 를 작성하면 get방식이기 떄문에 노출된다. -->
            <a class="btn btn-danger" onclick="">삭제하기</a>
      </div><br><br>
      
      <form id="postForm" action="" method="post">
         <input type="hidden" name="bno" value="${ b.boardNo }">
         <input type="hidden" name="filePath" value="${ b.changeName }">
      </form>


<!-- ====================================
——— FOOTER SECTION
===================================== -->
    
    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>
  

</body>
</html>