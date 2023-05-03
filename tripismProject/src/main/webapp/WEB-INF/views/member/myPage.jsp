<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
      #userName>img{
        width: 50px;
        height: 50px;
        border-radius: 50%;
      }

      #userName{
        float: left;
      }

      #userId, #userNickName{
        margin-left: 65px;
      }

      #tripartner, #likePost, #userSetting, #bookMark {
        cursor: pointer;
        margin-top: 15px;
        margin-bottom: 15px;
        display: inline-block;
      }

      #ulli li{
        margin: 0;
        padding: 0;
      }

      #myPagebar{
        position: fixed;
      }

</style>
</head>

<body id="body" class="up-scroll">

<jsp:include page="../common/header.jsp"/>

    <div class="main-wrapper blog-list-right-sidebar">
      <section class="py-9 py-md-10">
        <div class="container">
          <div class="row">
      
          <!-- 계정설정시작 -->
            <div class="col-lg-8 col-xl-9 order-1 order-lg-0">
              <div class="card rounded-0 card-transparent border-bottom mb-7 pb-7"  style="background:#f5f5f5";>
                <div class="row align-items-xl-center">
                  <div class="container">
                    <div class="bg-smoke p-2 p-md-6 pb-6 pb-md-8 mb-9 rounded">
                      <div class="row">
                        <div class="col-12">
                          <div class="row">
                            <div class="col-lg-6" style="margin: auto;">
                              <div class="mb-4" style="padding-top: 40px;">
                                <h3 class="text-uppercase mb-3" align="center">회원정보수정</h3>
                              </div>
                              <div class="modal-body">
                                  <div class="mb-3">
                                    아이디⭐ <br>
                                    <input type="text" class="form-control bg-smoke" placeholder="아이디를 입력해주세요." readonly>
                                  </div>
                      
                                  <div class="mb-3">
                                    이름⭐<br>
                                    <input type="text" class="form-control bg-smoke" placeholder="이름" readonly>
                                  </div>
                        
                                  <div class="mb-3">
                                    비밀번호⭐<br>
                                    <input type="password" class="form-control bg-smoke" placeholder="비밀번호" readonly>
                                  </div>
                      
                                  <div class="mb-3">
                                     닉네임 <br>
                                      <input type="text" class="form-control bg-smoke" placeholder="닉네임을 입력해주세요.">
                                  </div>
                      
                                  <div class="mb-3" style="padding-bottom: 15px;">
                                      성별 <br>
                                      <input type="radio" name="gender" value="M"> 남자 
                                      <input type="radio" name="gender" value="F"> 여자 
                                  </div>
                
                                  <div class="row" style="text-align: center;">
                                    <div class="pt-3">
                                      <button type="submit" onclick="location.href='정보수정'" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6" id="infoUpdate">정보 수정하기</button>
                                    </div>
                                </div>
                
                                <hr>
                
                               
                
                
                              <form action="비밀번호변경form" method="">
                                <div class="form-group mb-4">
                                <h5>비밀번호 변경하기</h5> <br>
                                  <input type="password" class="form-control form-control-lg rounded border-0" required="" placeholder="현재 비밀번호">
                                </div>
                
                                <div class="form-group mb-4">
                                  <input type="password" class="form-control form-control-lg rounded border-0" required="" placeholder="새로 변경할 비밀번호">
                                </div>
                
                                <div class="form-group mb-4">
                                  <input type="password" class="form-control form-control-lg rounded border-0" required="" placeholder="새로운 비밀번호 확인">
                                </div>
                
                                <div class="pt-2" style="text-align: center;">
                                  <button type="submit" class="btn btn-primary text-uppercase font-size-15 px-6 px-md-7" id="btn_pwd">비밀번호 변경하기</button>
                                </div>
                              </form>
                            </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  </div>
                </div>
                </div>
              </div>
            </div>
          
            <!-- 계정설정 끝 -->
      
      
              <jsp:include page="../member/mypageSidebar.jsp"/>
            </div>
          </div>
      
      
      
      
      </section>
      
      
      
        </div><!-- element wrapper ends -->
      




<jsp:include page="../common/footer.jsp"/>
</html>