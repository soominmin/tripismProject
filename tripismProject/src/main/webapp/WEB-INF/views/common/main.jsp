<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
  body * {
      font-family: 'TheJamsil';
  }
a {
    text-decoration: none;
    color: inherit;
}
#main {
    padding-bottom: 16rem;
    overflow-x: hidden;
}
#main .map-wrapper {
    height: 700px;
    position: relative;
    background: url("${pageContext.request.contextPath}/resources/img/partner/backImg1.jpg") no-repeat center;
}
/*공지사항*/
#main .map_notice {
    z-index: 10!important;
}
#main .map_notice {
    width: 1280px;
    position: absolute;
    left: 50%;
    top: 10px;
    transform: translate(-50%);
}
#main .map_notice>.notice_text {
    display: flex;
    height: 40px;
    line-height: 4rem;
    color: #fff;
    font-size: 1.6rem;
    letter-spacing: -.048rem;
    border-radius: 1rem;
    overflow: hidden;
}
#main .notice_text>dt {
    flex-shrink: 0;
    padding-left: 4rem;
    padding-right: 1.5rem;
    background: url(https://s3.ap-northeast-2.amazonaws.com/contents.ollepass.org/static/homepage/trail/img/ico_notice.png) no-repeat left 1.6rem center;
    background-color: #eb5f52;
    background-size: 1.6rem auto;
}
/*공지사항 바*/
#main .notice_text>dd {
    background-color: #666;
    padding-left: 3rem;
    padding-right: 4.6rem;
    flex-grow: 1;
    width: 100%;
}
.vue3-marquee>.transparent-overlay {
    position: absolute;
    width: 100%;
    height: 40px;
}
.vue3-marquee>.marquee {
    flex: 0 0 auto;
    min-width: var(--min-width);
    z-index: 1;
    display: flex;
    flex-direction: row;
    align-items: center;
    animation: scroll var(--duration) linear var(--delay) var(--loops);
    animation-direction: var(--direction);
}
.vue3-marquee {
    overflow-x: hidden!important;
    display: flex!important;
    flex-direction: row!important;
    position: relative;
    width: 100%;
}
</style>

</head>
<body>
<!-- ====================================
——— HEADER
===================================== -->
	<jsp:include page="header.jsp"/>
	
	<body id="body" class="up-scroll">
    <section id="main">

<!-- ====================================
———	COUNTER SECTION
===================================== -->
<div class="map-wrapper">
    <div class="map_notice">
        <dl class="notice_text">
            <dt>긴급알림</dt>
            <dd>
                <div
                    class="vue3-marquee"
                    style="--duration: 15s; --delay: 0s; --direction: normal; --pauseOnHover: running; --pauseOnClick: running; --loops: infinite; --gradient-color: rgba(255, 255, 255, 1), rgba(255, 255, 255, 0); --gradient-width: 200px; --min-width: 100%;">
                    <div class="transparent-overlay"></div>
                    <!---->
                    <div class="marquee">
                        <a href="#/community/board/6/1" class="marquee-text">올레길 안전수칙 안내</a>
                    </div>
                    <div class="marquee">
                        <a href="#/community/board/6/1" class="marquee-text">올레길 안전수칙 안내</a>
                    </div>
                </div>
            </dd>
        </dl>
        <button class="notice-btn">
            <img
                class="full-img"
                src="https://s3.ap-northeast-2.amazonaws.com/contents.ollepass.org/static/homepage/trail/img/ico_close02.png"
                alt=""></button>
        </div>
        <div class="pc-wrapper">
            <div class="map_area">
                <dl class="map_text">
                    <dd>꼬닥꼬닥 걸어, 함께 만든 제주올레 길</dd>
                    <dt>437km 27코스</dt>
                </dl>
                <section>
                    <a href="javascript:;">
                        <div id="route_img1" class="route_img">
                            <div class="route_label">1코스</div>
                            <!---->
                        </div>
                    </a>
                    <div id="route_line_1" class="route_1"></div>
                    <div id="route_txt_area1" class="route_text">
                        <div class="route_txt01">
                            <p>시흥-광치기 올레<br>난이도: 중<br>총 길이: 15.1km, 4~5시간</p>
                                </div>
                            </div>
                        </section>

                    </div>
                </div>
                <div class="mo-wrapper inner"></div>                                                                                                                                                                                                                                                                                      </div>
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


    <!-- ====================================
    ——— MODAL SECTION
    ===================================== -->


    <!-- INQUIRY IN MODAL -->
    <div class="modal fade" id="packageDetail" tabindex="-1" role="dialog" aria-label="inquiryModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header rounded">
            <h3 class="modal-title text-uppercase font-weight-bold">여행상품 상세보기</h3>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>

          <div class="modal-body pb-3">

            <img class="card-img-top lazyestload" data-src="https://a.cdn-hotels.com/gdcs/production47/d524/cf53813b-845b-42f3-a749-74875dd8bbf1.jpg?impolicy=fcrop&w=800&h=533&q=medium" src="" alt="Card image cap">

            <br><br>

            <h4 style="font-weight: 900;">레일텔(KTX+페어필드부산송도호텔)</h4>

            <hr>

            <h5>하나투어</h5>

            <br>

            <p>송도의 오션뷰 호텔와 함께 인근에 위치한 남포동, 자갈치, 국제시장 등 여행지를 돌아볼 수 있는 철도연계 자유여행 상품.</p>

            <span class="badge bg-info text-dark">예약가능기간</span>
            2020.11.10 ~ 2023.04.01

            <br>

            <hr>

            <h5 style="font-weight: 900;">이 상품 속 주요 여행지</h5>

            <br>

            <div style="width: 150px; height: 150px; border: 1px solid black;"></div>

            <br>
            <button class="btn btn-primary" type="button" style="width: 100%; background-color: RGB(112, 217, 223); border: none;">예약하러가기</button>
            

          </div>
        </div>
      </div>
    </div>

<!-- element wrapper ends -->
	<!-- ====================================
——— FOOTER SECTION
===================================== -->
</section>
	<jsp:include page="footer.jsp"/>
</body>
</html>