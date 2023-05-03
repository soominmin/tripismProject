<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>여행상품 홍보하기</title>

    <!-- Plugins css Style -->
    <link href='${pageContext.request.contextPath}/resources/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
    <link href="${pageContext.request.contextPath}/resources/plugins/animate/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/plugins/menuzord/css/menuzord.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/plugins/menuzord/css/menuzord-animations.css" rel="stylesheet">
    <link href='${pageContext.request.contextPath}/resources/plugins/fancybox/jquery.fancybox.min.css' rel='stylesheet'>

    <!-- CUSTOM CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/star.css" id="option_style" rel="stylesheet">

    <!-- FAVICON -->
    <link rel="shortcut icon" type="image/png" href="assets/img/favicon.png"/>

</head>
<body id="body" class="up-scroll">

	<jsp:include page="../common/header.jsp"/>

	<!-- ====================================
	———	PAGE TITLE
	===================================== -->
	<section class="page-title">
	  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(${pageContext.request.contextPath}/resources/img/pages/page-title-bg7.jpg);">
	    <div class="container">
	      <div class="row align-items-center justify-content-center" style="height: 200px;">
	        <div class="col-lg-6">
	          <div class="page-title-content">
	            <div class="title-border">
	              <h2 class="text-uppercase text-white font-weight-bold">여행상품 입력</h2>
	            </div>
	            <p class="text-white mb-0"></p>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
	
	
	<!-- ====================================
	———	BOOKING SECTION
	===================================== -->
	<section class="py-8 py-md-10">
	  <div class="container" style="width:800px">
	
	    
	    <div class="row">
	      <div class="">
	        
	
	        <form action="" method="post" target="_blank">
	          
	          <div class="row">
	            <h3 class="text-capitalize mb-5" style="font-weight: 900;">* 상품명 입력</h3>
	            <div class="col-lg-6">
	              <div class="form-group">
	                <label for="inputName">상품의 대표 [시/군/구]를 입력해주세요</label>
	                <input type="text" class="form-control border-0 bg-smoke">
	              </div>
	            </div>
	    
	            <div class="col-lg-6">
	              <div class="form-group">
	                <label for="inputName">상품명을 입력해주세요</label>
	                <input type="text" class="form-control border-0 bg-smoke">
	              </div>
	            </div>
	
	            <br><br><br><br><br>
	            
	            
	            <h3 class="text-capitalize mb-5" style="font-weight: 900;">* 상품 지역 입력</h3>
	            <div class="col-lg-6">
	              <div class="form-group">
	                <label for="inputName">상품 목적지의 지역(시/도)를 입력해주세요</label>
	                <input type="text" class="form-control border-0 bg-smoke">
	              </div>
	            </div>
	    
	            <div class="col-lg-6">
	              <div class="form-group">
	                <label for="inputName">상품 목적지의 세부 지역명 (시/군/구)을 입력해 주세요.</label>
	                <input type="text" class="form-control border-0 bg-smoke">
	              </div>
	            </div>
	            
	            <br><br><br><br><br>
	            <h3 class="text-capitalize mb-5" style="font-weight: 900;">* 상품 정보 입력</h3>
	
	            <div class="form-group mb-5">
	              <label for="exampleFormControlTextarea1">상품에 대해 간략하게 소개해 주세요</label>
	              <textarea class="form-control border-0 bg-smoke" rows="7" style="resize: none;"></textarea>
	            </div>
	    
	            <div class="col-lg-6">
	              <div class="form-group">
	                <label for="inputName">상품 가격을 입력해 주세요 <br><span style="color: gray;">* 최저가 기준으로 입력. ex : 80,000원~</span> </label>
	                <input type="number" class="form-control border-0 bg-smoke">
	              </div>
	            </div>
	    
	            <div class="col-lg-6">
	              <div class="form-group">
	                <label for="inputName">여행 기간을 입력해 주세요</label> <br><br>
	                <input type="text" class="form-control border-0 bg-smoke">
	              </div>
	            </div>
	            
	            <br><br><br><br><br>
	            <h3 class="text-capitalize mb-5" style="font-weight: 900;">* 상품 홍보기간</h3>
	            <div class="col-lg-6">
	              <div class="form-group">
	                <label for="inputName">상품 판매 시작일을 입력해 주세요</label>
	                <input type="date" class="form-control border-0 bg-smoke">
	              </div>
	            </div>
	
	            <div class="col-lg-6">
	              <div class="form-group">
	                <label for="inputName">상품 판매 종료일을 입력해 주세요</label>
	                <input type="date" class="form-control border-0 bg-smoke">
	              </div>
	            </div>
	
	          </div>
	          
	          <br><br>
	
	          <div class="form-group mb-5">
	            <label for="exampleFormControlTextarea1" style="font-weight: bold;">* 저작권 보증 및 제공</label>
	            <textarea class="form-control border-0 bg-smoke" rows="7" style="resize: none; height: 105px;" readonly>지역관광지(업소) 홍보를 목적으로 귀하(기관)에서 우리 공사에 제공하는 자료(사진,원고 등)에 대한 저작권 및 소유권을 귀하(기관)가 보유하고 있음을 보증하여야 합니다. 만일, 귀하(기관)가 제공한 자료가 제3자의 권리를 침해하거나 제3자에게 손해가 발생하는 등 자료와 관련하여 법적 분쟁이 발생했을 경우, 모든 책임은 귀하(기관)에 있으며 귀하(기관)의 비용과 노력으로 분쟁을 해결해야 하며 함을 알려 드립니다. 귀하(기관)에서 우리 회사에 제공하는 자료(사진, 원고, 영상 등)는 지역관광지(업소) 홍보 목적으로 타기관(공공기관, 포탈사이트 등)에 제공 될 수 있으며, 민원 제기 등의 사유로 귀하(기관)의 정보를 더 이상 제공하기에 어렵다고 판단되는 경우, 사전 동의 없이 삭제 처리할 수 있음을 알려 드립니다.</textarea>
	          </div>
	          
	          <div class="form-group form-check mb-9">
	
	            <input type="checkbox" class="form-check-input" id="exampleCheck1">
	            <label class="form-check-label" for="exampleCheck1"> 저작권 보증 및 제공에 동의합니다.
	            </label>
	          </div>
	    
	          <div class="text-center text-md-start text-lg-end">
	            <button type="submit" onclick="" class="btn btn-primary text-uppercase" style="background-color: RGB(112, 217, 223); border: none;">
	              제출하기
	            </button>
	          </div>
	        </form>
	      </div>
	    
	    </div>
	  </div>
	</section>
	
	</div>




  


    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/plugins/jquery/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/menuzord/js/menuzord.js"></script>
    <script src='${pageContext.request.contextPath}/plugins/fancybox/jquery.fancybox.min.js'></script>
    <script src="${pageContext.request.contextPath}/plugins/lazyestload/lazyestload.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/smoothscroll/SmoothScroll.js"></script>
    <script src="${pageContext.request.contextPath}/js/star.js"></script>
    
    	<jsp:include page="../common/footer.jsp"/>

</body>
</html>