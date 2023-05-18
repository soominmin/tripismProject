<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      
      #tripartner>a, #likePost>a, #userSetting>a, #bookMark>a {
      	text-decoration: none;
        color: black;
      }

      #tripartner>a:hover, #likePost>a:hover, #userSetting>a:hover, #bookMark>a:hover {
        color: RGB(112, 217, 223);
      }


      #myPagebar{
        position: sticky;

      }

</style>
</head>
<body>

      <div class="col-lg-4 col-xl-3" >
  <div class="mb-md-6 mb-lg-0" id="myPagebar" style="width: 280px; padding-left:15px; ">
    <div class="row" >


    <!-- Sidebar -->
      <div class="col-md-6 col-lg-12 d-none d-md-block" >
        <div style="border: solid 3px rgba(199, 198, 198, 0.37); border-radius: 10px 10px 10px 10px; padding: 25px;">
          <c:choose>
          	<c:when test="${empty loginUser.img }">
	          <div>
	            <h3 class="mb-4" id="userName"><img src="${pageContext.request.contextPath}/resources/img/user (2).jfif"></h3>
	                <div id="userId"><h5>${loginUser.memNickname }</h5></div>
	                <div id="userNickName"><p>${loginUser.memId }</p></div>
	          </div>
         	 </c:when>
         	 <c:otherwise>
	         	 <div>
		            <h3 class="mb-4" id="userName"><img src="${loginUser.img}"></h3>
		                <div id="userId"><h5>${loginUser.memNickname }</h5></div>
		                <div id="userNickName"><p>${loginUser.memId }</p></div>
		         </div>
         	 </c:otherwise>
          </c:choose>
            
        <div id="ulli" style="margin-top: 20px;" >
            <ul class="list-unstyled list-group list-group-flush" style="width:100%; padding-left:10px;">
              <li class="list-group-item bg-transparent border-off-white border-top-0 p-0" >
                  <span id="userSetting" style="padding:0" ><a href="mypage.do" >⚙️ 마이페이지 </a></span>
              </li>
              
              <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                  <span id="likePost"><a href="myInfoUpdate.do">ℹ️ 내정보수정하기</a></span>
              </li>
      
              <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                  <span id="likePost"><a href="spotLike.do">❤️ 좋아한 여행지</a></span>
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
              
              </li>
			  <c:choose>
			  <c:when test="${not empty loginUser.mbti }">
	              <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
	                <span id="bookMark"><a href="mbtiStart.do"> 💭 MBTI 다시해보기 </a></span>
	              </li>
              </c:when>
              <c:otherwise>
	              <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
	                <span id="bookMark"><a href="mbtiStart.do"> 💭 MBTI 검사하기 </a></span>
	              </li>
              
              </c:otherwise>
              </c:choose>

              
            </ul>
        </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</body>
</html>