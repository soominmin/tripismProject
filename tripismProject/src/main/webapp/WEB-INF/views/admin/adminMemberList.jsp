<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(resources/img/pages/page-title-bg16.jpg);">
    <div class="container">
      <div class="row align-items-center justify-content-center" style="height: 200px;">
        <div class="col-lg-6">
          <div class="page-title-content">
            <div class="title-border">
              <h2 class="text-uppercase text-white font-weight-bold">회원관리</h2>
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
              <option value="userId">아이디</option>
              <option value="userName">이름</option>
              <option value="phone">연락처</option>
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
            <th>회원번호</th>
            <th>아이디</th>
            <th>이름</th>
            <th>닉네임</th>
            <th>연락처</th>
            <th>가입일</th>
            <th>신고 누적 횟수</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><input type="checkbox" name="memberSelect" id="memberSelect"></td>
            <td class="bno">6</td>
            <td>user05</td>
            <td>한수빈</td>
            <td>막냉이바보</td>
            <td>010-6789-0123</td>
            <td>2022-10-18</td>
            <td>0</td>
          </tr>
          <tr>
            <td><input type="checkbox" name="memberSelect" id="memberSelect"></td>
            <td class="bno">5</td>
            <td>user04</td>
            <td>김수민</td>
            <td>김수민</td>
            <td>010-5678-9012</td>
            <td>2022-10-18</td>
            <td>0</td>
          </tr>
          <tr>
            <td><input type="checkbox" name="memberSelect" id="memberSelect"></td>
            <td class="bno">4</td>
            <td>user03</td>
            <td>이종규</td>
            <td>이종규</td>
            <td>010-4567-8901</td>
            <td>2022-10-18</td>
            <td>0</td>
          </tr>
          <tr>
            <td><input type="checkbox" name="memberSelect" id="memberSelect"></td>
            <td class="bno">3</td>
            <td>user02</td>
            <td>김동현</td>
            <td>바지적삼</td>
            <td>010-3456-7890</td>
            <td>2022-10-18</td>
            <td>0</td>
          </tr>
          <tr>
            <td><input type="checkbox" name="memberSelect" id="memberSelect"></td>
            <td class="bno">2</td>
            <td>user01</td>
            <td>정민교</td>
            <td>민팀장</td>
            <td>010-2345-6789</td>
            <td>2022-10-18</td>
            <td>0</td>
          </tr>
          <tr>
            <td><input type="checkbox" name="memberSelect" id="memberSelect"></td>
            <td class="bno">1</td>
            <td>admin</td>
            <td>관리자</td>
            <td>관리자</td>
            <td>010-1234-5678</td>
            <td>2022-10-18</td>
            <td>0</td>
          </tr>

        </tbody>
      </table>
      <br>

      <div align="center">
        <button class="btn btn-sm btn-primary" onclick="">전체 선택</button>
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