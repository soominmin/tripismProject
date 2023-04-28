<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    
    
    <style>
        /* 전체 */
        .ijbmef {
          display: flex;
          position: relative;
          width: 100%;
          min-width: 1200px;
          box-sizing: border-box;
          border-top: 1px solid rgb(233, 233, 233);
          margin-top: -200px;
          padding-bottom: 49px;
          background: rgb(255, 255, 255);
          color: rgb(106, 106, 106);
      }
      .gxaxWV {
          padding: 10px 10px 50px 100px;
          box-sizing: border-box;
          position: relative;
          width: 1200px;
          margin: 0px auto;
      }
      /*이미지*/
      h1 {
          font-size: 2em;
          margin: 0.67em 0px;
          user-select: none;
          -webkit-user-drag: none;
      }
      .bFjQGc > img {
          width: 146px;
          user-select: none;
          -webkit-user-drag: none;
          cursor: pointer;
      }
      /*첫번째줄*/
      .fAFwwV {
        display: flex;
        flex-wrap: wrap;
        gap: 10px;
        -webkit-box-align: center;
        align-items: center;
        margin-top: 26px;
        color: rgb(154, 154, 154);
      }
      .fAFwwV > div {
          display: inline-flex;
          -webkit-box-align: center;
          align-items: center;
      }
      .fAFwwV > span {
          font-weight: 400;
          font-size: 15px;
          line-height: 22px;
      }
      .jvHhMp {
          font-size: 17px;
          line-height: 22px;
          -webkit-box-align: center;
          align-items: center;
          color: rgb(106, 106, 106) !important;
          font-weight: bold !important;
      }
       /*두번째줄*/
          .fynwQr {
          position: relative;
          margin-top: 15px;
      }
      .fynwQr em {
          margin-right: 0.25em;
      }
      .fynwQr span {
          display: inline-block;
          font-size: 15px;
          line-height: 1.5em;
          color: rgb(154, 154, 154);
          vertical-align: top;
          margin: 0px 24px 6px 0px;
      }
       /*세번째줄*/
      .kyhTKs {
          display: flex;
          flex-wrap: wrap;
          gap: 10px;
          -webkit-box-align: center;
          align-items: center;
          color: rgb(106, 106, 106);
          margin-top: 16px;
      }
      .kyhTKs > div {
          display: inline-flex;
          -webkit-box-align: center;
          align-items: center;
      }
      .jZAfTt {
          margin-right: 8px;
          cursor: pointer;
          font-weight: bold;
          font-size: 15px;
          line-height: 22px;
          position: relative;
          color: rgb(154, 154, 154);
      }
      .iEIqcX > p {
          margin-right: 14px;
      }
      .pMjLc {
          cursor: pointer;
          font-weight: 400;
          font-size: 15px;
          line-height: 22px;
          position: relative;
          color: rgb(154, 154, 154);
      }
       /*네번째줄*/
      .kEPTRr {
          margin-top: 10px;
          font-size: 15px;
          color: #9a9a9a;;
          line-height: 25px;
      }
       /*버튼스타일*/
      .fAFwwV button {
          margin-left: 13px;
          border: 1px solid rgb(233, 233, 233);
          padding: 8px 10px 9px;
          font-size: 15px;
          line-height: 22px;
          font-weight: 500;
          color: rgb(106, 106, 106);
          background-color: aliceblue;
          border-radius: 10px;
      }

	  
      </style>
  
</head>

<body id="body" class="up-scroll">



    <!-- ====================================
    ——— FOOTER SECTION
    ===================================== -->
    <footer class="footer">
    <hr>
      <div class="Footer__FooterInner-sc-19vhdob-1 gxaxWV">
        <h1 class="Footer__FooterLogo-sc-19vhdob-2 bFjQGc">
          <a href="index.pg">
          <img src="${pageContext.request.contextPath}/resources/img/header/LOGO2.png" alt="logo" class="WebHeader__LogoImg-sc-12ctfsg-0 dlkFOB" style="width: 156px; height: 35px;">
          </a>
        
        </h1>
        <div class="Footer__InfoBox-sc-19vhdob-3 fAFwwV">
          <div>
            <span class="Footer__InfoBoldText-sc-19vhdob-4 jvHhMp">고객센터 0507-1490-2626</span>
            <button><a href="emailInquiry.pg">1:1 채팅상담</a></button>
          </div>
          <span> * 실시간 채팅상담: 매일 9:00 ~ 24:00</span>
          <span> 친절 유선 상담: 평일 10:00 ~ 19:00 (12:00 - 13:00 제외)</span>
      </div>
      <div class="Footer__FoldWrapper-sc-19vhdob-9 fynwQr">
        <span>주식회사:  TRIPISM </span>
        <span>대표:  김민교</span>
        <span>개인정보보호책임자:  김민교</span>
        <span>사업자등록번호:  255-87-02536</span>
        <span>관광사업등록번호:  26001-2022-000001</span>
        <span>통신판매업 신고번호:  2022-서울서대문-0643</span>
      </div>
      <div class="Footer__FootMenuBox-sc-19vhdob-5 kyhTKs">
        <p class="Footer__FootMenuListItem-sc-19vhdob-7 jZAfTt">개인정보 처리방침</p>
        <div class="Footer__ListBox-sc-19vhdob-6 iEIqcX">
          <p class="Footer__FootMenuListItem-sc-19vhdob-7 pMjLc">| 이용약관</p>
          <p class="Footer__FootMenuListItem-sc-19vhdob-7 pMjLc">| 위치기반서비스 이용약관</p>
          <p class="Footer__FootMenuListItem-sc-19vhdob-7 pMjLc">| 취소 및 환불정책</p>
          <p class="Footer__FootMenuListItem-sc-19vhdob-7 pMjLc">| 파트너 입점</p>
        </div>
      </div>
      <div class="Footer__MiddleGap-sc-19vhdob-13 hTmimY">
        <p class="Footer__Copyright-sc-19vhdob-14 kEPTRr" style="color: #9a9a9a;">
          TRIPISM는 통신판매중개자이며 통신판매 당사자가 아닙니다. 상품정보 및 거래에 관한 책임은 판매자에게 있습니다. 
          <br> Copyright © TRIPISM Inc. All Rights Reserved.
        </p>
    </div>
  </div>


  
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
    <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-label="loginModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header rounded">
            <h3 class="modal-title text-uppercase font-weight-bold">Log in to your account</h3>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>

          <div class="modal-body">
            <form class="" action="index.html" method="post">
              <div class="mb-3">
                <input type="email" class="form-control bg-smoke" required="" placeholder="Email">
              </div>

              <div class="mb-3">
                <input type="password" class="form-control bg-smoke" required="" placeholder="Password">
              </div>

              <div class="mb-3 form-check mb-0">
                <input type="checkbox" class="form-check-input" id="exampleCheck5">
                <label class="form-check-label text-gray-color mb-3" for="exampleCheck5">
                  Remember me
                </label>
                <a class="pull-right" href="javascript:void(0)">Fogot Password?</a>
             </div>

             <div class="d-grid">
              <button type="submit" class="btn btn-primary text-uppercase">Login</button>
             </div>

              <div class="text-uppercase text-center py-3">Or</div>

              <div class="d-grid">
                <button type="submit" class="btn btn-facebook text-uppercase text-white">Login with facebook</button>
               </div>
            </form>
          </div>

          <div class="modal-footer justify-content-center">
            <p class="mb-1">Don’t have an Account? <a href="javascript:void(0)">Sign up</a></p>
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