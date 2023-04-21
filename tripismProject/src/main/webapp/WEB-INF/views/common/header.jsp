<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <!-- GOOGLE FONT -->
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700' rel='stylesheet'>
    <!-- CUSTOM CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/star.css" id="option_style" rel="stylesheet">
    <!-- FAVICON -->
    <link rel="shortcut icon" type="image/png" href="assets/img/favicon.png"/>
    
    <style>
        div {box-sizing:border-box;}
        #header {
            width:80%;
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

        #header a {text-decoration:none; color:black;}
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
		    width: 258px;
		    height: 36px;
		    line-height: 10px;
		    border-radius: 5px 5px 5px 5px;
		    cursor: pointer;
		}
		#naver {
		    margin-bottom: 10px;
		    width: 258px;
		    height: 36px;
		    line-height: 10px;
		    border-radius: 5px 5px 5px 5px;
		    cursor: pointer;
		}
		
		#enroll{
		    background-color:  RGB(112, 217, 223);
		    border:none;
		    font-size: 16px;
		}
		
		#modal-body{
		    padding: 25px 25px;
		
		}

#modalTop{
  border-top: 6px solid RGB(112, 217, 223);
}
        </style>

</head>

<body id="body" class="up-scroll">

    <!-- ====================================
    ——— HEADER SESSION
    ===================================== -->
    <header class="header" id="pageTop" style="height: auto;">
      <!-- Menu Zord -->
      <nav class="nav-menuzord navbar-sticky" style="height: 160PX;">
        <div class="container clearfix">
        <div id="header" style="width: 1200px; margin: 0px auto;">
  
         <div class="Headersstyle__HeaderTopWrapDiv-sc-6xu8td-2 jolKUF">
          <div class="Headersstyle__HeaderTopInnerDiv-sc-6xu8td-3 cUxSoB">
            <img src="${pageContext.request.contextPath}/resources/img/LOGO2.png" alt="logo" class="WebHeader__LogoImg-sc-12ctfsg-0 dlkFOB" style="width: 156px; height: 35px;">
            <div class="Headersstyle__HeaderContentWrapper-sc-6xu8td-4 bXSWqd">
              <button width="auto" class="btnCommunity gbAvpk">커뮤니티</button>
              <button width="auto" class="btnTravelCourse gbAvpk">여행코스</button>
              <button width="auto" class="btnAnnouncement gbAvpk">공지사항</button>
            </div>
          </div>
          <div class="Headersstyle__HeaderTopInnerDiv-sc-6xu8td-3 ioxJXd">
            <div width="300px" class="Search__SearchInputWrappper-sc-1ef83fv-0 dJomdY">
              <input type="text" placeholder=" 동행을 찾아보세요">
            </div>
            
            <div class="WebHeader__SignBtnBox-sc-12ctfsg-1 eluuNw">
             
              <button class="WebHeader__HeaderButton-sc-12ctfsg-2 jmaRWD"><a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#login" class="media d-inline-flex align-items-center">로그인</a></button>
              <button class="WebHeader__HeaderButton-sc-12ctfsg-2 cQcIDu"><a href="WEB-INF/views/member/enrollForm.jsp"> 회원가입</a></button>
            </div>
            <div class="Button__ButtonWrapper-sc-1m85upr-0 cmgUBW">
              <button width="134px" height="44px" font-style="" type="button" class="btnButtonStyle-sc-1m85upr-1 iJuLkw">
                <a style="color: rgb(255, 255, 255); display: inherit; font-weight: bold;">동행 찾기</a>
              </button>
            </div>
            <div class="Popups__HeaderWritePopupDiv-sc-1hc7iv8-0 hbEFUq">
  
            </div>
          </div>
        </div>
  
  
        <div class="Headersstyle__HeaderContentWrapper-sc-6xu8td-4 bXSWqd" style="justify-content: flex-start; margin: 0px 12px;">
          <button width="auto"  class="Button cRHDfz">홈</button>
          <button width="auto"  class="Button_partnerImg enRKJR">
            <img src="https://tripsoda.com/images/sub/accompany/head/accompany_head_icon.svg" alt="아이콘" class="Button_pa hXhSDh">동행</button>
        </div>
        
  
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
    <!-- Signup Modal -->
    <div class="modal fade" id="signup" tabindex="-1" role="dialog" aria-label="signupModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header rounded">
            <h3 class="modal-title text-uppercase font-weight-bold">Create your account</h3>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>

          <div class="modal-body">
            <form class="" action="index.html" method="post">
              <div class="mb-3">
                <input type="text" class="form-control bg-smoke" required="" placeholder="Full Name">
              </div>

              <div class="mb-3">
                <input type="email" class="form-control bg-smoke" required="" placeholder="Email">
              </div>
    
              <div class="mb-3">
                <input type="password" class="form-control bg-smoke" required="" placeholder="Password">
              </div>
    
              <div class="mb-3 form-check mb-0">
                <input type="checkbox" class="form-check-input" id="exampleCheck4">
                <label class="form-check-label text-gray-color mb-3" for="exampleCheck4">
                  I agree to the terms of use and privacy.
                </label>
              </div>

              <div class="d-grid">
                <button type="submit" class="btn btn-primary btn-block text-uppercase">Login</button>
              </div>

              <div class="text-uppercase text-center py-3">Or</div>

              <div class="d-grid">
                <button type="submit" class="btn btn-facebook btn-block text-uppercase text-white">Login with facebook</button>
              </div>
            </form>
          </div>
    
          <div class="modal-footer justify-content-center">
            <p class="mb-1">Don’t have an Account? <a href="javascript:void(0)">Sign up</a></p>
          </div>
        </div>
      </div>
    </div>

    <!-- Login Modal -->
      <!-- Login Modal -->
      <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-label="loginModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm modal-dialog-centered" role="document" >
          <div class="modal-content">
            <div class="modal-header rounded" id="modalTop">
              <h3 class="modal-title text-uppercase font-weight-bold">Tripism Login</h3>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
  
            <div class="modal-body">
              <form class="" action="index.html" method="post">
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
                  <button type="button" class="btn btn-facebook text-uppercase text-white" id="enroll" style="color: black;">회원가입하기</button>
                 </div>
              </form>

              <div align="center" style="padding-top: 15px;">
                <a href="#" align="center" style="color: black;">ID 찾기</a> | 
                <a href="#" align="center" style="color: black;">비밀번호 찾기</a>
              </div>
              
            </div>
  
            
          </div>
        </div>
      </div>
    <!-- INQUIRY IN MODAL -->
    <div class="modal fade" id="inquiry" tabindex="-1" role="dialog" aria-label="inquiryModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
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

    
</body>
</html>