<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>여행지 상세보기</title>
    
    <!-- Plugins css Style -->
    
    <link href='${pageContext.request.contextPath}/resources/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
    <link href="${pageContext.request.contextPath}/resources/plugins/animate/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/plugins/menuzord/css/menuzord.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/plugins/menuzord/css/menuzord-animations.css" rel="stylesheet">
    <link href='${pageContext.request.contextPath}/resources/plugins/fancybox/jquery.fancybox.min.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/plugins/rateyo/jquery.rateyo.min.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/plugins/owl-carousel/owl.carousel.min.css' rel='stylesheet' media='screen'>
    <link href='${pageContext.request.contextPath}/resources/plugins/owl-carousel/owl.theme.default.min.css' rel='stylesheet' media='screen'>

    <!-- CUSTOM CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/star.css" id="option_style" rel="stylesheet">

    <!-- FAVICON -->
    <link rel="shortcut icon" type="image/png" href="assets/img/favicon.png"/>
    
   
    

</head>
<body id="body" class="up-scroll">
	<!-- 카카오맵 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1986b6865e95c60fac90b9fdaef0579e"></script>
	
	<jsp:include page="../common/header.jsp"/>
	
	<!-- ====================================
	———	PAGE TITLE
	===================================== -->
	<section class="page-title">
	  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(resources/img/pages/page-title-bg13.jpg);">
	    <div class="container">
	      <div class="row align-items-center justify-content-center" style="height: 200px;">
	        <div class="col-lg-6">
	          <div class="page-title-content">
	            <div class="">
	              <h2 class="text-uppercase text-white font-weight-bold">여행지 정보</h2>
	            </div>
	            <p class="text-white mb-0"></p>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
	
	
	<!-- ====================================
	———	PACKAGES SECTION
	===================================== -->
	<section class="py-10">
	  <div class="container" style="width: 800px">
	
	    <div class="content-title" align="center">
	      <div class="">
	        <h2 class="font-weight-bold" style="font-size: 40px;">${s.spotTitle}</h2>
	      </div>
	      <br>
	      <p class="mb-0" style="font-size: 15px;">${s.areaTitle} ${s.sigunguTitle}</p>
	      <br><br>
	    </div>
	
	    <div class="post_area">
				<button type="button" style="border: none; background-color: white;" onclick="setLike();">
					<img src="${pageContext.request.contextPath}/resources/img/icons/after-like.png" style="width: 25px; height: 25px;" alt="">
					<span class="num" id="conLike">${s.spotLike }</span>
				</button>
				<span class="num_view">
	        <img src="${pageContext.request.contextPath}/resources/img/icons/view.png" style="width: 25px; height: 25px;" alt="">
	        <span class="num" id="conRead">${s.spotCount }</span>
	      		</span>
				<span class="rline" style="float: right;">
						<button type="button" style="border: none; background-color: white;" onclick="setFavoContentDetail();">
	            <img src="${pageContext.request.contextPath}/resources/img/icons/after-wishlist.png" style="width: 25px; height: 25px;" alt="">
	          </button>
	          <button type="button" style="border: none; background-color: white;" onclick="openShare();">
	            <img src="${pageContext.request.contextPath}/resources/img/icons/share.png" style="width: 25px; height: 25px;" alt="">
	          </button>
				</span>
			</div>
	
	    <hr>
	    <br>
	
	    <div class="row">
	
	      <div class="col-md-12">
	        <div id="package-slider" class="owl-carousel owl-theme package-slider">
			  
			  <c:forEach var="i" items="${al3 }">
		          <div class="item">
		            <img class="" data-src="" src="${i.originimgurl}" alt="image">
		          </div>
	          </c:forEach>
	          
	        </div>
	
	        <div class="mt-8">
	          <h2 class="text-uppercase mb-5">상세정보</h2>
	          <hr style="color: black;">
	          <p class="mb-6">
	          	${al2.overview }
	          </p>
	        </div>
	        
	
	
	        <div class="mb-7">
	          <br>
	          <h2 class="text-uppercase mb-6">위치</h2>
	          <hr>
	          <div class="mb-7" id="map" style="width:100%; height:400px;"></div>
	        </div>
	        

			<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = { 
			        center: new kakao.maps.LatLng(${s.spotMapy}, ${s.spotMapx}), // 지도의 중심좌표
			        level: 5 // 지도의 확대 레벨
			    };
			
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			
			// 마커가 표시될 위치입니다 
			var markerPosition  = new kakao.maps.LatLng(${s.spotMapy}, ${s.spotMapx}); 
			
			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
			    position: markerPosition
			});
			
			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
			
			// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
			// marker.setMap(null);    
			</script>
			
	
	        <div class="mb-7">
	          <br>
	          <h2 class="text-uppercase mb-6">상세정보</h2>
	          <hr>
	          <div class="inr">
	            <ul>
	              <!-- 공통정보 (주소까지) -->
	              <li>
	                <strong>문의 및 안내</strong>
	                <br>
	                <span class="pc">
	                    ${al.infocenter }
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>홈페이지</strong>
	                <br>
	                <span>
	                  	${al2.homepage }
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>주소</strong>
	                <br>
	                <span>
	                	${s.spotAddress }
	                </span>
	                <br><br>
	              </li>
	              
	              <!-- 관광지(타입:12) -->
	              <li>
	                <strong>수용인원</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.accomcount eq ''}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.accomcount }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>유모차대여정보</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.chkbabycarriage eq ''}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.chkbabycarriage }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>신용카드가능정보</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.chkcreditcard eq ''}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.chkcreditcard }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>애완동물동반가능정보</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.chkpet eq ''}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.chkpet }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>체험가능연령</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.expagerange eq ''}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.expagerange }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>체험안내</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.expguide eq ''}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.expguide }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>개장일</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.opendate eq ''}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.opendate }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>주차시설</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.parking eq ''}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.parking }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>쉬는날</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.restdate eq ''}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.restdate }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>이용시기</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.useseason eq ''}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.useseason }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>이용시간</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.usetime eq ''}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.usetime }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>

	            </ul>
	          </div>
	        </div>
	
	        
	
	
	
	        <div class="mb-7">
	
	          <form class="">
	            <br>
	            <h2 class="text-uppercase mb-6">여행톡 (3)</h2>
	            <hr>
	            <div class="form-group mb-6">
	              <textarea class="form-control border-0 bg-smoke" placeholder="댓글을 남겨주세요!" rows="6" style="resize: none; height: 100px;"></textarea>
	              <br>
	              <button type="button" style="float: right;" onclick="location.href='javascript:void(0)';"
	                class="btn btn-hover btn-outline-secondary text-uppercase">
	                댓글작성
	              </button>
	            </div>
	          
	          </form>
	          
	          <br><br>
	        
	          <div class="media mb-6">
	            <a class="me-6" href="">
	              <img class="rounded lazyestload" data-src="${pageContext.request.contextPath}/resources/img/user (2).jfif" src="" alt="Generic placeholder image" style="width: 50px; height: 50px;">
	            </a>
	        
	            <div class="media-body">
	              <h5>배고픈사람</h5>
	              <p class="mb-0">좋네여</p>
	            </div>
	          </div>
	        
	          <div class="media mb-6">
	            <a class="me-6" href="">
	              <img class="rounded lazyestload" data-src="${pageContext.request.contextPath}/resources/img/user (2).jfif" src="" alt="Generic placeholder image" style="width: 50px; height: 50px;">
	            </a>
	        
	            <div class="media-body">
	              <h5>아아</h5>
	              <p class="mb-0">좋아여</p>
	            </div>
	          </div>
	        
	          <div class="media">
	            <a class="me-6" href="">
	              <img class="rounded lazyestload" data-src="${pageContext.request.contextPath}/resources/img/user (2).jfif" src="" alt="Generic placeholder image" style="width: 50px; height: 50px;">
	            </a>
	            <div class="media-body">
	              <h5>우우</h5>
	              <p class="mb-0">조음</p>
	            </div>
	          </div>
	        </div>
	
	
	      </div>
	    </div>
	  </div>
	</section>
	
	<!-- ====================================
	———	PACKAGES LIKE SECTION
	===================================== -->
	<section class="pb-10">
	  <div class="container">
	    <div class="text-uppercase mb-4">
	      <h2 class="mb-0">어떤 여행지를 찾으시나요?</h2>
	    </div>
	    <div class="row">
	
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
	              <span class="num_like">
	                <img src="${pageContext.request.contextPath}/resources/img/icons/after-like.png" style="width: 15px; height: 15px;" alt="">
	                <span class="num" id="conRead" style="font-size: 10pt">37</span>
	              </span>
	              <span class="num_view">
	                <img src="${pageContext.request.contextPath}/resources/img/icons/view.png" style="width: 15px; height: 15px;" alt="">
	                <span class="num" id="conRead" style="font-size: 10pt">562</span>
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
	              <span class="num_like">
	                <img src="${pageContext.request.contextPath}/resources/img/icons/after-like.png" style="width: 15px; height: 15px;" alt="">
	                <span class="num" id="conRead" style="font-size: 10pt">25</span>
	              </span>
	              <span class="num_view">
	                <img src="${pageContext.request.contextPath}/resources/img/icons/view.png" style="width: 15px; height: 15px;" alt="">
	                <span class="num" id="conRead" style="font-size: 10pt">377</span>
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
	              <span class="num_like">
	                <img src="${pageContext.request.contextPath}/resources/img/icons/after-like.png" style="width: 15px; height: 15px;" alt="">
	                <span class="num" id="conRead" style="font-size: 10pt">17</span>
	              </span>
	              <span class="num_view">
	                <img src="${pageContext.request.contextPath}/resources/img/icons/view.png" style="width: 15px; height: 15px;" alt="">
	                <span class="num" id="conRead" style="font-size: 10pt">406</span>
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
	              <span class="num_like">
	                <img src="${pageContext.request.contextPath}/resources/img/icons/after-like.png" style="width: 15px; height: 15px;" alt="">
	                <span class="num" id="conRead" style="font-size: 10pt">11</span>
	              </span>
	              <span class="num_view">
	                <img src="${pageContext.request.contextPath}/resources/img/icons/view.png" style="width: 15px; height: 15px;" alt="">
	                <span class="num" id="conRead" style="font-size: 10pt">292</span>
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
	              <span class="num_like">
	                <img src="${pageContext.request.contextPath}/resources/img/icons/after-like.png" style="width: 15px; height: 15px;" alt="">
	                <span class="num" id="conRead" style="font-size: 10pt">9</span>
	              </span>
	              <span class="num_view">
	                <img src="${pageContext.request.contextPath}/resources/img/icons/view.png" style="width: 15px; height: 15px;" alt="">
	                <span class="num" id="conRead" style="font-size: 10pt">221</span>
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
	              <span class="num_like">
	                <img src="${pageContext.request.contextPath}/resources/img/icons/after-like.png" style="width: 15px; height: 15px;" alt="">
	                <span class="num" id="conRead" style="font-size: 10pt">8</span>
	              </span>
	              <span class="num_view">
	                <img src="${pageContext.request.contextPath}/resources/img/icons/view.png" style="width: 15px; height: 15px;" alt="">
	                <span class="num" id="conRead" style="font-size: 10pt">109</span>
	              </span>
	            </div>
	
	          </div>
	
	        </div>
	      </div>
	
	    </div>
	  </div>
	</section>
	
    <script>
      	
         	        
      
    </script>
	
	<jsp:include page="../common/footer.jsp"/>
	
	
	<!-- Javascript -->
    <script src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/menuzord/js/menuzord.js"></script>
    <script src='${pageContext.request.contextPath}/resources/plugins/fancybox/jquery.fancybox.min.js'></script>
    <script src='${pageContext.request.contextPath}/resources/plugins/rateyo/jquery.rateyo.min.js'></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/lazyestload/lazyestload.js"></script>
    <script src='${pageContext.request.contextPath}/resources/plugins/owl-carousel/owl.carousel.min.js'></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/smoothscroll/SmoothScroll.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/star.js"></script>
    

</body>
</html>