<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자] 공지사항 리스트</title>

    <!-- GOOGLE FONT -->
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700' rel='stylesheet'>

    <!-- jQuery 라이브러리 -->
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
</head>
<body>

<!-- ====================================
——— HEADER
===================================== -->
  
	<!-- 헤더바 포함 -->
	<jsp:include page="../common/header.jsp"/>  

<!-- ====================================
———	PAGE TITLE
===================================== -->
<section class="page-title">
  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(resources/img/pages/page-title-bg5.jpg);">
    <div class="container">
      <div class="row align-items-center justify-content-center" style="height: 200px;">
        <div class="col-lg-6">
          <div class="page-title-content">
            <div class="title-border">
              <h2 class="text-uppercase text-white font-weight-bold">공지사항 게시물 관리</h2>
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



<div class="content">
  <br><br>
  <div class="innerOuter" style="padding:5% 10%;">

    <form id="searchForm" action="" method="get" align="center">
      <div class="select">
          <select class="custom-select" name="condition">
            <option value="title">제목</option>
            <option value="userId">아이디</option>
            <option value="status">공개여부</option>
          </select>
      </div>
      <div class="text">
          <input type="text" class="form-control" name="keyword">
      </div>
      <button type="submit" class="searchBtn btn btn-secondary">검색</button>
  </form>
  <br><br><br><br>

      <table id="boardList" class="table table-hover" align="center">
        <thead>
          <tr>
            <th>선택</th>
            <th>게시글번호</th>
            <th>아이디</th>
            <th>제목</th>
            <th>공개여부</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><input type="checkbox" name="memberSelect" id="memberSelect"></td>
            <td class="bno">6</td>
            <td>admin</td>
            <td>공지사항으로 추천할께 뭐있을까?</td>
            <td>N</td>
          </tr>
          <tr>
            <td><input type="checkbox" name="memberSelect" id="memberSelect"></td>
            <td class="bno">5</td>
            <td>admin</td>
            <td>한수빈 바보</td>
            <td>N</td>
          </tr>
          <tr>
            <td><input type="checkbox" name="memberSelect" id="memberSelect"></td>
            <td class="bno">4</td>
            <td>admin</td>
            <td>청정 커뮤니티 유지를 위한 공지사항</td>
            <td>Y</td>
          </tr>
          <tr>
            <td><input type="checkbox" name="memberSelect" id="memberSelect"></td>
            <td class="bno">3</td>
            <td>admin</td>
            <td>여행지 안전사고 주의</td>
            <td>Y</td>
          </tr>
          <tr>
            <td><input type="checkbox" name="memberSelect" id="memberSelect"></td>
            <td class="bno">2</td>
            <td>admin</td>
            <td>동행자 선택시 주의사항</td>
            <td>Y</td>
          </tr>
          <tr>
            <td><input type="checkbox" name="memberSelect" id="memberSelect"></td>
            <td class="bno">1</td>
            <td>admin</td>
            <td>Tripism에 오신 것을 환영합니다.</td>
            <td>Y</td>
          </tr>

        </tbody>
      </table>
      <br>

      <!-- 최고 관리자는 모든 글 관리 -->
      <div align="center">
        <button class="btn btn-sm btn-primary" onclick="">전체 선택</button>
        
        
        <!-- 최고 관리자한테만 보임 -->
        <button class="btn btn-sm btn-Y" onclick="">공개 전환</button>
        <button class="btn btn-sm btn-N" onclick="">비공개 전환</button>
        
        
        <button class="btn btn-sm btn-danger" onclick="">삭제</button>
      </div>

      <br>


      <div id="pagingArea">
          <ul class="pagination">
            
                <li class="page-item disabled"><a class="page-link" href="">Previous</a></li>
                <li class="page-item"><a class="page-link" href="">1</a></li>
                <li class="page-item"><a class="page-link" href="">2</a></li>
                <li class="page-item"><a class="page-link" href="">3</a></li>
                <li class="page-item"><a class="page-link" href="">4</a></li>
                <li class="page-item"><a class="page-link" href="">5</a></li>
                  <li class="page-item"><a class="page-link" href="">Next</a></li>
          </ul>
      </div>
     
      <br clear="both"><br>

  </div>
  <br><br>
</div>


<!-- ====================================
——— FOOTER SECTION
===================================== -->
    
    		<!-- 푸터바 포함 -->
	<jsp:include page="../common/footer.jsp"/>
  
</body>
</html>