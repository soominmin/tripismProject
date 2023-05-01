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
      
      #tripartner>a, #likePost>a, #userSetting>a, #bookMark>a {
      	text-decoration: none;
        color: black;
      }

      #tripartner>a:hover, #likePost>a:hover, #userSetting>a:hover, #bookMark>a:hover {
        color: RGB(112, 217, 223);
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

      <div class="col-lg-4 col-xl-3" >
  <div class="mb-md-6 mb-lg-0" id="myPagebar" style="width: 280px;">
    <div class="row" >


    <!-- Sidebar -->
      <div class="col-md-6 col-lg-12 d-none d-md-block">
        <div class="bg-smoke border border-light-gray rounded p-3 mb-4">
          <div>
            <h3 class="mb-4" id="userName"><img src="${pageContext.request.contextPath}/resources/img/user (2).jfif" alt=""></h3>
                <div id="userId"><h4>userId</h4></div>
                <div id="userNickName"><p>userNickName</p></div>
            </div>
            
        <div id="ulli">
            <ul class="list-unstyled list-group list-group-flush">
              <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                  <span id="userSetting"><a href="userSetting.do">⚙️ 계정설정 </a></span>
              </li>
      
              <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                  <span id="likePost"><a href="spotLike.do">❤️ 내가 좋아요한 여행지</a></span>
              </li>
      
              <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                  <span id="tripartner"><a href="partnerPostList.do">🔎 내 동행 게시글</a></span>
              </li>
      
              <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                  <span id="bookMark">⭐ 즐겨찾기</span>
              </li>
              
              <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                  <span id="bookMark">👯팔로우/팔로잉</span>
              </li>
            </ul>
        </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>