<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  #followWrap{
    padding-top: 50px;
  }

  #followingDiv, #followerDiv{
    float: left;
    width: 40%;
    height: 70px;
  }

  #followerDiv{
    margin-left: 120px;
  }

  #followingDiv{
    height: 100%;
  }

  #follower, #following{
    width: 200px;
    background-color: RGB(112, 217, 223);
    border-color: RGB(112, 217, 223);
  }

  #user{
    height: 500px;
  }

  #userTable{
    margin-left: 120px;
    width: 80%;
  }
  
  #userTable td{
  	height: 50px;
  }

</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<!-- 마이페이지 form -->
<div class="main-wrapper blog-list-right-sidebar">
  <section class="py-9 py-md-10">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-xl-9 order-1 order-lg-0">
          <div class="card rounded-0 card-transparent border-bottom mb-7 pb-7"  style="background:#f5f5f5;">
            <div class="row align-items-xl-center">
            <div class="container">
            <div class="bg-smoke p-2 p-md-6 pb-6 pb-md-8 mb-9 rounded">
              <div class="row">
<!-- 마이페이지 form 끝 -->

<div class="mb-4" style="padding-top: 40px;">
  <h3 class="text-uppercase mb-3" align="center">👯팔로우/팔로잉👯</h3>
</div>

<!-- 팔로우 팔로잉 시작 -->
<div id="followWrap">
  <div id="followerDiv" align="center">
    <button id="follower" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6"> 팔로워 </button>
  </div>
  <div id="followingDiv">
    <button id="following" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6" align="center"> 팔로잉 </button>
  </div>
</div>

  
  <div id="user">
    <table id="userTable">
      <tr align="center">
        <td style="width: 200px;">user01</td>
        <td style="width: 200px; padding-right: 120px;"><button id="delete" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6" align="center"> 삭제 </button></td>
      </tr>
      <tr align="center">
        <td style="width: 200px;">user02</td>
        <td style="width: 200px; padding-right: 120px;"><button id="delete" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6" align="center"> 삭제 </button></td>
      </tr>
      <tr align="center">
        <td style="width: 200px;">user02</td>
        <td style="width: 200px; padding-right: 120px;"><button id="delete" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6" align="center"> 삭제 </button></td>
      </tr>
      <tr align="center">
        <td style="width: 200px;">user02</td>
        <td style="width: 200px; padding-right: 120px;"><button id="delete" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6" align="center"> 삭제 </button></td>
      </tr>
      <tr align="center">
        <td style="width: 200px;">user02</td>
        <td style="width: 200px; padding-right: 120px;"><button id="delete" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6" align="center"> 삭제 </button></td>
      </tr>
      <tr align="center">
        <td style="width: 200px;">user02</td>
        <td style="width: 200px; padding-right: 120px;"><button id="delete" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6" align="center"> 삭제 </button></td>
      </tr>
      <tr align="center">
        <td style="width: 200px;">user02</td>
        <td style="width: 200px; padding-right: 120px;"><button id="delete" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6" align="center"> 삭제 </button></td>
      </tr>
    </table>

  </div>

<!-- 팔로우 팔로잉 끝 -->
<script>
$(document).ready(function() {

  // 팔로잉 버튼 클릭시 이벤트 핸들러 등록
  $("#following").click(function() {

    // 각각의 삭제 버튼(<button>)의 id를 "following1", "following2"로 변경하고, 버튼 내용을 "팔로잉"으로 변경
    $("#delete").attr("id", "delete").text("팔로잉");
    $("#delete").attr("id", "delete").text("팔로잉");

  });

});

$(document).ready(function() {

  // 팔로잉 버튼 클릭시 이벤트 핸들러 등록
  $("#follower").click(function() {

    // 각각의 삭제 버튼(<button>)의 id를 "following1", "following2"로 변경하고, 버튼 내용을 "팔로잉"으로 변경
    $("#delete").attr("id", "follow").text("삭제");

  });

	});
</script>



        </div>
        </div>
        </div>
        </div>
        </div>
        </div>
        <jsp:include page="../member/mypageSidebar.jsp"/>
        </div>
        </div>
        </section>
        </div>
        
<jsp:include page="../common/footer.jsp"/>
</body>
</html>