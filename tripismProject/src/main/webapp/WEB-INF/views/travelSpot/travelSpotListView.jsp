<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>여행지 둘러보기</title>
    
        <!-- Plugins css Style -->
    <link href='${pageContext.request.contextPath}/resources/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
    <link href="${pageContext.request.contextPath}/resources/plugins/animate/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/plugins/menuzord/css/menuzord.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/plugins/menuzord/css/menuzord-animations.css" rel="stylesheet">
    <link href='${pageContext.request.contextPath}/resources/plugins/fancybox/jquery.fancybox.min.css' rel='stylesheet'>

    <!-- GOOGLE FONT -->
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700' rel='stylesheet'>

    <!-- CUSTOM CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/star.css" id="option_style" rel="stylesheet">

    <!-- FAVICON -->
    <link rel="shortcut icon" type="image/png" href="assets/img/favicon.png"/>

    <style>
     #arealist li{
      float: left;
      list-style: none;
      padding: 10px;
      border: 0.5px;
      color: RGB(112, 217, 223);
     }

     #arealist li button span{
      color: gray;
     }

    </style>
</head>

<body id="body" class="up-scroll">
	<jsp:include page="../common/header.jsp"/>
	
	
	<!-- ====================================
	———	PAGE TITLE
	===================================== -->
	<section class="page-title">
	  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(resources/img/pages/page-title-bg12.jpg);">
	    <div class="container">
	      <div class="row align-items-center justify-content-center" style="height: 200px;">
	        <div class="col-lg-6">
	          <div class="page-title-content">
	            <div class="title-border">
	              <h2 class="text-uppercase text-white font-weight-bold">여행지 목록</h2>
	            </div>
	            <p class="text-white mb-0"></p>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>


	<!-- ====================================
	——— TRAVEL TIPS SECTION
	===================================== -->
	
	
	<section class="py-9 py-md-10">
	  <div class="container">
	    <div class="row">
	
	      <div>
	      <div>
	        <ul class="tag_list area_list js_one" id="arealist">
	          <li id="All">
	            <button type="button" class="btn" title="" style="border: 0.5px solid RGB(112, 217, 223); border-radius: 10px; background-color: RGB(112, 217, 223);">
	              <span style="color: white;">#전체</span>
	            </button>
	          </li>
	          <li id="1"><button type="button" class="btn active" style="border: 0.5px solid RGB(112, 217, 223); border-radius: 10px;">
	              <span>#서울</span>
	            </button>
	          </li>
	          <li id="6"><button type="button" class="btn" style="border: 0.5px solid RGB(112, 217, 223); border-radius: 10px;">
	              <span>#부산</span>
	            </button>
	          </li>
	          <li id="4"><button type="button" class="btn" style="border: 0.5px solid RGB(112, 217, 223); border-radius: 10px;">
	            <span>#대구</span>
	          </button></li>
	          <li id="2"><button type="button" class="btn" style="border: 0.5px solid RGB(112, 217, 223); border-radius: 10px;">
	            <span>#인천</span>
	          </button></li>
	          <li id="5"><button type="button" class="btn" style="border: 0.5px solid RGB(112, 217, 223); border-radius: 10px;">
	            <span>#광주</span>
	          </button></li>
	          <li id="3"><button type="button" class="btn" style="border: 0.5px solid RGB(112, 217, 223); border-radius: 10px;">
	            <span>#대전</span>
	          </button></li>
	          <li id="7"><button type="button" class="btn" style="border: 0.5px solid RGB(112, 217, 223); border-radius: 10px;">
	            <span>#울산</span>
	          </button></li>
	          <li id="8"><button type="button" class="btn" style="border: 0.5px solid RGB(112, 217, 223); border-radius: 10px;">
	            <span>#세종</span>
	          </button></li>
	          <li id="31"><button type="button" class="btn" style="border: 0.5px solid RGB(112, 217, 223); border-radius: 10px;">
	            <span>#경기</span>
	          </button></li>
	          <li id="32"><button type="button" class="btn" style="border: 0.5px solid RGB(112, 217, 223); border-radius: 10px;">
	            <span>#강원</span>
	          </button></li>
	          <li id="33"><button type="button" class="btn" style="border: 0.5px solid RGB(112, 217, 223); border-radius: 10px;">
	            <span>#충북</span>
	          </button></li>
	          <li id="34"><button type="button" class="btn" style="border: 0.5px solid RGB(112, 217, 223); border-radius: 10px;">
	            <span>#충남</span>
	          </button></li>
	          <li id="35"><button type="button" class="btn" style="border: 0.5px solid RGB(112, 217, 223); border-radius: 10px;">
	            <span>#경북</span>
	          </button></li>
	          <li id="36"><button type="button" class="btn" style="border: 0.5px solid RGB(112, 217, 223); border-radius: 10px;">
	            <span>#경남</span>
	          </button></li>
	          <li id="37"><button type="button" class="btn" style="border: 0.5px solid RGB(112, 217, 223); border-radius: 10px;">
	            <span>#전북</span>
	          </button></li>
	          <li id="38"><button type="button" class="btn" style="border: 0.5px solid RGB(112, 217, 223); border-radius: 10px;">
	            <span>#전남</span>
	          </button></li>
	          <li id="39"><button type="button" class="btn" style="border: 0.5px solid RGB(112, 217, 223); border-radius: 10px;">
	            <span>#제주</span>
	          </button></li>
	        </ul>
	      </div>
	
	      <br><br><br><br><br>
	      <hr>
	      <br>
	
	      <div>
	
	      </div>
	
	      </div>
	
	
	      <div class="col-md-6 col-lg-4 mb-5">
	        <div class="card card-hover">
	          <a href="javascript:void(0)" class="position-relative">
	            <img class="card-img-top lazyestload" data-src="http://tong.visitkorea.or.kr/cms/resource/81/1075281_image2_1.jpg" src="" alt="Card image cap">
	            <div class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">
	              <div style="margin-left: 90%;">
	                <button style="border-radius: 50%; background-color:rgba(255, 255, 255, 0); border: none;">
	                  <img src="${pageContext.request.contextPath}/resources/img/icons/before-like.png" style="width: 25px; height: 25px;" alt="">
	                </button>
	              </div>
	        
	            </div>
	          </a>
	        
	          <div class="card-body px-4" style="background-color: rgba(112, 217, 223, 0.01)">
	            <p style="color: gray; font-size: 9;">
	              <img src="${pageContext.request.contextPath}/resources/img/icons/map.png" style="width: 16px; height: 16px;" alt="">
	              서울특별시 중구
	            </p>
	            <h5>
	              <a href="detail.sp" class="card-title text-uppercase">광화문</a>
	            </h5>
	
	            <div class="post_area" style="float: right;">
	              <span class="num_view">
	                <img src="${pageContext.request.contextPath}/resources/img/icons/view.png" style="width: 20px; height: 20px;" alt="">
	                <span class="num" id="conRead">562</span>
	              </span>
	            </div>
	
	          </div>
	
	        </div>
	      </div>
	
	      <div class="col-md-6 col-lg-4 mb-5">
	        <div class="card card-hover">
	          <a href="javascript:void(0)" class="position-relative">
	            <img class="card-img-top lazyestload" data-src="http://tong.visitkorea.or.kr/cms/resource/61/1946561_image2_1.jpg" src="" alt="Card image cap">
	            <div class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">
	              <div style="margin-left: 90%;">
	                <button style="border-radius: 50%; background-color:rgba(255, 255, 255, 0); border: none;">
	                  <img src="${pageContext.request.contextPath}/resources/img/icons/before-like.png" style="width: 25px; height: 25px;" alt="">
	                </button>
	              </div>
	        
	            </div>
	          </a>
	        
	          <div class="card-body px-4" style="background-color: rgba(112, 217, 223, 0.01)">
	            <p style="color: gray; font-size: 9;">
	              <img src="${pageContext.request.contextPath}/resources/img/icons/map.png" style="width: 16px; height: 16px;" alt="">
	              서울특별시 중구
	            </p>
	            <h5>
	              <a href="detail.sp" class="card-title text-uppercase">남산 케이블카</a>
	            </h5>
	
	            <div class="post_area" style="float: right;">
	              <span class="num_view">
	                <img src="${pageContext.request.contextPath}/resources/img/icons/view.png" style="width: 20px; height: 20px;" alt="">
	                <span class="num" id="conRead">322</span>
	              </span>
	            </div>
	
	          </div>
	
	        </div>
	      </div>
	
	      <div class="col-md-6 col-lg-4 mb-5">
	        <div class="card card-hover">
	          <a href="javascript:void(0)" class="position-relative">
	            <img class="card-img-top lazyestload" data-src="http://tong.visitkorea.or.kr/cms/resource/15/2659815_image2_1.jpg" src="" alt="Card image cap">
	            <div class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">
	              <div style="margin-left: 90%;">
	                <button style="border-radius: 50%; background-color:rgba(255, 255, 255, 0); border: none;">
	                  <img src="${pageContext.request.contextPath}/resources/img/icons/before-like.png" style="width: 25px; height: 25px;" alt="">
	                </button>
	              </div>
	        
	            </div>
	          </a>
	        
	          <div class="card-body px-4" style="background-color: rgba(112, 217, 223, 0.01)">
	            <p style="color: gray; font-size: 9;">
	              <img src="${pageContext.request.contextPath}/resources/img/icons/map.png" style="width: 16px; height: 16px;" alt="">
	              서울특별시 마포구
	            </p>
	            <h5>
	              <a href="detail.sp" class="card-title text-uppercase">난지한강공원</a>
	            </h5>
	
	            <div class="post_area" style="float: right;">
	              <span class="num_view">
	                <img src="${pageContext.request.contextPath}/resources/img/icons/view.png" style="width: 20px; height: 20px;" alt="">
	                <span class="num" id="conRead">402</span>
	              </span>
	            </div>
	
	          </div>
	
	        </div>
	      </div>
	
	      <div class="col-md-6 col-lg-4 mb-5">
	        <div class="card card-hover">
	          <a href="javascript:void(0)" class="position-relative">
	            <img class="card-img-top lazyestload" data-src="http://tong.visitkorea.or.kr/cms/resource/80/687680_image2_1.jpg" src="" alt="Card image cap">
	            <div class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">
	              <div style="margin-left: 90%;">
	                <button style="border-radius: 50%; background-color:rgba(255, 255, 255, 0); border: none;">
	                  <img src="${pageContext.request.contextPath}/resources/img/icons/before-like.png" style="width: 25px; height: 25px;" alt="">
	                </button>
	              </div>
	        
	            </div>
	          </a>
	        
	          <div class="card-body px-4" style="background-color: rgba(112, 217, 223, 0.01)">
	            <p style="color: gray; font-size: 9;">
	              <img src="${pageContext.request.contextPath}/resources/img/icons/map.png" style="width: 16px; height: 16px;" alt="">
	              서울특별시 종로구
	            </p>
	            <h5>
	              <a href="detail.sp" class="card-title text-uppercase">남대문 갈치조림골목</a>
	            </h5>
	
	            <div class="post_area" style="float: right;">
	              <span class="num_view">
	                <img src="${pageContext.request.contextPath}/resources/img/icons/view.png" style="width: 20px; height: 20px;" alt="">
	                <span class="num" id="conRead">365</span>
	              </span>
	            </div>
	
	          </div>
	
	        </div>
	      </div>
	
	      <div class="col-md-6 col-lg-4 mb-5">
	        <div class="card card-hover">
	          <a href="javascript:void(0)" class="position-relative">
	            <img class="card-img-top lazyestload" data-src="http://tong.visitkorea.or.kr/cms/resource/82/1567782_image2_1.jpg" src="" alt="Card image cap">
	            <div class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">
	              <div style="margin-left: 90%;">
	                <button style="border-radius: 50%; background-color:rgba(255, 255, 255, 0); border: none;">
	                  <img src="${pageContext.request.contextPath}/resources/img/icons/before-like.png" style="width: 25px; height: 25px;" alt="">
	                </button>
	              </div>
	        
	            </div>
	          </a>
	        
	          <div class="card-body px-4" style="background-color: rgba(112, 217, 223, 0.01)">
	            <p style="color: gray; font-size: 9;">
	              <img src="${pageContext.request.contextPath}/resources/img/icons/map.png" style="width: 16px; height: 16px;" alt="">
	              서울특별시 강동구
	            </p>
	            <h5>
	              <a href="detail.sp" class="card-title text-uppercase">길동생태공원</a>
	            </h5>
	
	            <div class="post_area" style="float: right;">
	              <span class="num_view">
	                <img src="${pageContext.request.contextPath}/resources/img/icons/view.png" style="width: 20px; height: 20px;" alt="">
	                <span class="num" id="conRead">238</span>
	              </span>
	            </div>
	
	          </div>
	
	        </div>
	      </div>
	
	      <div class="col-md-6 col-lg-4 mb-5">
	        <div class="card card-hover">
	          <a href="javascript:void(0)" class="position-relative">
	            <img class="card-img-top lazyestload" data-src="http://tong.visitkorea.or.kr/cms/resource/01/1567801_image2_1.jpg" src="" alt="Card image cap">
	            <div class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">
	              <div style="margin-left: 90%;">
	                <button style="border-radius: 50%; background-color:rgba(255, 255, 255, 0); border: none;">
	                  <img src="${pageContext.request.contextPath}/resources/img/icons/before-like.png" style="width: 25px; height: 25px;" alt="">
	                </button>
	              </div>
	        
	            </div>
	          </a>
	        
	          <div class="card-body px-4" style="background-color: rgba(112, 217, 223, 0.01)">
	            <p style="color: gray; font-size: 9;">
	              <img src="${pageContext.request.contextPath}/resources/img/icons/map.png" style="width: 16px; height: 16px;" alt="">
	              서울특별시 광진구
	            </p>
	            <h5>
	              <a href="detail.sp" class="card-title text-uppercase">광나루한강공원</a>
	            </h5>
	
	            <div class="post_area" style="float: right;">
	              <span class="num_view">
	                <img src="${pageContext.request.contextPath}/resources/img/icons/view.png" style="width: 20px; height: 20px;" alt="">
	                <span class="num" id="conRead">122</span>
	              </span>
	            </div>
	
	          </div>
	
	        </div>
	      </div>
	
	
	      
	
	
	
	    </div>
	  </div>
	
	
	</section>






	
	
	<jsp:include page="../common/footer.jsp"/>
	
	<!-- Javascript -->
    <script src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/menuzord/js/menuzord.js"></script>
    <script src='${pageContext.request.contextPath}/resources/plugins/fancybox/jquery.fancybox.min.js'></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/lazyestload/lazyestload.js"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/smoothscroll/SmoothScroll.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/star.js"></script>
</body>
</html>