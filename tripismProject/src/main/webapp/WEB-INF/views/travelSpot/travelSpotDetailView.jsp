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
				<button type="button" style="border: none; background-color: white;" onclick="increaseLike('${s.spotContentId}');">
					<img src="${pageContext.request.contextPath}/resources/img/icons/after-like.png" style="width: 25px; height: 25px;" alt="">
					<span class="num" id="conLike">${s.spotLike }</span>
				</button>
				<span class="num_view">
	        <img src="${pageContext.request.contextPath}/resources/img/icons/view.png" style="width: 25px; height: 25px;" alt="">
	        <span class="num" id="conRead">${s.spotCount }</span>
	      		</span>
				<span class="rline" style="float: right;">
						<button type="button" style="border: none; background-color: white;" onclick="setFavoContentDetail();">
	            <img src="${pageContext.request.contextPath}/resources/img/icons/after-wishlist.png" style="width: 25px; height: 25px;" alt="" data-bs-toggle="modal" data-bs-target="#bookMark">
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
			  
			  <c:choose>
				  <c:when test="${checkImg eq 0 }">
					  <div>
					  	<img class="" data-src="" src="${s.spotImgPath}" alt="image" style="height: 512px;">
					  </div>
				  </c:when>
				  <c:otherwise>
					  <c:forEach var="i" items="${al3 }">
				          <div class="item">
				            <img class="" data-src="" src="${i.originimgurl}" alt="image" style="height: 512px;">
				          </div>
			          </c:forEach>
		          </c:otherwise>
	          
	          </c:choose>
	          
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
	        


			
	
	        <div class="mb-7">
	          <br>
	          <h2 class="text-uppercase mb-6">상세정보</h2>
	          <hr>
	          <div class="inr">
	            <ul>
	              <!-- 공통정보 -->

	              <li>
	                <strong>주소</strong>
	                <br>
	                <span>
	                	${s.spotAddress }
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>홈페이지</strong>
	                <br>
	                <span>
	                  	<c:choose>
	                    	<c:when test="${al2.homepage eq ''}">
								등록된 정보가 없습니다.
							</c:when>
							<c:otherwise>
	                    		${al2.homepage }
							</c:otherwise>
						</c:choose>
	                </span>

	                <br><br>
	              </li>
	              
	              <!-- 관광지(타입:12) -->
	              
	              
	              <c:if test="${s.spotContentType eq '12' }">
	              <li>
	                <strong>문의 및 안내</strong>
	                <br>
	                <span class="pc">
	                	<c:choose>
	                    	<c:when test="${al.infocenter eq ''}">
								등록된 정보가 없습니다.
							</c:when>
							<c:otherwise>
	                    		${al.infocenter }
							</c:otherwise>
						</c:choose>
	                </span>
	                <br><br>
	              </li>
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
	              </c:if>
	              
	              <!-- 문화시설(타입:14) -->

	              <c:if test="${s.spotContentType eq '14' }">
	              
	              <li>
	                <strong>문의 및 안내</strong>
	                <br>
	                <span class="pc">
						<c:choose>
							<c:when test="${al.infocenterculture eq '' or al.infocenterculture eq null}">
								등록된 정보가 없습니다.
							</c:when>
							<c:otherwise>
	                    		${al.infocenterculture }
							</c:otherwise>
						</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>수용인원</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.accomcountculture eq '' or al.accomcountculture eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.accomcountculture }
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
		                	<c:when test="${al.chkbabycarriageculture eq '' or al.chkbabycarriageculture eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.chkbabycarriageculture }
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
		                	<c:when test="${al.chkcreditcardculture eq '' or al.chkcreditcardculture eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.chkcreditcardculture }
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
		                	<c:when test="${al.chkpetculture eq '' or al.chkpetculture eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.chkpetculture }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>할인정보</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.discountinfo eq '' or al.discountinfo eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.discountinfo }
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
		                	<c:when test="${al.parkingculture eq '' or al.parkingculture eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.parkingculture }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>주차요금</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.parkingfee eq '' or al.parkingfee eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.parkingfee }
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
		                	<c:when test="${al.restdateculture eq '' or al.restdateculture eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.restdateculture }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>이용요금</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.usefee eq '' or al.usefee eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.usefee }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>규모</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.scale eq '' or al.scale eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.scale }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>관람소요시간</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.spendtime eq '' or al.spendtime eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.spendtime }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              </c:if>
	              
	              <!-- 행사/공연/축제(타입:15) -->

	              <c:if test="${s.spotContentType eq '15' }">
	              
	              <li>
	                <strong>관람가능연령</strong>
	                <br>
	                <span class="pc">
						<c:choose>
							<c:when test="${al.agelimit eq '' or al.agelimit eq null}">
								등록된 정보가 없습니다.
							</c:when>
							<c:otherwise>
	                    		${al.agelimit }
							</c:otherwise>
						</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>예매처</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.bookingplace eq '' or al.bookingplace eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.bookingplace }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>할인정보</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.discountinfofestival eq '' or al.discountinfofestival eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.discountinfofestival }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>행사종료일</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.eventenddate eq '' or al.eventenddate eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.eventenddate }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>행사홈페이지</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.eventhomepage eq '' or al.eventhomepage eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.eventhomepage }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>행사장소</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.eventplace eq '' or al.eventplace eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.eventplace }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>행사시작일</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.eventstartdate eq '' or al.eventstartdate eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.eventstartdate }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>축제등급</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.festivalgrade eq '' or al.festivalgrade eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.festivalgrade }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>행사장위치안내</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.placeinfo eq '' or al.placeinfo eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.placeinfo }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>공연시간</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.playtime eq '' or al.playtime eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.playtime }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>행사프로그램</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.program eq '' or al.program eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.program }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>관람소요시간</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.spendtimefestival eq '' or al.spendtimefestival eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.spendtimefestival }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>주관사정보</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.sponsor2 eq '' or al.sponsor2 eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.sponsor2 }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>주관사연락처</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.sponsor2tel eq '' or al.sponsor2tel eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.sponsor2tel }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>이용요금</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.usetimefestival eq '' or al.usetimefestival eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.usetimefestival }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              </c:if>
	              
	              <!-- 레포츠(타입:28) -->

	              <c:if test="${s.spotContentType eq '28' }">
	              
	              <li>
	                <strong>수용인원</strong>
	                <br>
	                <span class="pc">
						<c:choose>
							<c:when test="${al.accomcountleports eq '' or al.accomcountleports eq null}">
								등록된 정보가 없습니다.
							</c:when>
							<c:otherwise>
	                    		${al.accomcountleports }
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
		                	<c:when test="${al.chkbabycarriageleports eq '' or al.chkbabycarriageleports eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.chkbabycarriageleports }
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
		                	<c:when test="${al.chkcreditcardleports eq '' or al.chkcreditcardleports eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.chkcreditcardleports }
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
		                	<c:when test="${al.chkpetleports eq '' or al.chkpetleports eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.chkpetleports }
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
		                	<c:when test="${al.expagerangeleports eq '' or al.expagerangeleports eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.expagerangeleports }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>개장기간</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.openperiod eq '' or al.openperiod eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.openperiod }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>주차요금</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.parkingfeeleports eq '' or al.parkingfeeleports eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.parkingfeeleports }
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
		                	<c:when test="${al.parkingleports eq '' or al.parkingleports eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.parkingleports }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>예약안내</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.reservation eq '' or al.reservation eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.reservation }
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
		                	<c:when test="${al.restdateleports eq '' or al.restdateleports eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.restdateleports }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>규모</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.scaleleports eq '' or al.scaleleports eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.scaleleports }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>입장료</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.usefeeleports eq '' or al.usefeeleports eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.usefeeleports }
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
		                	<c:when test="${al.usetimeleports eq '' or al.usetimeleports eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.usetimeleports }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              </c:if>
	              
	              <!-- 숙박(타입:32) -->

	              <c:if test="${s.spotContentType eq '32' }">
	              
	              <li>
	                <strong>수용가능인원</strong>
	                <br>
	                <span class="pc">
						<c:choose>
							<c:when test="${al.accomcountlodging eq '' or al.accomcountlodging eq null}">
								등록된 정보가 없습니다.
							</c:when>
							<c:otherwise>
	                    		${al.accomcountlodging }
							</c:otherwise>
						</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>입실시간</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.checkintime eq '' or al.checkintime eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.checkintime }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>퇴실시간</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.checkouttime eq '' or al.checkouttime eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.checkouttime }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>객실내취사여부</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.chkcooking eq '' or al.chkcooking eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.chkcooking }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>문의및안내</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.infocenterlodging eq '' or al.infocenterlodging eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.infocenterlodging }
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
		                	<c:when test="${al.parkinglodging eq '' or al.parkinglodging eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.parkinglodging }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>픽업서비스</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.pickup eq '' or al.pickup eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.pickup }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>객실수</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.roomcount eq '' or al.roomcount eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.roomcount }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>예약안내</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.reservationlodging eq '' or al.reservationlodging eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.reservationlodging }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>예약안내홈페이지</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.reservationurl eq '' or al.reservationurl eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.reservationurl }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>객실유형</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.roomtype eq '' or al.roomtype eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.roomtype }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>규모</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.scalelodging eq '' or al.scalelodging eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.scalelodging }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>부대시설</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.subfacility eq '' or al.subfacility eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.subfacility }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>환불규정</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.refundregulation eq '' or al.refundregulation eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.refundregulation }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              </c:if>
	              
	              <!-- 음식점(타입:39) -->

	              <c:if test="${s.spotContentType eq '39' }">
	              
	              <li>
	                <strong>신용카드가능정보</strong>
	                <br>
	                <span class="pc">
						<c:choose>
							<c:when test="${al.chkcreditcardfood eq '' or al.chkcreditcardfood eq null}">
								등록된 정보가 없습니다.
							</c:when>
							<c:otherwise>
	                    		${al.chkcreditcardfood }
							</c:otherwise>
						</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>할인정보</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.discountinfofood eq '' or al.discountinfofood eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.discountinfofood }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>대표메뉴</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.firstmenu eq '' or al.firstmenu eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.firstmenu }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>메뉴</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.treatmenu eq '' or al.treatmenu eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.treatmenu }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>문의및안내</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.infocenterfood eq '' or al.infocenterfood eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.infocenterfood }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>어린이놀이방여부</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.kidsfacility eq '' or al.kidsfacility eq null or al.kidsfacility eq 0}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.kidsfacility }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>영업시간</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.opentimefood eq '' or al.opentimefood eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.opentimefood }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>포장가능</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.packing eq '' or al.packing eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.packing }
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
		                	<c:when test="${al.parkingfood eq '' or al.parkingfood eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.parkingfood }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>예약안내</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.reservationfood eq '' or al.reservationfood eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.reservationfood }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>휴무일</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.restdatefood eq '' or al.restdatefood eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.restdatefood }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>규모</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.scalefood eq '' or al.scalefood eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.scalefood }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>좌석수</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.seat eq '' or al.seat eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.seat }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              </c:if>
	              	              <!-- 쇼핑(타입:38) -->

	              <c:if test="${s.spotContentType eq '38' }">
	              
	              <li>
	                <strong>유모차대여정보</strong>
	                <br>
	                <span class="pc">
						<c:choose>
							<c:when test="${al.chkbabycarriageshopping eq '' or al.chkbabycarriageshopping eq null}">
								등록된 정보가 없습니다.
							</c:when>
							<c:otherwise>
	                    		${al.chkbabycarriageshopping }
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
		                	<c:when test="${al.chkcreditcardshopping eq '' or al.chkcreditcardshopping eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.chkcreditcardshopping }
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
		                	<c:when test="${al.chkpetshopping eq '' or al.chkpetshopping eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.chkpetshopping }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>문의및안내</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.infocentershopping eq '' or al.infocentershopping eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.infocentershopping }
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
		                	<c:when test="${al.opendateshopping eq '' or al.opendateshopping eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.opendateshopping }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>영업시간</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.opentime eq '' or al.opentime eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.opentime }
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
		                	<c:when test="${al.parkingshopping eq '' or al.parkingshopping eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.parkingshopping }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>휴무일</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.restdateshopping eq '' or al.restdateshopping eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.restdateshopping }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>판매품목</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.saleitem eq '' or al.saleitem eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.saleitem }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>판매품목별가격</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.saleitemcost eq '' or al.saleitemcost eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.saleitemcost }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>규모</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.scaleshopping eq '' or al.roomtype eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.scaleshopping }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              <li>
	                <strong>매장안내</strong>
	                <br>
	                <span>
	                	<c:choose>
		                	<c:when test="${al.shopguide eq '' or al.shopguide eq null}">
		                  		등록된 정보가 없습니다.
		                  	</c:when>
		                  	<c:otherwise>
		                  		${al.shopguide }
		                  	</c:otherwise>
	                  	</c:choose>
	                </span>
	                <br><br>
	              </li>
	              </c:if>
	              

	            </ul>
	          </div>
	        </div>
	
	        
	
	
	
	        <div class="mb-7">
				<table id="replyArea" class="table">
					<thead>
			            <br>
			            <h2 class="text-uppercase mb-6">여행톡 (<span id="rcount">0</span>)</h2>
			            <hr>
			            <div class="form-group mb-6">
			              <textarea id="replyContent" class="form-control border-0 bg-smoke" placeholder="댓글을 남겨주세요!" rows="6" style="resize: none; height: 100px;"></textarea>
			              <br>
			              <button type="button" onclick="writeReply();" style="float: right;" class="btn btn-hover btn-outline-secondary text-uppercase">
			                댓글작성
			              </button>
			            </div>
		            </thead>
	          
	          
		          <br><br>
		        	
		          <tbody>
		        
		          </tbody>
		          </table>
		          
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
	      <h2 class="mb-0">어떤 여행지를 찾으시나요? <span style="color: darkgray;">(${s.areaTitle }지역의 다른 여행지)</span></h2>
	    </div>
		<div class="row" id="spotList">
			
			<input type="hidden" name="currentPage" value="1">
			  <div>
				

			  <div>
	

	
			  </div>
		

	
			  <div>
				
			  </div>
		
			  </div>
		
		
		</div>
	
	    </div>
	</section>
	
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
			
			let currentPage = 1;

			$(function(){
				selectReplyList();
				selectSpotList(currentPage, ${s.spotContentType}, ${s.areaCategoryNo});
			})
			
			function writeReply() {
				console.log("ddasdasdasdas23213");
				if($("#replyContent").val().trim().length != 0) {
					
					$.ajax({
						url:"replyInsert.sp",
						data:{
							boardNo:${s.spotNo },
							replyContents:$("#replyContent").val(),
							memNo:${loginUser.memNo}
						},
								success:function(status){
								if(status == "success"){
								selectReplyList();
								$("#replyContent").val("");
							}
						}, error:function(){
							console.log("댓글 작성용 ajax 통신 실패!");
						}
					});
				}else{
					alert("댓글 작성 후 등록이 가능합니다.");
				}
			}
			
			function selectReplyList() { 
				$.ajax({
					url:"replylist.sp",
					data:{boardNo:${s.spotNo}},
					success:function(list){
						console.log(list);
						
						let value = "";
						
						for(let i in list) {
							value += "<div class='media mb-6'>"
									+ "<a class='me-6' href='#'>"
									+ "<img class='rounded' data-src='${pageContext.request.contextPath}/resources/img/user (2).jfif' src='${pageContext.request.contextPath}/resources/img/user (2).jfif' alt='Generic placeholder image' style='width: 50px; height: 50px;'>"
									+ "</a>"
									+ "<div class='media-body'>"
									+ "<h5>"+list[i].replyWriter+"</h5>"
									+ "<p class='mb-0' style='font-size:12pt;'>"+list[i].replyContents+"</p>"
									+ "<p style='float:right; font-size:10pt; color:black;'>"+list[i].replyDate+"</p>"
									+ "</div>"
									+ "</div>"
						}
						
						$("#replyArea tbody").html(value);
						$("#rcount").text(list.length);
						
					}, error:function(){
						console.log("댓글 리스트 조회용 ajax 통신 실패!");
					}
				});
			}
			

			function increaseLike(contentId) {

				location.href="increaseLike.sp?contentId="+contentId;

			}


			let isUpdateList = true;
			window.onscroll = function(e) {
			//   console.log(document.body.clientHeight ,  window.innerHeight, window.scrollY , document.body.scrollHeight)
				if((window.innerHeight + window.scrollY) >= (document.body.offsetHeight)) { 
					if(isUpdateList){

						console.log("111");
						
						isUpdateList = false;
						
						selectSpotList(++currentPage, ${s.spotContentType}, ${s.areaCategoryNo});
						
						isUpdateList = true;
					}

				}
			}

			function selectSpotList(currentPage, spotContentType, areaCategoryNo) {
				let value = "";
				console.log("asasdasdasdasdas22");
				$.ajax({
					url:"searchSpotListTwo.sp",
					data:{
							currentPage:currentPage,
							spotContentType:spotContentType,
							areaCategoryNo:areaCategoryNo
						},
					success:function(list){
						for(let i=0; i<list.length; i++){
							value += '<div class="col-md-6 col-lg-4 mb-5">'
									+ '<form class="postForm" action="detailAPI.sp" method="post">'
									+ '<input type="hidden" name="contentId" value="'+list[i].spotContentId+'">'
									+ '<input type="hidden" name="contentType" value="'+list[i].spotContentType+'">'
									+ '</form>'
									+ '<div class="card card-hover">'
									+ '<a href="javascript:void(0)" class="position-relative">'
									if(list[i].spotImgPath == null){
										//value += '<img class="card-img-top lazyestload" data-src="resources/img/logo.png" src="" alt="Card image cap"></img>';
										
									}else{
										value += '<img class="card-img-top" data-src="'+list[i].spotImgPath+'" src="'+list[i].spotImgPath+'" alt="Card image cap" style="height: 232px;"></img>';
									}
									value += '<div onclick="selectSpotAPI('+list[i].spotContentId+', '+list[i].spotContentType+');" class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">'
									+ '</div>'
									+ '</a>'
									+ '<div class="card-body px-4" style="background-color: rgba(112, 217, 223, 0.01) height:150px;">'
									+ '<p style="color: gray; font-size: 9;">'
									+ '<img src="resources/img/icons/map.png" style="width: 16px; height: 16px;" alt="">'
									+ list[i].areaTitle + " " + list[i].sigunguTitle
									+ '</p>'
									+ '<h5>'
									+ '<a href="javascript:selectSpotAPI('+list[i].spotContentId+', '+list[i].spotContentType+');" class="card-title text-uppercase">'+list[i].spotTitle+'</a>'
									+ '<h5>'
									+ '<div class="post_area" style="float: right;">'
									+ '<span class="num_like">'
									+ '<img src="resources/img/icons/after-like.png" style="width: 18px; height: 18px;" alt="">'
									+ '<span class="num" id="conRead" style="font-size: 10pt">&nbsp&nbsp'+list[i].spotLike+'&nbsp&nbsp&nbsp</span>'
									+ '</span>'
									+ '<span class="num_view">'
									+ '<img src="resources/img/icons/view.png" style="width: 18px; height: 18px;" alt="">'
									+ '<span class="num" id="conRead" style="font-size: 10pt">&nbsp&nbsp'+list[i].spotCount+'</span>'
									+ '</span>'
									+ '</div>'
									+ '</div>'
									+ '</div>'
									+ '</div>'

								
						}
						console.log(currentPage);
						console.log(list);
						$("#spotList").append(value);
					},
					error:function(){
						console.log("실패");
					}
				})
			}

		function selectSpotAPI(contentId, contentType) {

			location.href="detailAPI.sp?contentId="+contentId+"&contentType="+contentType;

		}
				
				
			
		</script>
		
		<!-- 북마크모달창 -->
		<div class="modal fade" id="bookMark" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
     <div class="modal-subin">
      <div class="modal-content" style="width:360px;">
        <div class="modal-header rounded" id="modalTop">
          <h3 class="modal-title text-uppercase font-weight-bold">⭐ 즐겨찾기하기</h3>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>

            <!-- 반복 -->
            <c:forEach var="f" items="${folderList }">
            <form action="insertBookMark.do" id="insertBookMark">
              <input type="hidden" value="${s.spotNo }" name="spotNo" id="spotNo">
              <input type="hidden" value="${f.folderNo }" name="folderNo" id="folderNo">
	            <button>
		            <div id="folderWrap" style="padding-top:10px; padding-left:50px; width:300px; padding-bottom:10px; cursor: pointer;">
					  <div class="mb-3" id="bookMarkImg" style="float: left; height: 40px;">
					    <img src="${pageContext.request.contextPath}/resources/img/bookMark.png" style="width: 35x; height: 35px; border-radius: 50%;">
					  </div>
					  <div class="folderInfo" style="padding-top:5px;">
					    <div class="folderName">
					      <h5 style="padding-left: 45px;">${f.folderName }</h5>
					    </div>
						<!--     <div class="place">
					      <p style="padding-left: 40px; margin-top: 15px;">📍n(개)</p>
					    </div> -->
					  </div>
					  <div style="height: 1px; padding-top:3px;">
					    <hr>
					  </div>
					</div>
				</button>
			</form>
			</c:forEach>
			<!-- 반복끝 -->

      </div>
    </div>
  </div>
  </div>

  <!-- 북마크 insert script -->
  <script>
	  $(function(){
			$("okBtn").click(function(){
				const $folderNameInput = $("#insertFolder input[name=spotNo]");
				const $folderNoInput = $("#insertBookMark input[name=folderNo]");
				$.ajax({
					url:"insertBookMark.do",
					data:{sponNo:$folderNameInput.val(),
						  folderNo:$memNoInput.val()
						},
					succss:function(count){
						console.log(count);
						alert("추가성공");
				 }, error : function(){	
						console.log("ajax 통신 실패");
					}
				})
				
			})
		 
			})
  
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