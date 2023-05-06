<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
      #pwdFind{
        background-color: RGB(112, 217, 223);
        border-color: RGB(112, 217, 223);
      }

      #loginBtn{
        background-color: rgba(240, 248, 255, 0.116);
        border-color: black;
        color: black;
		width: 100px;
      }

      #userImg>img{
        width: 50px;
        height: 50px;
        border-radius: 50%;
      }

      #userImg{
        float: left;
        height: max-content;
      }

      #userId, #userName, #email{
        margin-left: 65px;
      }

      #userInfo {
        border: 1px solid gray;
        border-radius: 15px 15px 15px 15px;
        padding: 15px;
        margin: 30px;
     }

     #userId>p, #email>p, #userName>p{
        color: black;
        font-weight: bold;
     }
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>

<body id="body" class="up-scroll">

<section class="py-9">
  <div class="container">
    <div class="bg-smoke p-2 p-md-6 pb-6 pb-md-8 mb-9 rounded">
      <div class="row" style="padding-bottom:50px">
        <div class="col-12">
          <div class="row">
            <div class="col-lg-6" style="margin: auto;">
              <div class="mb-4" style="padding-top:30px;">
                <h3 class="text-uppercase mb-3">ID 찾기 결과</h3>
                <p>다음정보로 가입된 아이디가 있습니다.</p>
              </div>
              
              <div class="modal-body" style="padding:0px;">
                    <div class="mb-3" id="userInfo">
                        <h3 class="mb-4" id="userImg"><img src="${pageContext.request.contextPath}/resources/img/user (2).jfif" alt=""></h3>
                          <div id="userName"><p>이름 : ${idfind.memName }</p></div>
                          <div id="email"><p>이메일 : ${idfind.email }</p></div>
                          <div id="userId"><p>아이디 : ${idfind.memId }</p></div>
                    </div>
                  </div>

                  
                 

                  <div class="row" style="text-align: center;">
                    <div class="pt-3" style="padding:0px;">
                      <button onclick="location.href='javascript:void(0)" data-bs-toggle="modal" data-bs-target="#login" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6" id="loginBtn">로그인</button>
                      <button type="submit" onclick="location.href='pwdFindForm.do'" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6" id="pwdFind">비밀번호찾기</button>
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

<!-- Login Modal -->
      <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-label="loginModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-sm" role="document" >
          <div class="modal-subin">
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
                <a href="idfind.do" align="center" style="color: black;">ID 찾기</a> | 
                <a href="#" align="center" style="color: black;">비밀번호 찾기</a>
              </div>
              
            </div>
  
            
          </div>
        </div>
      </div>

<jsp:include page="../common/footer.jsp"/>
</body>
</html>