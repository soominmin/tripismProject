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
      
      input::placeholder{
        font-size: 16px;
        padding-left : 10px;
      }


      input[type=text], input[type=email] {
      width:300px;
      height: 40px;
      border: 0;
      padding-left:10px;

}

</style>
</head>
<body>

<jsp:include page="../common/header.jsp"/>

<body id="body" class="up-scroll">

<section class="py-9">
  <div class="container">
    <div class="bg-smoke p-2 p-md-6 pb-6 pb-md-8 mb-9 rounded">
      <div class="row">
        <div class="col-12">
          <div class="row">
            <div class="col-lg-6" style="margin: auto;"  align="center">
              <div class="mb-4" style="padding-top:20px;" >
                <h3 class="text-uppercase mb-3">아이디 찾기</h3>
                <p>아이디는 가입시 입력하신 이메일을 통해 찾을 수 있습니다.</p>
              </div>
              
              <div class="modal-body">
                  <div class="mb-3">
                    
                    <input type="text" placeholder="이름" required>
                  </div>

                  <div class="mb-3">
                    
                    <input type="email" placeholder="이메일" required>
                  </div>
    
                 

                  <div class="row" style="text-align: center;">
                    <div class="pt-3">
                      <button type="submit" onclick="location.href='확인'" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6" id="infoUpdate" style="width:300px;">확인</button>
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