<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#deleteBtn{
		background-color: RGB(112, 217, 223);
		border: RGB(112, 217, 223);
	}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>

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
						<div class="row" style="width: 1500px;">
						  <div class="col-lg-6" style="border: solid 3px rgba(199, 198, 198, 0.37); border-radius:  15px 15px 15px 15px;">

               	<div class="mb-4" style="padding-top: 40px;">
             		<h3 class="text-uppercase mb-3" align="center">Tripism 탈퇴하기 😭</h3>
           		</div>
               
           <form action="deleteMember.do" method="post">
            <div class="mb-4" style="">
            	<input type="hidden" value="${loginUser.memId }" name="memId">
          		<button id="deleteBtn" class="form-control bg-smoke" style="width:200px; margin:auto; background-color:RGB(112, 217, 223); border:RGB(112, 217, 223);">탈퇴하기</button>
          	</div>
	       </form>
	         </div>
	       <jsp:include page="../member/mypageSidebar.jsp"/>
	          </div>
	        </div>
			</section>
	      </div>
	     
	      

                              
<jsp:include page="../common/footer.jsp"/>
</body>
</html>