<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"/>
	
	<body id="body" class="up-scroll">


<!-- ====================================
———	BANNER SECTION
===================================== -->
<div align="center">
  <img src="${pageContext.request.contextPath}/resources/img/map.webp" alt="">
</div>


<!-- ====================================
———	SEARCH SECTION
===================================== -->
<section class="bg-dark-light py-7">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-xl-3">
        <div class="section-title-bg mb-1 mb-lg-3 mb-xl-0">
          <h1 class="text-white text-uppercase mb-0">일정 검색</h1>
          <h2 class="text-white text-uppercase font-weight-bold mb-0">나의 <span class="text-primary">여행일정</span></h2>
        </div>
      </div>
    
      <div class="col-xl-9">
        <form class="" action="index.html" method="GET">
          <div class="row">
            <div class="col-lg-10">
              <div class="row">
                <div class="col-md-6 col-lg-3">
                  <div class="select-dropdown">
                    <div class="mb-3 mb-lg-0">
                      <div class="select-default select-search-box">
                        <select class="select-option">
                          <option>경기도</option>
                          <option>충청도</option>
                          <option>경상도</option>
                          <option>제주도</option>
                        </select>
                      </div>
                    </div>
                  </div>
                </div>
    
                <div class="col-md-6 col-lg-3">
                  <div class="mb-3 form-group-icon mb-lg-0">
                    <i class="far fa-calendar-alt" aria-hidden="true"></i>
                    <input type="text" class="form-control daterange-picker" autocomplete="off" name="dateRange" value=""
                      placeholder="MM/DD/YYYY" />
                  </div>
                </div>
    
                <div class="col-md-6 col-lg-3">
                  <div class="mb-3 form-group-icon mb-lg-0">
                    <i class="far fa-calendar-alt" aria-hidden="true"></i>
                    <input type="text" class="form-control daterange-picker" autocomplete="off" name="dateRange" value=""
                      placeholder="MM/DD/YYYY" />
                  </div>
                </div>
    
                <div class="col-md-6 col-lg-3">
                  <div class="select-dropdown">
                    <div class="mb-3 mb-lg-0">
                      <div class="select-default select-search-box">
                        <select class="select-option">
                          <option>100만원 - 120만원</option>
                          <option>120만원 - 140만원</option>
                          <option>140만원 - 160만원</option>
                          <option>160만원 - 180만원</option>
                        </select>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
    
            <div class="col-lg-2">
              <button class="btn btn-primary text-uppercase" type="button" onclick="location.href='javascript:void(0)';">
                검색
              </button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</section>



<!-- ====================================
———	COUNTER SECTION
===================================== -->
<section class="counter-up dzsparallaxer auto-init use-loading counterup-paralax">
  <div class="divimage dzsparallaxer--target" style="height: 700px;" data-src="${pageContext.request.contextPath}/resources/img/home/promotion/promotion-2.jpg">
  </div>
  
  <div class="container paralax-container">
    <div class="row align-items-center text-center" id="counter">
      <div class="col-6 col-md-3 mb-5 mb-md-0">
        <div class="icon icon-lg rounded-circle mx-auto bg-primary mb-3">
          <i class="fas fa-map-marker-alt text-white" aria-hidden="true"></i>
        </div>
        <h1 class="counter-value mb-2" data-count="179">0</h1>
        <h6 class="">Destinations</h6>
      </div>

      <div class="col-6 col-md-3 mb-5 mb-md-0">
        <div class="icon icon-lg rounded-circle mx-auto bg-primary mb-3">
          <i class="fa fa-gift text-white" aria-hidden="true"></i>
        </div>
        <h1 class="counter-value mb-2" data-count="48">0</h1>
        <h6 class="">Tour pack</h6>
      </div>

      <div class="col-6 col-md-3">
        <div class="icon icon-lg rounded-circle mx-auto bg-primary mb-3">
          <i class="far fa-smile text-white" aria-hidden="true"></i>
        </div>
        <h1 class="counter-value mb-2" data-count="4562">0</h1>
        <h6 class="">Happy clients</h6>
      </div>

      <div class="col-6 col-md-3">
        <div class="icon icon-lg rounded-circle mx-auto bg-primary mb-3">
          <i class="fa fa-life-ring text-white" aria-hidden="true"></i>
        </div>
        <h1 class="counter-value mb-2" data-count="24">0</h1>
        <h6 class="">Hours support</h6>
      </div>
    </div>
  </div>
</section>

<!-- ====================================
———	PACKAGES SECTION
===================================== -->
<section class="py-10">
  <div class="container">
    <div class="text-center section-title">
      <h2 class="text-uppercase font-weight-bold position-relative">
        <span class="bg-white">
          Our Packages
        </span>
      </h2>
      <p class="text-capitalize text-center">Ut facilisis facilisis metus quis semper</p>
    </div>

    <div id="filters" class="button-group">
      <button class="button is-checked" data-filter="*">All Places</button>
      <button class="button" data-filter=".asia">충청도</button>
      <button class="button" data-filter=".america">제주도</button>
      <button class="button" data-filter=".africa">경상도</button>
    </div>

    <div class="row grid">
      <div class="col-md-6 col-lg-4 element-item america">
        <div class="media media-hoverable justify-content-center mb-2 mb-md-4 mb-lg-6">
          <a href="single-package-fullwidth.html" class="media-content">
            <img class="media-img lazyestload" data-src="${pageContext.request.contextPath}/resources/img/home/packages/packages-1.jpg" src="${pageContext.request.contextPath}/resources/img/home/packages/packages-1.jpg" alt="Generic placeholder image">
            <div class="media-object">
              <h3 class="text-uppercase mb-0">태안 꽃 박람회</h3>
            </div>
            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">$399</span></h3>
                <p class="text-white mb-0">
                  <span class="me-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 27 Jan, 2021
                </p>
              </div>
            </div>
          </a>
        </div>
      </div>
      
      <div class="col-md-6 col-lg-4 element-item africa">
        <div class="media media-hoverable justify-content-center mb-2 mb-md-4 mb-lg-6">
          <a href="single-package-fullwidth.html" class="media-content">
            <img class="media-img lazyestload" data-src="${pageContext.request.contextPath}/resources/img/home/packages/packages-2.jpg" src="${pageContext.request.contextPath}/resources/img/home/packages/packages-2.jpg" alt="Generic placeholder image">
            <div class="media-object">
              <h3 class="text-uppercase mb-0">제주도 올레길 투어</h3>
            </div>
            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">$599</span></h3>
                <p class="text-white mb-0">
                  <span class="me-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 09 Feb, 2021
                </p>
              </div>
            </div>
          </a>
        </div>
      </div>

      <div class="col-md-6 col-lg-4 element-item asia america">
        <div class="media media-hoverable justify-content-center mb-2 mb-md-4 mb-lg-6">
          <a href="single-package-fullwidth.html" class="media-content">
            <img class="media-img lazyestload" data-src="${pageContext.request.contextPath}/resources/img/home/packages/packages-3.jpg" src="${pageContext.request.contextPath}/resources/img/home/packages/packages-3.jpg" alt="Generic placeholder image">
            <div class="media-object">
              <h3 class="text-uppercase mb-0">부산 맛집 투어</h3>
            </div>
            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">$299</span></h3>
                <p class="text-white mb-0">
                  <span class="me-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 14 Feb, 2021
                </p>
              </div>
            </div>
          </a>
        </div>
      </div>

      <div class="col-md-6 col-lg-4 element-item asia africa">
        <div class="media media-hoverable justify-content-center mb-2 mb-md-4 mb-lg-0">
          <a href="single-package-fullwidth.html" class="media-content">
            <img class="media-img lazyestload" data-src="${pageContext.request.contextPath}/resources/img/home/packages/packages-4.jpg" src="${pageContext.request.contextPath}/resources/img/home/packages/packages-4.jpg" alt="Generic placeholder image">
            <div class="media-object">
              <h3 class="text-uppercase mb-0">전주 한옥마을 여행</h3>
            </div>
            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">$399</span></h3>
                <p class="text-white mb-0">
                  <span class="me-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 11 Jan, 2021
                </p>
              </div>
            </div>
          </a>
        </div>
      </div>

      <div class="col-md-6 col-lg-4 element-item america">
        <div class="media media-hoverable justify-content-center mb-2 mb-md-0">
          <a href="single-package-fullwidth.html" class="media-content">
            <img class="media-img lazyestload" data-src="${pageContext.request.contextPath}/resources/img/home/packages/packages-5.jpg" src="${pageContext.request.contextPath}/resources/img/home/packages/packages-5.jpg" alt="Generic placeholder image">
            <div class="media-object">
              <h3 class="text-uppercase mb-0">경주 불국사 투어</h3>
            </div>
            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">$199</span></h3>
                <p class="text-white mb-0">
                  <span class="me-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 02 Feb, 2021
                </p>
              </div>
            </div>
          </a>
        </div>
      </div>

      <div class="col-md-6 col-lg-4 element-item asia africa">
        <div class="media media-hoverable justify-content-center">
          <a href="single-package-fullwidth.html" class="media-content">
            <img class="media-img lazyestload" data-src="${pageContext.request.contextPath}/resources/img/home/packages/packages-6.jpg" src="${pageContext.request.contextPath}/resources/img/home/packages/packages-6.jpg" alt="Generic placeholder image">
            <div class="media-object">
              <h3 class="text-uppercase mb-0">가평 MT 여행</h3>
            </div>
            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">$799</span></h3>
                <p class="text-white mb-0">
                  <span class="me-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 26 Feb, 2021
                </p>
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
  </div>
</section>

  </div><!-- element wrapper ends -->
	
	<jsp:include page="footer.jsp"/>
</body>
</html>