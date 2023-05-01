<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
              <th>조회수</th>
              <th>작성일</th>
              <th>첨부파일</th>
            </tr>
          </thead>
          <tbody>
                <tr>
                    <td class="bno">5</td>
                    <td><a href="noticeDetailView.bo">마지막 공지사항 제목</a></td>
                    <td>admin</td>
                    <td>10</td>
                    <td>2023-03-29</td>
                    <td>
                        ★
                    </td>
                </tr>

                  <tr>
                    <td class="bno">4</td>
                    <td><a href="noticeDetailView.bo">네번째 공지사항 제목</a></td>
                    <td>admin</td>
                    <td>10</td>
                    <td>2023-03-26</td>
                    <td>
                        
                    </td>
                </tr>

                  <tr>
                    <td class="bno">3</td>
                    <td><a href="noticeDetailView.bo">세번째 공지사항 제목</a></td>
                    <td>admin</td>
                    <td>10</td>
                    <td>2023-03-24</td>
                    <td>
                        ★
                    </td>
                </tr>

                  <tr>
                    <td class="bno">2</td>
                    <td><a href="noticeDetailView.bo">두번째 공지사항 제목</a></td>
                    <td>admin</td>
                    <td>10</td>
                    <td>2023-03-22</td>
                    <td>
                        
                    </td>
                </tr>

                  <tr>
                    <td class="bno">1</td>
                    <td><a href="noticeDetailView.bo">첫번째 공지사항 제목</a></td>
                    <td>admin</td>
                    <td>100</td>
                    <td>2023-03-20</td>
                    <td>
                        ★
                    </td>
                </tr>
          </tbody>
      </table>
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