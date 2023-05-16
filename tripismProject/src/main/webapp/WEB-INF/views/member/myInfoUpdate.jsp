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
     
     #nicknameUpdate>a{
     	text-decoration: none;
        color: black;
     }
     
     #nicknameUpdate{
     	border: none;
     }
     
     #profile{
    	 background-color: RGB(112, 217, 223);
    	 border: RGB(112, 217, 223);
    	 display: none;
    	 padding-top:10px;
	}	


</style>
</head>

<body>

<jsp:include page="../common/header.jsp"/>
<!-- 마이페이지 감싸는 Form -->
    <div class="main-wrapper blog-list-right-sidebar">
      <section class="py-9 py-md-10">
        <div class="container">
          <div class="row">
            <div class="col-lg-8 col-xl-9 order-1 order-lg-0">
              <div>
                <div class="row align-items-xl-center">
                  <div class="container">
                      <div class="row">
                        <div class="col-12">
                          <div class="row" style="width: 1670px; padding:0px; margin:0px;">
                            <div class="col-lg-6" style="border: solid 3px rgba(199, 198, 198, 0.37); padding: 35px; border-radius: 15px 15px 15px 15px;">
                           <div class="Layout__PageContentWrap-sc-1w3ggn5-0 bgfeYQ">
                           	<section>
                           		<!-- 정보수정 시작 -->   
                              <div class="WebHeader__SignBtnBox-sc-12ctfsg-1 eluuNw" style="float: right; margin-bottom: 0px; height: 55px;">
                                <button class="WebHeader__HeaderButton-sc-12ctfsg-2 jmaRWD"><a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#pwdCheck" class="media d-inline-flex align-items-center">비밀번호변경하기</a></button>
                              </div>
                              <div>
                                <h3 class="text-uppercase mb-3" style="padding-left: 15px;">나의 정보 수정하기</h3>
                              </div>
                              <hr>
                              <form action="profile.do" id="insertProfile" method="post" enctype="multipart/form-data">
	                              <c:choose>
	                              <c:when test="${ empty loginUser.img }">
		                              <div align="center" style="padding-top: 25px;">
		                              <label for="upfile"></label>
		                              <input id="upfile" type="file" name="upfile" style="display:none">
		                              	<img id="preview-img" src="${pageContext.request.contextPath}/resources/img/user (2).jfif" id="preview-img" style="width:65px; height:65px; cursor: pointer; border-radius: 50%;" onclick="document.getElementById('upfile').click();" />
		                              </div>
										<input type="hidden" value="${loginUser.memNo }" name="memNo">
										<input type="hidden" value="${loginUser.memId }" name="memId">
										<div align="center">
										<button type="submit" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6" id="profile">프로필사진 변경 하기</button>		
										</div>                              
	                              </c:when>
	                              <c:otherwise>
		                              <div align="center" style="padding-top: 25px;">
		                              <label for="upfile"></label>
		                              <input id="upfile" type="file" name="upfile" style="display:none">
		                              	<img id="preview-img" src="${loginUser.img}" id="preview-img" style="width:65px; height:65px; cursor: pointer; border-radius: 50%;" onclick="document.getElementById('upfile').click();" />
		                              </div>
		                              	<input type="hidden" value="${loginUser.memNo }" name="memNo">
		                              	<input type="hidden" value="${loginUser.memId }" name="memId">
										<div align="center">
										<button type="submit" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6" id="profile">프로필사진 변경 하기</button>		
										</div>                              			                              
	                              </c:otherwise>
	                              </c:choose>
                              </form>
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
                              	<button id="nicknameUpdate" class="form-control bg-smoke" style="width:200px;"><a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#nicknameUpdatemodal" class="media d-inline-flex align-items-center">${loginUser.memNickname }</a></button>
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
                                      <span id="likePost"><a href="spotLike.do">❤️ 찜목록</a></span>
                                  </li>
                    
                                  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                                    <span id="likePost"><a href="spotLike.do">📱 내가 작성한 목록</a></span>
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
                    
                                  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                                    <span id="bookMark"><a href="following.do"> 💭 MBTI 유형검사 </a></span>
                                  </li>
                                  
                                  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                                    <span id="bookMark"><a href="otherPage.do"> 💭 다른사람마페(잠깐) </a></span>
                                  </li>
                                  
                                  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                                    <span id="bookMark"><a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#deleteCheck" class="media d-inline-flex align-items-center"> 😭 탈퇴하기 </a></span>
                                  </li>
                                  
                                </ul>
                            </div>
                            
                            <!-- 비밀번호 변경 모달창 -->
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
                                          <input type="hidden" name="memId" id="memNo" value="${loginUser.memId }">
                                        </div>
                                        <div class="pt-2" style="text-align: center;">
                                          <button type="submit" class="btn btn-primary text-uppercase font-size-15 px-6 px-md-7" id="btn_pwd">확인</button>
                                        </div>
                                      </form>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              
                              <!-- 닉네임 변경 모달창 -->
                             <div class="modal fade" id="nicknameUpdatemodal" tabindex="-1" role="dialog"  aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered modal-sm" role="document" >
                                  <div class="modal-subin">
                                    <div class="modal-header rounded" id="modalTop">
                                      <h4 class="modal-title text-uppercase font-weight-bold">Tripism 닉네임 재설정</h4>
                                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div style="padding-top:15px;">
                                    	<pre align="center">변경하실 닉네임을 입력해주세요.</pre>
                                    </div>
                          
                                    <div class="modal-body" style="width: 350px;">
                                      <form action="nicknameUpdate.do" method="post" id="nicknameUpdateForm">
                                        <div class="form-group mb-4">
                                          <input type="text" name="memNickname" id="memNickname" class="form-control bg-smoke" required>
                                			<div id="nicknameResult" style="font-size:1em"></div>
          
											<div id="nicknameResult" style="font-size:1em; display:none"></div>
                                          
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
                              
                              <!-- 탈퇴 1차 확인 모달창 -->
                             <div class="modal fade" id="deleteCheck" tabindex="-1" role="dialog"  aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered modal-sm" role="document" >
                                  <div class="modal-subin">
                                    <div class="modal-header rounded" id="modalTop">
                                      <h4 class="modal-title text-uppercase font-weight-bold">Tripism 탈퇴하기</h4>
                                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div style="padding-top:15px;">
                                    	<pre align="center">회원탈퇴를 위해 현재 비밀번호를 입력해주세요.</pre>
                                    </div>
                          
                                    <div class="modal-body" style="width: 350px;">
                                      <form action="deleteCheck.do" method="post">
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
                              
                              
                              </section>
                        </div>
                        <!-- 정보수정끝 -->
                      </div>
                    </div>
                  </div>
                  </div>
                  </div>
                </div>
                </div>
              </div>
              <script>
	                              $(function(){
	      							
	                  				const $nicknameInput = $("#nicknameUpdateForm input[name=memNickname]");
	                  				
	                  				$nicknameInput.keyup(function(){
	                  					console.log($nicknameInput.val());
	                  					
	                  					if($nicknameInput.val().length >= 1) {
	                  						
	                  						$.ajax({
	                  	    					url:"nicknameCheck.do",
	                  	    					data:{checkNickname:$nicknameInput.val()},
	                  	    					success:function(count){
	                  	    						
	                  	    						if(count == "NNNNN") { // 사용불가능
	                  	    							
	                  	    							// => 빨간색 메시지 (사용불가능)
	                  	    							$("#nicknameResult").show();
	                  	    							$("#nicknameResult").css("color", "red").text("중복된 닉네임입니다.");
	                  	    							
	                  	    							
	                  	    						} else {	// 사용가능
	                  	    							
	                  	    							// => 초록색 메시지(사용가능) 출력
	                  	    							$("#nicknameResult").show();
	                  	    							$("#nicknameResult").css("color", "green").text("사용가능한 닉네임입니다.");
	                  	    							
	                  	    						}
	                  							}, error : function(){	
	                  										console.log("ajax 통신 실패");
	                  							}
	                  						});
	                  					}
	                  					})
	                  			})
	                  			
	                  			<!-- 프로필사진 관련 script -->
								    function readURL(input) {
								        if (input.files && input.files[0]) {
								            var reader = new FileReader();
								            reader.onload = function (e) {
								                $('#preview-img').attr('src', e.target.result);
								            }
								            reader.readAsDataURL(input.files[0]);
								        }
								    }
								    $("#upfile").change(function(){
								        readURL(this);
								        $('#profile').show();
								    });
                              </script><script>
	                              $(function(){
	      							
	                  				const $nicknameInput = $("#nicknameUpdateForm input[name=memNickname]");
	                  				
	                  				$nicknameInput.keyup(function(){
	                  					console.log($nicknameInput.val());
	                  					
	                  					if($nicknameInput.val().length >= 1) {
	                  						
	                  						$.ajax({
	                  	    					url:"nicknameCheck.do",
	                  	    					data:{checkNickname:$nicknameInput.val()},
	                  	    					success:function(count){
	                  	    						
	                  	    						if(count == "NNNNN") { // 사용불가능
	                  	    							
	                  	    							// => 빨간색 메시지 (사용불가능)
	                  	    							$("#nicknameResult").show();
	                  	    							$("#nicknameResult").css("color", "red").text("중복된 닉네임입니다.");
	                  	    							
	                  	    							
	                  	    						} else {	// 사용가능
	                  	    							
	                  	    							// => 초록색 메시지(사용가능) 출력
	                  	    							$("#nicknameResult").show();
	                  	    							$("#nicknameResult").css("color", "green").text("사용가능한 닉네임입니다.");
	                  	    							
	                  	    						}
	                  							}, error : function(){	
	                  										console.log("ajax 통신 실패");
	                  							}
	                  						});
	                  					}
	                  					})
	                  			})
	                  			
	                  			<!-- 프로필사진 관련 script -->
								    function readURL(input) {
								        if (input.files && input.files[0]) {
								            var reader = new FileReader();
								            reader.onload = function (e) {
								                $('#preview-img').attr('src', e.target.result);
								            }
								            reader.readAsDataURL(input.files[0]);
								        }
								    }
								    $("#upfile").change(function(){
								        readURL(this);
								        $('#profile').show();
								    });
                              </script>
          <jsp:include page="../member/mypageSidebar.jsp"/>
            </div>
            <!-- 계정설정 끝 -->
            
            </div>
      </section>
        </div><!-- element wrapper ends -->
        
        




<jsp:include page="../common/footer.jsp"/>
</html>