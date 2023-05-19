<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<div>
			  <div class="row align-items-xl-center">
			  <div class="container">
				<div>
				<div class="row">
					<div class="col-12">
						<div class="row" style="width: 1670px;">
						  <div class="col-lg-6" style="border: solid 3px rgba(199, 198, 198, 0.37); padding: 35px; border-radius:  15px 15px 15px 15px;">
<!-- 마이페이지 form 끝 -->

<div class="mb-4" style="padding-top: 40px;">
  <h3 class="text-uppercase mb-3" align="center">👯나의 친구 목록👯</h3>
</div>

<!-- 팔로우 팔로잉 시작 -->
<div id="followWrap">
  <div id="followerDiv" align="center">
    <button id="follower" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6"> 팔로잉 </button>
  </div>
  <div id="followingDiv">
    <button id="following" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6" align="center"> 팔로워 </button>
  </div>
</div>

  
  <div id="user">
    <table class="table table-hover" style="display:inlink-block; float:right; width:200px; margin-right:140px">
  	  <c:forEach var="fwr" items="${followerList }">
      <tr align="center">
      	<td style="width: 50px; margin-bottom:50px;">${fwr.memNickname }</td>
      </tr>
      </c:forEach>
    </table>
    
    <table class="table table-hover" style="display:inlink-block; width:200px; float:left; margin-left:170px;">  
  	  <c:forEach var="fw" items="${followingList }">
      <tr align="center">
      	<td style="width: 50px; margin-bottom:50px;">${fw.memNickname }</td>
      </tr>
      </c:forEach>
    </table>
      
  </div>

<!-- 팔로우 팔로잉 끝 -->




        </div>
        <jsp:include page="../member/mypageSidebar.jsp"/>
        </div>
        </div>
        </div>
        </div>
        </div>
        </div>
        </div>
        </section>
        </div>
        
<jsp:include page="../common/footer.jsp"/>
</body>
</html>