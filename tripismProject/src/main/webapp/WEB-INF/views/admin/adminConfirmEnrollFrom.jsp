<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행 상품 정보 승인</title>
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
	  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(${pageContext.request.contextPath}/resources/img/pages/page-title-bg7.jpg);">
	    <div class="container">
	      <div class="row align-items-center justify-content-center" style="height: 200px;">
	        <div class="col-lg-6">
	          <div class="page-title-content">
	            <div class="title-border">
	              <h2 class="text-uppercase text-white font-weight-bold">여행상품 정보</h2>
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
	            <h3 class="text-capitalize mb-5" style="font-weight: 900;">* 상품명</h3>
	            <div class="col-lg-6">
	              <div class="form-group">
	                <label for="inputName">상품의 대표 [시/군/구]</label>
	                <input type="text" class="form-control border-0 bg-smoke">
	              </div>
	            </div>
	    
	            <div class="col-lg-6">
	              <div class="form-group">
	                <label for="inputName">상품명</label>
	                <input type="text" class="form-control border-0 bg-smoke">
	              </div>
	            </div>
	
	            <br><br><br><br><br>
	            
	            
	            <h3 class="text-capitalize mb-5" style="font-weight: 900;">* 상품 지역 정보</h3>
	            <div class="col-lg-6">
	              <div class="form-group">
	                <label for="inputName">상품 목적지의 지역(시/도)</label>
	                <input type="text" class="form-control border-0 bg-smoke">
	              </div>
	            </div>
	    
	            <div class="col-lg-6">
	              <div class="form-group">
	                <label for="inputName">상품 목적지의 세부 지역명 (시/군/구)</label>
	                <input type="text" class="form-control border-0 bg-smoke">
	              </div>
	            </div>
	            
	            <br><br><br><br><br>
	            <h3 class="text-capitalize mb-5" style="font-weight: 900;">* 상품 정보 입력</h3>
	
	            <div class="form-group mb-5">
	              <label for="exampleFormControlTextarea1">상품에 대한 소개</label>
	              <textarea class="form-control border-0 bg-smoke" rows="7" style="resize: none;"></textarea>
	            </div>
	    
	            <div class="col-lg-6">
	              <div class="form-group">
	                <label for="inputName">상품 가격<span style="color: gray;"></span> </label>
	                <input type="number" class="form-control border-0 bg-smoke">
	              </div>
	            </div>
	    
	            <div class="col-lg-6">
	              <div class="form-group">
	                <label for="inputName">여행 기간</label>
	                <input type="text" class="form-control border-0 bg-smoke">
	              </div>
	            </div>
	            
	            <br><br><br><br><br>
	            <h3 class="text-capitalize mb-5" style="font-weight: 900;">* 상품 홍보기간</h3>
	            <div class="col-lg-6">
	              <div class="form-group">
	                <label for="inputName">상품 판매 시작일</label>
	                <input type="date" class="form-control border-0 bg-smoke">
	              </div>
	            </div>
	
	            <div class="col-lg-6">
	              <div class="form-group">
	                <label for="inputName">상품 판매 종료일</label>
	                <input type="date" class="form-control border-0 bg-smoke">
	              </div>
	            </div>
	
	          </div>
	          
	          <br><br>
	

	    
	          <div class="text-center text-md-start text-lg-end">
	            <button type="submit" onclick="" class="btn btn-primary text-uppercase" style="background-color: RGB(112, 217, 223); border: none;">
	              상품 등록 승인
	            </button>
	            <button type="submit" onclick="" class="btn btn-primary text-uppercase" style="background-color: RGB(112, 217, 223); border: none;">
	              상품 등록 반려
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
    
<!-- ====================================
——— FOOTER SECTION
===================================== -->
    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>

</body>
</html>