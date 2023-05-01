<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
body * {
	font-family: 'Montserrat';
}
</style>

</head>
<body>
<!-- ====================================
——— HEADER
===================================== -->
	<jsp:include page="header.jsp"/>
	
	<body id="body" class="up-scroll">


<!-- ====================================
———	BANNER SECTION
===================================== -->



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
<!-- 조회수/인기 순위로 정렬되게 하기 -->


<section class="bg-smoke py-10">
  <div class="container">
    <div class="row">


      <div class="col-md-6 col-lg-4 mb-5">
        <div class="card card-hover">
          <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#packageDetail" class="position-relative">
            <img class="card-img-top lazyestload" data-src="https://a.cdn-hotels.com/gdcs/production47/d524/cf53813b-845b-42f3-a749-74875dd8bbf1.jpg?impolicy=fcrop&w=800&h=533&q=medium" src="" alt="Card image cap">
            <div class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">
              <div class="badge badge-rounded-circle day-circle">
                <span class="d-block" style="font-size: medium">
                  1박 2일
                </span>
              </div>
        
            </div>
          </a>
        
          <div class="card-body px-4">
            <h5>
              <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#packageDetail" class="card-title text-uppercase">레일텔(KTX+페어필드부산송도호텔)</a>
            </h5>
            <p class="mb-5">송도의 오션뷰 호텔와 함께 인근에 위치한 남포동, 자갈치, 국제시장 등
              여행지를 돌아볼 수 있는 철도연계 자유여행 상품.</p>
            <div class="d-flex justify-content-between align-items-center">
              <div>
                <p class="mb-0 text-capitalize">최저가</p>
                <h3 class="text-primary">199,000원~</h3>
              </div>
              <div>
                <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#packageDetail" class="btn btn-xs btn-outline-secondary text-uppercase">자세히보기</a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-md-6 col-lg-4 mb-5">
        <div class="card card-hover">
          <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#packageDetail" class="position-relative">
            <img class="card-img-top lazyestload" data-src="https://a.cdn-hotels.com/gdcs/production47/d524/cf53813b-845b-42f3-a749-74875dd8bbf1.jpg?impolicy=fcrop&w=800&h=533&q=medium" src="" alt="Card image cap">
            <div class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">
              <div class="badge badge-rounded-circle day-circle">
                <span class="d-block" style="font-size: medium">
                  1박 2일
                </span>
              </div>
        
            </div>
          </a>
        
          <div class="card-body px-4">
            <h5>
              <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#packageDetail" class="card-title text-uppercase">레일텔(KTX+페어필드부산송도호텔)</a>
            </h5>
            <p class="mb-5">송도의 오션뷰 호텔와 함께 인근에 위치한 남포동, 자갈치, 국제시장 등
              여행지를 돌아볼 수 있는 철도연계 자유여행 상품.</p>
            <div class="d-flex justify-content-between align-items-center">
              <div>
                <p class="mb-0 text-capitalize">최저가</p>
                <h3 class="text-primary">199,000원~</h3>
              </div>
              <div>
                <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#packageDetail" class="btn btn-xs btn-outline-secondary text-uppercase">자세히보기</a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-md-6 col-lg-4 mb-5">
        <div class="card card-hover">
          <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#packageDetail" class="position-relative">
            <img class="card-img-top lazyestload" data-src="https://a.cdn-hotels.com/gdcs/production47/d524/cf53813b-845b-42f3-a749-74875dd8bbf1.jpg?impolicy=fcrop&w=800&h=533&q=medium" src="" alt="Card image cap">
            <div class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">
              <div class="badge badge-rounded-circle day-circle">
                <span class="d-block" style="font-size: medium">
                  1박 2일
                </span>
              </div>
        
            </div>
          </a>
        
          <div class="card-body px-4">
            <h5>
              <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#packageDetail" class="card-title text-uppercase">레일텔(KTX+페어필드부산송도호텔)</a>
            </h5>
            <p class="mb-5">송도의 오션뷰 호텔와 함께 인근에 위치한 남포동, 자갈치, 국제시장 등
              여행지를 돌아볼 수 있는 철도연계 자유여행 상품.</p>
            <div class="d-flex justify-content-between align-items-center">
              <div>
                <p class="mb-0 text-capitalize">최저가</p>
                <h3 class="text-primary">199,000원~</h3>
              </div>
              <div>
                <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#packageDetail" class="btn btn-xs btn-outline-secondary text-uppercase">자세히보기</a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-md-6 col-lg-4 mb-5">
        <div class="card card-hover">
          <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#packageDetail" class="position-relative">
            <img class="card-img-top lazyestload" data-src="https://a.cdn-hotels.com/gdcs/production47/d524/cf53813b-845b-42f3-a749-74875dd8bbf1.jpg?impolicy=fcrop&w=800&h=533&q=medium" src="" alt="Card image cap">
            <div class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">
              <div class="badge badge-rounded-circle day-circle">
                <span class="d-block" style="font-size: medium">
                  1박 2일
                </span>
              </div>
        
            </div>
          </a>
        
          <div class="card-body px-4">
            <h5>
              <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#packageDetail" class="card-title text-uppercase">레일텔(KTX+페어필드부산송도호텔)</a>
            </h5>
            <p class="mb-5">송도의 오션뷰 호텔와 함께 인근에 위치한 남포동, 자갈치, 국제시장 등
              여행지를 돌아볼 수 있는 철도연계 자유여행 상품.</p>
            <div class="d-flex justify-content-between align-items-center">
              <div>
                <p class="mb-0 text-capitalize">최저가</p>
                <h3 class="text-primary">199,000원~</h3>
              </div>
              <div>
                <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#packageDetail" class="btn btn-xs btn-outline-secondary text-uppercase">자세히보기</a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-md-6 col-lg-4 mb-5">
        <div class="card card-hover">
          <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#packageDetail" class="position-relative">
            <img class="card-img-top lazyestload" data-src="https://a.cdn-hotels.com/gdcs/production47/d524/cf53813b-845b-42f3-a749-74875dd8bbf1.jpg?impolicy=fcrop&w=800&h=533&q=medium" src="" alt="Card image cap">
            <div class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">
              <div class="badge badge-rounded-circle day-circle">
                <span class="d-block" style="font-size: medium">
                  1박 2일
                </span>
              </div>
        
            </div>
          </a>
        
          <div class="card-body px-4">
            <h5>
              <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#packageDetail" class="card-title text-uppercase">레일텔(KTX+페어필드부산송도호텔)</a>
            </h5>
            <p class="mb-5">송도의 오션뷰 호텔와 함께 인근에 위치한 남포동, 자갈치, 국제시장 등
              여행지를 돌아볼 수 있는 철도연계 자유여행 상품.</p>
            <div class="d-flex justify-content-between align-items-center">
              <div>
                <p class="mb-0 text-capitalize">최저가</p>
                <h3 class="text-primary">199,000원~</h3>
              </div>
              <div>
                <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#packageDetail" class="btn btn-xs btn-outline-secondary text-uppercase">자세히보기</a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-md-6 col-lg-4 mb-5">
        <div class="card card-hover">
          <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#packageDetail" class="position-relative">
            <img class="card-img-top lazyestload" data-src="https://a.cdn-hotels.com/gdcs/production47/d524/cf53813b-845b-42f3-a749-74875dd8bbf1.jpg?impolicy=fcrop&w=800&h=533&q=medium" src="" alt="Card image cap">
            <div class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">
              <div class="badge badge-rounded-circle day-circle">
                <span class="d-block" style="font-size: medium">
                  1박 2일
                </span>
              </div>
        
            </div>
          </a>
        
          <div class="card-body px-4">
            <h5>
              <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#packageDetail" class="card-title text-uppercase">레일텔(KTX+페어필드부산송도호텔)</a>
            </h5>
            <p class="mb-5">송도의 오션뷰 호텔와 함께 인근에 위치한 남포동, 자갈치, 국제시장 등
              여행지를 돌아볼 수 있는 철도연계 자유여행 상품.</p>
            <div class="d-flex justify-content-between align-items-center">
              <div>
                <p class="mb-0 text-capitalize">최저가</p>
                <h3 class="text-primary">199,000원~</h3>
              </div>
              <div>
                <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#packageDetail" class="btn btn-xs btn-outline-secondary text-uppercase">자세히보기</a>
              </div>
            </div>
          </div>
        </div>
      </div>


    </div>
    
    
  </div>
</section>

  </div><!-- element wrapper ends -->
	<!-- ====================================
——— FOOTER SECTION
===================================== -->
	<jsp:include page="footer.jsp"/>
</body>
</html>