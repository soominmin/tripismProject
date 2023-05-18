<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다른사람 마이페이지</title>
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
      #tripartner, #likePost, #userSetting, #bookMark {
        cursor: pointer;
        margin-top: 15px;
        margin-bottom: 15px;
        display: inline-block;
      }
      
      #tripartner>a, #likePost>a, #userSetting>a, #bookMark>a {
      	text-decoration: none;
        color: black;
      }

      #tripartner>a:hover, #likePost>a:hover, #userSetting>a:hover, #bookMark>a:hover {
        color: RGB(112, 217, 223);
      }
      
      #memNickname{
        text-align: center;
      }
      
      #following{
	    background-color: rgba(240, 248, 255, 0.199);
	    border: 1px solid black;
	    border-radius: 7px 7px 7px 7px;
	    width: 120px;
	    height: 35px;
  	}
  
  	#followingWrap{
  		float:right;
  	}




</style>
</head>

<body id="body" class="up-scroll">

<jsp:include page="../common/header.jsp"/>

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
                            <div class="col-lg-6" style="margin-left: 160px; border: solid 3px rgba(199, 198, 198, 0.37); padding: 35px; border-radius:  15px 15px 15px 15px;">
                              <div id="followingWrap">
                              	<button id="follow" name="follow">팔로우</button>
                              </div>
                              <div style="padding-left:260px;">
                                <h3 class="text-uppercase mb-3">${otherInfo.memNickname } 님의 프로필</h3>
                              </div>
                              <hr>
                              <c:choose>
                              <c:when test="${ empty otherInfo.img }">
	                              <div align="center" style="padding-top: 25px;">
	                              	<img src="${pageContext.request.contextPath}/resources/img/user (2).jfif" id="preview-img" style="width:65px; height:65px; border-radius: 50%;" />
	                              </div>
                              </c:when>
                              <c:otherwise>
	                              <div align="center" style="padding-top: 25px;">
	                              	<img src="${otherInfo.img}" id="preview-img" style="width:65px; height:65px; border-radius: 50%;"/>
	                              </div>
                              </c:otherwise>
                              </c:choose>
                              
                              <c:if test="${not empty otherInfo.mbti }">
	                              <div style="padding-top: 15px;">
	                              <table align="center"">
	                                <tr style="width: 30px;">
	                                  <td id="mbti" align="center" style="width:200px;">${otherInfo.mbti }</td>
	                                </tr>
	                              </table>
	                              </div>
							 </c:if>
							 
                              <div class="mb-3" align="center" style="padding-top: 20px; padding-bottom: 25px;">
                                <input type="text" id="memNickname" class="form-control bg-smoke" style="width:200px; border: none;" value="${otherInfo.memNickname }" readonly>
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
                                      <span id="tripartner"><a href="otherPartnerPostList.do?memNo=${otherInfo.memNo }">🔎 ${otherInfo.memNickname }님의 동행 게시글</a></span>
                                  </li>
                          
                                  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                                      <span id="bookMark"><a href="otherBookMarkList.do?memNo=${otherInfo.memNo }">⭐ ${otherInfo.memNickname }님의 즐겨찾기 </a></span>
                                  </li>
                                  
                                  </li>
                                  
                                </ul>
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
      
      
      
      <input type="hidden" value="${otherInfo.memNo }" name="followerNo" id="followerNo">
      </section>
      
      
      
        </div><!-- element wrapper ends -->
      
      <script>
      $("#follow").click(function() {
    	    
    	    $.ajax({
    	        url: "follow.do", // 팔로우 작업을 처리하는 서버의 URL
    	        method: "POST", // 요청 메서드 (POST 또는 GET)
    	        data: { followerNo: $("#followerNo").val() }, // 서버에 전달할 데이터
    	        
    	        success: function(response) {
    	            // 서버 응답이 성공적으로 도착했을 때 실행되는 콜백 함수
    	            if (response.success) {
    	                // 팔로우 작업이 성공한 경우
    	                
    	                // 팔로우 버튼의 상태를 토글 (팔로우/언팔로우)
    	                var followButton = $("#follow");
    	                if (followButton.hasClass("following")) {
    	                    followButton.removeClass("follow");
    	                    followButton.text("팔로잉");
    	                    followButton.css("backgroundcolor", "blue");
    	                } else {
    	                    followButton.addClass("following");
    	                    followButton.text("Unfollow");
    	                }
    	                
    	            } else {
    	                // 팔로우 작업이 실패한 경우
    	                console.log("팔로우 작업 실패");
    	            }
    	        },
    	        
    	        error: function() {
    	            // AJAX 요청이 실패한 경우
    	            console.log("AJAX 요청 실패");
    	        }
    	    });
    	});
      </script>




<jsp:include page="../common/footer.jsp"/>
</html>