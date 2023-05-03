<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#kakao{
    margin-bottom: 10px;
    width: 347.778px;
    height: 45.382px;
    line-height: 10px;
    border-radius: 5px 5px 5px 5px;
    cursor: pointer;
}
#naver {
    margin-bottom: 10px;
    width: 347.778px;
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

#modal-body{
    padding: 25px 25px;

}

#modalTop{
  border-top: 6px solid RGB(112, 217, 223);
}


</style>

</head>
<body id="body" class="up-scroll">

  <!-- Preloader -->
  <div id="preloader" class="smooth-loader-wrapper">
    <div class="smooth-loader">
      <div class="sk-circle">
        <div class="sk-circle1 sk-child"></div>
        <div class="sk-circle2 sk-child"></div>
        <div class="sk-circle3 sk-child"></div>
        <div class="sk-circle4 sk-child"></div>
        <div class="sk-circle5 sk-child"></div>
        <div class="sk-circle6 sk-child"></div>
        <div class="sk-circle7 sk-child"></div>
        <div class="sk-circle8 sk-child"></div>
        <div class="sk-circle9 sk-child"></div>
        <div class="sk-circle10 sk-child"></div>
        <div class="sk-circle11 sk-child"></div>
        <div class="sk-circle12 sk-child"></div>
      </div>
    </div>
  </div>

 
      <!-- Login Modal -->
      <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-label="loginModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm modal-dialog-centered" role="document" >
          <div class="modal-content">
            <div class="modal-header rounded" id="modalTop">
              <h3 class="modal-title text-uppercase font-weight-bold">Tripism Login</h3>
            </div>
  
            <div class="modal-body">
              <form class="" action="index.html" method="post">
                <div class="mb-3">
                  <input type="text" name="userId" class="form-control bg-smoke" required placeholder="아이디를 입력해주세요.">
                </div>
  
                <div class="mb-3">
                  <input type="password" name="userPwd" class="form-control bg-smoke" required placeholder="비밀번호를 입력해주세요.">
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
                  <div id="naver" style="text-align: center; background-color: #03C75A;"><img src="../resources/naver_login.png" style="width: 60%; height: 60%; object-fit:cover; margin-top: 10px;"></div>
                  <div id="kakao" style="text-align: center; background-color: #FEE500;"><img src="../resources/kakao_login_medium_narrow.png" style="width: 60%; height: 60%; object-fit:cover; margin-top: 10px;"></div>
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

</body>
</html>