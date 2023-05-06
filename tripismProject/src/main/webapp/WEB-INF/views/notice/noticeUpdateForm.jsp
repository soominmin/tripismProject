<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정</title>

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
  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(resources/img/pages/page-title-bg4.jpg);">
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

      <form id="updateForm" method="post" action="" enctype="">
          <table align="center">
              <tr>
                  <th><label for="title">제목</label></th>
                  <td><input type="text" id="title" class="form-control" name="" value="기존글의 제목" required></td>
              </tr>
              <tr>
                  <th><label for="writer">작성자</label></th>
                  <td><input type="text" id="writer" class="form-control" name="" value="관리자"  readonly></td>
              </tr>
              <tr>
                  <th><label for="upfile">첨부파일</label></th>
                  <td>
                      <input type="file" id="upfile" class="form-control-file border" name="">
                          현재 업로드된 파일 : 
                        <a href="" download="">사진.png</a>
                  </td>
              </tr>
              <tr>
                  <th colspan="2"><label for="content">내용</label></th>
              </tr>
              <tr>
                  <th colspan="2"><textarea class="form-control" required name="" id="content" rows="10" style="resize:none;">기존글의내용</textarea></th>
              </tr>
          </table>
          <br>

          <div align="center">
              <button type="submit" class="btn btn-primary">수정하기</button>
              <button type="button" class="btn btn-danger">이전으로</button>
          </div>
      </form>
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