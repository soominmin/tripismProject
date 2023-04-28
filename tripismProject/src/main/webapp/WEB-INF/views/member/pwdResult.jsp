<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  #btn_pwd, #infoUpdate{
    background-color: RGB(112, 217, 223);
    border: none;
  }
  
  #infoUpdate{
  	width:100px;
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
                <h3 class="text-uppercase mb-3">비밀번호 변경</h3>
                <p>비밀번호를 재설정 합니다.</p>
              </div>
              
              <div class="modal-body" style="width:405px; margin-left:20px;">
                  <div class="mb-3">
                    <input type="text" class="form-control bg-smoke" placeholder="subani(내가입력한 아이디)" readonly>
                  </div>

                  <div class="mb-3">
                    <input type="password" class="form-control bg-smoke" required placeholder="새로운 비밀번호">
                    <p>(영문 대소문자/숫자/특수문자중 2가지 이상 조합, 8자~16자)</p>
                  </div>
      
                  <div class="mb-3">
                      <input type="password" class="form-control bg-smoke" required placeholder="새로운 비밀번호 확인">
                  </div>

                  <div class="row" style="text-align: center;">
                    <div class="pt-3">
                      <button type="submit" onclick="location.href='확인'" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6" id="infoUpdate" >확인</button>
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