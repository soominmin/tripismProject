<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- SITE TITTLE -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
        
    <!-- Plugins css Style -->
    <link href='${pageContext.request.contextPath}/resources/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
    <link href="${pageContext.request.contextPath}/resources/plugins/animate/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/plugins/menuzord/css/menuzord.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/plugins/menuzord/css/menuzord-animations.css" rel="stylesheet">
    <link href='${pageContext.request.contextPath}/resources/plugins/fancybox/jquery.fancybox.min.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/plugins/selectric/selectric.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/plugins/daterangepicker/css/daterangepicker.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/plugins/rateyo/jquery.rateyo.min.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/plugins/no-ui-slider/nouislider.min.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/plugins/dzsparallaxer/dzsparallaxer.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/plugins/slick/slick.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/plugins/slick/slick-theme.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/plugins/revolution/css/settings.css' rel='stylesheet'>
    
    <!-- CUSTOM CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/star.css" id="option_style" rel="stylesheet">
    <!-- FAVICON -->
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/resources/img/favicon.png"/>
    
    <style>
          body * {
          font-family: 'TheJamsil';
        }
        
        div {box-sizing:border-box;}
        #header {
            width:90%;
            height:100px;
            padding-top:20px;
            margin:auto;
        }
        /*로고*/
        .cUxSoB > :nth-child(n) {
            margin-right: 23px;
        }
        .dlkFOB {
            user-select: none;
            -webkit-user-drag: none;
            cursor: pointer;
        }
        .jolKUF {
            width: 100%;
            height: 80px;
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-pack: justify;
            justify-content: space-between;
            box-sizing: border-box;
            gap: 10px;
            background-color: rgb(255, 255, 255);
        }
        .cUxSoB {
            position: relative;
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            height: 100%;
        }
        .ioxJXd {
          position: relative;
          display: flex;
          -webkit-box-align: center;
          align-items: center;
          height: 100%;
      }

        /* header2 */
        element.style {
            justify-content: flex-start;
            margin: 0px 12px;
        }
        .bXSWqd {
          display: flex;
          -webkit-box-align: center;
          -webkit-box-pack: center;
          justify-content: center;
          width: 100%;
          height: fit-content;
          
      }

        #header a {
          text-decoration:none;
          color:black;
          font-weight: 700;
        }
        button {
          cursor: pointer;
          outline: none;
          vertical-align: top;
          background-color: transparent;
          border: 0;
        }
        .ButtonWithToggle {
          color: rgb(136, 136, 136);
          font-weight: bold;
        }
        input:focus {
          outline-color: rgb(112, 217, 223);
          outline-width: 3px;
        }
        /*커뮤니티,여행 클릭시*/
        .gbAvpk:focus {
          border-style: solid;
          border-color: rgb(37, 37, 37);
          border-image: initial;
          border-width: 0px 0px 3px;
          color: rgb(37, 37, 37);
        }
        /*커뮤니티,여행 기본*/
        .gbAvpk {
            position: relative;
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-pack: center;
            justify-content: center;
            width: auto;
            height: fit-content;
            border: 0px solid rgb(123, 123, 123);
            padding: 12px 0px;
            margin: 0px 10px;
            color: rgb(123, 123, 123);
            font-weight: 600;
            font-size: 15px;
        }
        /*input*/
        .dJomdY > input {
            background: rgb(248, 248, 248);
            border: 1px solid rgb(233, 233, 233);
            box-sizing: border-box;
            border-radius: 90px;
            height: 40px;
            width: 100%;
            padding: 13px 18px 13px 40px;
            text-indent: 3px;
        }
        /*돋보기아이콘*/
        .dJomdY span:first-child {
        position: absolute;
        left: 14.25px;
        top: 28px;
        }

        .dJomdY > button {
          position: absolute;
          top: 0px;
          left: 0px;
          width: 40px;
          height: 40px;
         }

        input {
            overflow: visible;
        }
        button {
            border: 0;
            padding: 0;
            cursor: pointer;
            outline: none;
            vertical-align: top;
            background: unset;
            line-height: 1.15;
        }
        /*로그인*/
        .ioxJXd {
            position: relative;
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            height: 100%;
        }
        .ioxJXd > :nth-child(n) {
            margin-right: 23px;
        }
        .jmaRWD {
            font-weight: 400;
            font-size: 15px;
            line-height: 24px;
            position: relative;
            color: rgb(106, 106, 106);
        }
        .eluuNw {
            width: 124px;
            height: 24px;
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-pack: justify;
            justify-content: space-between;
            position: relative;
        }
        /*input*/
        .cmgUBW a {
            display: inherit;
            font-weight: bold;
        }
        /*동행찾기*/
        .iJuLkw {
            color: rgb(255, 255, 255);
            background-color: rgb(112, 217, 223);
            width: 134px;
            height: 44px;
            border-radius: 4px;
            cursor: pointer;
            transition: all 0.1s ease-out 0s;
        }
        /*홈*/
        .cRHDfz {
            position: relative;
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-pack: center;
            justify-content: center;
            width: auto;
            height: fit-content;
            border: 0px solid rgb(106, 106, 106);
            padding: 22px 14px;
            color: rgb(106, 106, 106);
            font-weight: 400;
            font-size: 16px;
        }
        .enRKJR:active {
            position: relative;
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-pack: center;
            justify-content: center;
            width: auto;
            height: fit-content;
            border-style: solid;
            border-color: rgb(37, 37, 37);
            border-image: initial;
            border-width: 0px 0px 3px;
            padding: 22px 14px 19px;
            color: rgb(37, 37, 37);
            font-weight: bold;
            font-size: 15px;
        }
        /*동행이미지*/
        .hXhSDh {
            margin-right: 3px;
            width: 21px;
            height: 21px;
        }
            /*동행*/
            .enRKJR {
            position: relative;
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-pack: center;
            justify-content: center;
            width: auto;
            height: fit-content;
            border: px solid rgb(106, 106, 106);
            padding: 22px 14px;
            color: rgb(106, 106, 106);
            font-weight: 400;
            font-size: 16px;
        }
        
        /* 로그인 모달창 CSS */
       #kakao{

		    margin-bottom: 10px;
		    width: 358px;
		    height: 45.382px;
		    line-height: 10px;
		    border-radius: 5px 5px 5px 5px;
		    cursor: pointer;
		}
		#naver {
		    margin-bottom: 10px;
		    width: 358px;
		    height: 45.382px;
		    line-height: 10px;
		    border-radius: 5px 5px 5px 5px;
		    cursor: pointer;
		}
		
		#enroll{
		    background-color:  RGB(112, 217, 223);
		    border:none;
		    font-size: 16px;
		}
		
		#enroll>a{
			color:white;
		    text-decoration: none;
	   }
		
		#modal-body{
		    padding: 25px 25px;
		}

		#modalTop{
		  border-top: 6px solid RGB(112, 217, 223);
		}
		

		#enrollBtn{
		  background-color: RGB(112, 217, 223);
		  border: none;
		}

    /*header font-weight*/
    #menuzord{
      font-weight: 700;
    }

        </style>

</head>

<body id="body" class="up-scroll">



  <!-- ====================================
  ——— HEADER SESSION
  ===================================== -->
  <header class="header" id="pageTop" style="height: auto;" >
    <!-- Menu Zord -->
    <nav class="nav-menuzord navbar-sticky" class="sc-584527a1-1 cHBTwe" style="height: 150px;">
      <div id="header" class="sc-2cf0ad3b-0 iwFWzK">

       <div class="Headersstyle__HeaderTopWrapDiv-sc-6xu8td-2 jolKUF">
        <div class="Headersstyle__HeaderTopInnerDiv-sc-6xu8td-3 cUxSoB">
        <a href="index.pg">
        <img src="${pageContext.request.contextPath}/resources/img/header/LOGO2.png"
              alt="logo"
              class="WebHeader__LogoImg-sc-12ctfsg-0 dlkFOB"
              style="width: 156px; height: 35px;" >
        </a>

          <div id="menuzord" class="menuzord">

            <ul id="head-menu"class="menuzord-menu menuzord-right">
              <li class="">
                <a class="" href="javascript:void(0)">커뮤니티</a>
                <ul class="dropdown drop-up">
                  <li class="">
                    <a href="feed.fd">
                      <img src="${pageContext.request.contextPath}/resources/img/header/icon1.png" class="Button_pa hXhSDh">
                       Tripism</a>
                  </li>
  
                  <li class="">
                    <a href="list.pn">
                      <img src="${pageContext.request.contextPath}/resources/img/header/icon2.png" class="Button_pa hXhSDh">
                      동행</a>
                  </li>
  
                </ul>
              </li>
  
              <li class="">
                <a href="javascript:void(0)">여행코스</a>
                <ul class="dropdown drop-up">

                  <li class="">
                    <a href="list.sp">
                      <img src="${pageContext.request.contextPath}/resources/img/header/icons5.png" class="Button_pa hXhSDh">
                      여행지 둘러보기</a>
                  </li>
  
                  <li class="">
                    <a href="list.pk">
                      <img src="${pageContext.request.contextPath}/resources/img/header/icons6.png" class="Button_pa hXhSDh">
                      여행 상품</a>
                  </li>
                  
               <li class="">
                    <a href="plan.tr">
                      <img src="${pageContext.request.contextPath}/resources/img/header/icons4.png" class="Button_pa hXhSDh">
                      여행 일정</a>
                  </li>
                </ul>
              </li>
  
              <li class="">
                <a href="noticeList.bo">공지사항</a>
              </li>

              <li class="">
                <a href="mapView.tm">
                  <img src="${pageContext.request.contextPath}/resources/img/header/icons9.gif" style="width: 22px; height: 22px;">
                  여행지도</a>
              </li>
              
           
              <li class="">

                 <a href="mypage.bo">마이페이지(잠깐)</a>

              </li>


              <li class="">
                <a>관리자 페이지(잠깐)</a>
                <ul class="dropdown drop-up" >
                        
                   <ul>
                   <li ><a href="adminMemberList.pg">회원 관리</a></li>
     
                   <li>
                     <a>게시물 관리</a>
                     <ul class="dropdown drop-up">
                       <li><a href="adminNoticeBoardList.pg">공지사항 게시물</a></li>
                       <li><a href="adminPartnerBoardList.pg">동행 게시물</a></li>
                       <li><a href="adminTravelBoardList.pg">여행지 게시물</a></li>
                       <li><a href="adminTravelPackageBoardList.pg">여행상품 게시물</a></li>
                     </ul>
                   </li>
                   
                   </ul>
   
               </ul>              
                 
               </li>              
         
            </ul>

          </div>

        </div>

        
        <div class="Headersstyle__HeaderTopInnerDiv-sc-6xu8td-3 ioxJXd">
        <div width="300px" class="Search__SearchInputWrappper-sc-1ef83fv-0 dJomdY">
            <span>
                <svg
                    width="12px"
                    height="12px"
                    viewBox="0 0 20 20"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                    style="display: inline-block;">
                    <path
                        fill-rule="evenodd"
                        clip-rule="evenodd"
                        d="M8.49933 1.5C7.11505 1.5 5.76184 1.91062 4.61081 2.67998C3.45978 3.44933 2.56262 4.54287 2.03283 5.82234C1.50304 7.10181 1.36441 8.50971 1.6345 9.86801C1.90459 11.2263 2.57126 12.4739 3.55015 13.4532C4.52904 14.4324 5.77619 15.0992 7.13388 15.3694C8.49157 15.6395 9.89885 15.5009 11.1778 14.9709C12.4567 14.441 13.5499 13.5436 14.319 12.3921C15.0881 11.2406 15.4987 9.88686 15.4987 8.50195C15.4987 6.64483 14.7612 4.86383 13.4485 3.55073C12.1359 2.23764 10.3556 1.5 8.49933 1.5ZM3.77726 1.4329C5.17498 0.498663 6.81827 0 8.49933 0C10.7536 0 12.9154 0.8958 14.5094 2.49025C16.1033 4.0847 16.9987 6.24717 16.9987 8.50195C16.9987 10.1834 16.5002 11.8271 15.5663 13.2253C14.6324 14.6234 13.305 15.7132 11.752 16.3567C10.1989 17.0002 8.48991 17.1686 6.84115 16.8405C5.19239 16.5125 3.67795 15.7027 2.48931 14.5136C1.30068 13.3246 0.491236 11.8097 0.163307 10.1605C-0.164622 8.51138 0.00368071 6.80197 0.646943 5.24848C1.29021 3.69498 2.37955 2.36714 3.77726 1.4329Z"
                        fill="#9A9A9A"></path>
                    <path
                        fill-rule="evenodd"
                        clip-rule="evenodd"
                        d="M13.5933 13.5882C13.9839 13.1977 14.6171 13.1978 15.0075 13.5884L19.4572 18.0396C19.8477 18.4302 19.8476 19.0634 19.457 19.4538C19.0664 19.8443 18.4332 19.8442 18.0428 19.4536L13.5931 15.0024C13.2026 14.6118 13.2027 13.9786 13.5933 13.5882Z"
                        fill="#9A9A9A"></path>
                </svg>
            </span>
            <button></button>
            <input placeholder="어디로 여행가시나요!" value="" style="font-size: 12px;"></div>
            
          
          <div class="WebHeader__SignBtnBox-sc-12ctfsg-1 eluuNw">
	            <button class="WebHeader__HeaderButton-sc-12ctfsg-2 jmaRWD"><a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#login" class="media d-inline-flex align-items-center">로그인</a></button>
	            <button class="WebHeader__HeaderButton-sc-12ctfsg-2 cQcIDu"><a href="enrollForm.do"> 회원가입</a></button>
          </div>
          
          <div class="Button__ButtonWrapper-sc-1m85upr-0 cmgUBW">
            <button width="134px" height="44px" font-style="" type="button" class="btnButtonStyle-sc-1m85upr-1 iJuLkw">
              <a href="enrollForm.pn" style="color: rgb(255, 255, 255); display: inherit; font-weight: bold;">동행 찾기</a>
            </button>
              
            
          </div>
          <div class="Popups__HeaderWritePopupDiv-sc-1hc7iv8-0 hbEFUq">

          </div>
        </div>
      </div>


      <div class="Headersstyle__HeaderContentWrapper-sc-6xu8td-4 bXSWqd" style="justify-content: flex-start; margin: 0px 12px;">

      </div>

      
      

    </div>


    
    </nav>
  </header>
    <!-- ====================================
    ——— HEADER SECTION END
    ===================================== -->
    

<div class="main-wrapper packages-list-right-sidebar">
    <!-- ====================================
    ——— MODAL SECTION
    ===================================== -->

    


      <!-- Login Modal -->
      <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-label="loginModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-sm" role="document" >
          <div class="modal-subin">
            <div class="modal-header rounded" id="modalTop">
              <h3 class="modal-title text-uppercase font-weight-bold">Tripism Login</h3>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
  
            <div class="modal-body">
              <form action="login.me" method="post">
                <div class="mb-3">
                  <input type="text" class="form-control bg-smoke" required="" placeholder="아이디를 입력해주세요.">
                </div>
  
                <div class="mb-3">
                  <input type="password" class="form-control bg-smoke" required="" placeholder="비밀번호를 입력해주세요.">
                </div>
  
                <div class="mb-3 form-check mb-0">
                  <input type="checkbox" class="form-check-input" id="exampleCheck5">
                  <label class="form-check-label text-gray-color mb-3" for="exampleCheck5">
                    아이디 기억하기
                  </label> <br>
                
               </div>
  
               <div class="d-grid">
                <button type="submit" class="btn btn-primary text-uppercase" style="font-size: 16px; background-color: RGB(112, 217, 223); border: none;">확인</button>
               </div>
  
                <div class="text-uppercase text-center py-3">Or</div>
  
                <div class="d-grid" >
                  <div id="naver" style="text-align: center; background-color: #03C75A;"><img src="${pageContext.request.contextPath}/resources/img/naver_login.png" style="width: 60%; height: 60%; object-fit:cover; margin-top: 10px;"></div>
                  <div id="kakao" style="text-align: center; background-color: #FEE500;"><img src="${pageContext.request.contextPath}/resources/img/kakao_login_medium_narrow.png" style="width: 60%; height: 60%; object-fit:cover; margin-top: 10px;"></div>
                  <button type="button" class="btn btn-facebook text-uppercase text-white" id="enroll" style="color: black;" ><a href="enrollForm.do">회원가입하기</a></button>
                 </div>
              </form>

              <div align="center" style="padding-top: 15px;">
                <a href="idfind.do" align="center" style="color: black;">ID 찾기</a> | 
                <a href="pwdFind.do" align="center" style="color: black;">비밀번호 찾기</a>
              </div>
              
            </div>
  
            
          </div>
        </div>
      </div>
      
      
  
    <!-- INQUIRY IN MODAL -->
    <div class="modal fade" id="inquiry" tabindex="-1" role="dialog" aria-label="inquiryModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header rounded">
            <h3 class="modal-title text-uppercase font-weight-bold">Inquiry about tour</h3>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>

          <div class="modal-body pb-3">
            <form class="" action="index.html" method="post">
              <div class="mb-3">
                <input type="text" class="form-control bg-smoke" required="" placeholder="Your Name">
              </div>

              <div class="mb-3">
                <input type="email" class="form-control bg-smoke" required="" placeholder="Your Email">
              </div>
    
              <div class="mb-3">
                <input type="number" class="form-control bg-smoke" required="" placeholder="Phone Number">
              </div>

              <div class="mb-3">
                <textarea class="form-control bg-smoke" rows="6" placeholder="Message"></textarea>
              </div>
    
              <button type="submit" class="btn btn-primary text-uppercase">Submit</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  
    
    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/menuzord/js/menuzord.js"></script>
    <script src='${pageContext.request.contextPath}/resources/plugins/fancybox/jquery.fancybox.min.js'></script>
    <script src='${pageContext.request.contextPath}/resources/plugins/selectric/jquery.selectric.min.js'></script>
    <script src='${pageContext.request.contextPath}/resources/plugins/daterangepicker/js/moment.min.js'></script>
    <script src='${pageContext.request.contextPath}/resources/plugins/daterangepicker/js/daterangepicker.min.js'></script>
    <script src='${pageContext.request.contextPath}/resources/plugins/rateyo/jquery.rateyo.min.js'></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/lazyestload/lazyestload.js"></script>
    <script src='${pageContext.request.contextPath}/resources/plugins/dzsparallaxer/dzsparallaxer.js'></script>
    <script src='${pageContext.request.contextPath}/resources/plugins/slick/slick.min.js'></script>
    <script src='${pageContext.request.contextPath}/resources/plugins/revolution/js/jquery.themepunch.tools.min.js'></script>
    <script src='${pageContext.request.contextPath}/resources/plugins/revolution/js/jquery.themepunch.revolution.min.js'></script>
    <script src='${pageContext.request.contextPath}/resources/plugins/no-ui-slider/nouislider.min.js'></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/smoothscroll/SmoothScroll.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/star.js"></script>
    

</body>
</html>