<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  #infoUpdate{
    background-color: RGB(112, 217, 223);
    border: none;
    width: 100px;
  }

  #Authentication{
    background-color: rgba(240, 248, 255, 0.199);
    border: 1px solid black;
    border-radius: 7px 7px 7px 7px;
    width: 130px;
    height: 40px;
  }
</style>
</head>
<body id="body" class="up-scroll">

<jsp:include page="../common/header.jsp"/>

<section class="py-9">
  <div class="container">
    <div class="bg-smoke p-2 p-md-6 pb-6 pb-md-8 mb-9 rounded">
      <div class="row">
        <div class="col-12">
          <div class="row">
            <div class="col-lg-6" style="margin: auto;" align="center">
              <div class="mb-4" style="padding-top:20px;">
                <h3 class="text-uppercase mb-3">본인확인 인증</h3>
                <p>이메일로 본인인증을 할 수 있습니다.</p>
              </div>
              
              <div class="modal-body" style="padding-top:0;">
                  <div class="mb-3" style="width:450px;">
                    <input type="text" class="form-control bg-smoke" placeholder="subani@gmail.com (내가입력한 이메일)" style="width: 300px; float: left;" readonly>
                    <div><button id="Authentication">인증번호 받기</button></div>
                  </div>
    

                  <div class="mb-3">
                    <input type="text" class="form-control bg-smoke" placeholder="인증번호를 입력해주세요." style="width:448px" required>
                  </div>
                  <div class="row" style="text-align: center;">
                    <div class="pt-3">
                      <button type="submit" onclick="location.href='pwdResult.do'" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6" id="infoUpdate">확인</button>
                    </div>
                </div>

              

              
            </div>

         
        </div>
      </div>
    </div>
  </div>
  </div>
</div>
</section>


<jsp:include page="../common/footer.jsp"/>
</body>
</html>