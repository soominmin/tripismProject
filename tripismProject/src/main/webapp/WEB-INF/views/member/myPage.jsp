<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
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

      #myPagebar{
        position: fixed;
      }
      
      #file-upload img{
      	width:65px;
      	height:65px;
      }

      #mbti{
        width: 50px;
        background-color: RGB(112, 217, 223);
        border-radius: 5px 5px 5px 5px;
        color: white;
      } 
      #mbti-char{
        width: 120px;
        border-radius: 5px 5px 5px 5px;
        border-color: rgba(94, 92, 92, 0.37);
        border: 1px;
      }
      .bg-smoke::placeholder{
        text-align: center;
      }
      #btn_pwd{
        background-color: RGB(112, 217, 223);
        border-color: RGB(112, 217, 223);
        width: 150px;
      }
      .align-items-center{
        text-decoration: none;
      }
      
      .jmaRWD>a{
        text-decoration: none;
        color: black;
      }

      .jmaRWD>a:hover{
        text-decoration: none;
        color: RGB(112, 217, 223);
      }
      
      #tripartner>a, #likePost>a, #userSetting>a, #bookMark>a {
      	text-decoration: none;
        color: black;
      }

      #tripartner>a:hover, #likePost>a:hover, #userSetting>a:hover, #bookMark>a:hover {
        color: RGB(112, 217, 223);
      }
      
      #mbti>a{
      	text-decoration: none;
        color: white;
      }
      #mbti{
        width: 100px;
        background-color: RGB(112, 217, 223);
        border: RGB(112, 217, 223);
      
      }
      
      #memNickname{
        text-align: center;
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
              <div>
                <div class="row align-items-xl-center">
                  <div class="container">
                    <div>
                      <div class="row">
                        <div class="col-12">
                          <div class="row" style="width: 1670px;">
                            <div class="col-lg-6" style="margin-left: 160px; border: solid 3px rgba(199, 198, 198, 0.37); padding: 35px; border-radius: 15px 15px 15px 15px;">
                              <div class="WebHeader__SignBtnBox-sc-12ctfsg-1 eluuNw" style="float: right; margin-bottom: 0px; height: 55px;">
                                <button class="WebHeader__HeaderButton-sc-12ctfsg-2 jmaRWD"><a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#pwdCheck" class="media d-inline-flex align-items-center">비밀번호변경하기</a></button>
                              </div>
                              <div>
                                <h3 class="text-uppercase mb-3" style="padding-left: 15px;">마이페이지</h3>
                              </div>
                              <hr>
                              <c:choose>
                              <c:when test="${ empty loginUser.img }">
	                              <div align="center" style="padding-top: 25px;">
	                              	<img src="${pageContext.request.contextPath}/resources/img/user (2).jfif" id="preview-img" style="width:65px; height:65px; border-radius: 50%;" />
	                              </div>
                              </c:when>
                              <c:otherwise>
	                              <div align="center" style="padding-top: 25px;">
	                              	<img src="${loginUser.img}" id="preview-img" style="width:65px; height:65px; border-radius: 50%;"/>
	                              </div>
                              </c:otherwise>
                              </c:choose>
                              
                              <div style="padding-top: 15px;">
                              <c:choose>
                              	<c:when test="${ not empty loginUser.mbti }">
	                              <table align="center">
	                                <tr style="width: 30px;">
	                                  <td id="mbti" align="center" style="width:200px;">${loginUser.mbti }</td>
	                                </tr>
	                              </table>
                              </c:when>
                              <c:otherwise>
                                <table align="center">
	                                <tr style="width: 30px;">
	                                  <td id="mbti" align="center"><button style="width:200px;" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6" id="mbti" align="center"><a href="mbtiStart.do"> MBTI 검사하러가기</a></button></td>
	                                </tr>
	                              </table>
                              </c:otherwise>
                              </c:choose>
                              </div>

                              <div class="mb-3" align="center" style="padding-top: 10px; padding-bottom: 25px;">
                                <input type="text" class="form-control bg-smoke" value="${loginUser.memNickname }" id="memNickname" style="width:200px; border: none;" readonly>
                              </div>
                              <hr>

                              <table>
                                <tr align="center">
                                  <td style="width: 350px;"> 팔로잉 </td>
                                  <td style="width: 350px;"> 팔로우 </td>
                                </tr>
                                <tr align="center">
                                  <td>6</td>
                                  <td>6</td>
                                </tr>
                              </table>

                              <hr>

                              <div id="ulli" style="width: 100%; margin-top: 20px;">
                                <ul class="list-unstyled list-group list-group-flush">
								  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                                      <span id="likePost"><a href="myInfoUpdate.do">ℹ️ 내정보수정하기</a></span>
                                  </li>
                                                    
                                
                                  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                                      <span id="likePost"><a href="spotLike.do">❤️ 좋아요한 여행지</a></span>
                                  </li>
                    
                          
                                  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                                      <span id="tripartner"><a href="partnerPostList.do">🔎 내 동행 게시글</a></span>
                                  </li>
                          
                                  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                                      <span id="bookMark"><a href="bookMarkList.do">⭐ 즐겨찾기 </a></span>
                                  </li>
                                  
                                  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
	                				  <span id="bookMark"><a href="following.do">👯 내 친구목록 </a></span>
	          					  </li>
                                  
                   			 	<c:choose>
                   			 	  <c:when test="${empty loginUser.mbti }">
	                                  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
	                                    <span id="bookMark"><a href="mbtiStart.do"> 💭 MBTI 유형검사 </a></span>
	                                  </li>
                                  </c:when>
                                  <c:otherwise>
	                                  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
	                                    <span id="bookMark"><a href="mbtiStart.do"> 💭 MBTI 다시하기 </a></span>
	                                  </li>
                                  </c:otherwise>
                                 </c:choose>
                                </ul>
                            </div>
                            
                            <!-- 1차 유효성 체크 -->
                             <div class="modal fade" id="pwdCheck" tabindex="-1" role="dialog"  aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered modal-sm" role="document" >
                                  <div class="modal-subin">
                                    <div class="modal-header rounded" id="modalTop">
                                      <h4 class="modal-title text-uppercase font-weight-bold">Tripism 비밀번호 재설정</h4>
                                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div style="padding-top:15px;">
                                    	<pre align="center">비밀번호변경을 위해 현재 비밀번호를 입력해주세요.</pre>
                                    </div>
                          
                                    <div class="modal-body" style="width: 350px;">
                                      <form action="pwdCheck.do" method="post">
                                        <div class="form-group mb-4">
                                          <input type="password" name="memPwd" id="memPwd" class="form-control bg-smoke" required placeholder="현재 비밀번호">
                                          <input type="hidden" name="memId" id="memId" value="${loginUser.memId }">
                                        </div>
                                        <div class="pt-2" style="text-align: center;">
                                          <button type="submit" class="btn btn-primary text-uppercase font-size-15 px-6 px-md-7" id="btn_pwd">확인</button>
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
                </div>
              </div>
            </div>

          
            <!-- 계정설정 끝 -->
            </div>
          </div>
      </section>
      
      
      
        </div><!-- element wrapper ends -->
        
        <script>
		const memPwd = document.querySelector('#memPwd');
		const pwdCheck1 = document.querySelector('#pwdCheck1');
		const pwdCheck2 = document.querySelector('#pwdCheck2');
		const pwdCheck3 = document.querySelector('#pwdCheck3');
		const pwdCheck4 = document.querySelector('#pwdCheck4');
		const pwdCheck5 = document.querySelector('#pwdCheck5');
		const pwdResult = document.querySelector('#pwdResult');
		
		memPwd.addEventListener('input', () => {
		    const password = memPwd.value;
		    let count = 0;
		
		    if (/^(.*[a-zA-Z]){2,}.*$/.test(password)) {
		        pwdCheck1.style.color = 'green';
		        count++;
		    } else {
		        pwdCheck1.style.color = '';
		    }
		
		    if (/[0-9]/.test(password)) {
		        pwdCheck2.style.color = 'green';
		        count++;
		    } else {
		        pwdCheck2.style.color = '';
		    }
		
		    if (/[\W_]/.test(password)) {
		        pwdCheck3.style.color = 'green';
		        count++;
		    } else {
		        pwdCheck3.style.color = '';
		    }
		
		    if (/^(?=.*[a-zA-Z].*[a-zA-Z])(?=.*\d.*\d)(?=.*[!@#$%^&*()_\-+=\[{\]}\|\\,.?/;:<>`~].*[!@#$%^&*()_\-+=\[{\]}\|\\,.?/;:<>`~])/.test(password)) {
		        pwdCheck4.style.color = 'green';
		    } else {
		        pwdCheck4.style.color = '';
		    }
		
		    if (password.length >= 8 && password.length <= 16) {
		        pwdCheck5.style.color = 'green';
		    } else {
		        pwdCheck5.style.color = '';
		    }
		
		    if (/^(?=.*\d.*\d)(?=.*[a-zA-Z].*[a-zA-Z])(?=.*[^a-zA-Z0-9].*[^a-zA-Z0-9]).{8,16}$/.test(password)) {
		        pwdResult.textContent = '사용 가능한 비밀번호입니다.';
		        pwdResult.style.color = 'green'
		    } else {
		        pwdResult.textContent = '';
		    }
		});

		
		
</script>
      


<jsp:include page="../common/footer.jsp"/>
</html>