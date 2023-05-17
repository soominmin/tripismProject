<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#modalTop{
  border-top: 6px solid RGB(112, 217, 223);
}


#bookMarkImg>img{
    width: 35x;
    height: 35px;
    border-radius: 50%;
}

.folderInfo{
  height: 30px;
}

.folderInfo>.folderName,.place{
  height: 5px;
}

#bookMarkWrap{
  margin: auto;
  margin-bottom: 10px;
}

#folderAdd{
  background-color: RGB(112, 217, 223);
  border: none;
  height: 35px;
  text-align: center;

}

#folderWrap{
  cursor: pointer;
}

#okBtn{
	  background-color: RGB(112, 217, 223);
	  border: none;
	  width: 200px;
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
						<div class="row" style="width: 1670px; height:670px;">
						  <div class="col-lg-6" style="border: solid 3px rgba(199, 198, 198, 0.37); padding: 35px; border-radius:  15px 15px 15px 15px;  margin-left: 160px;">
               			<div class="mb-4" style="padding-bottom:30px;">
             				<h3 class="text-uppercase mb-3" align="center">즐겨찾기 목록</h3>
           	   			</div>
           	   			
    <div>
      <div>


        <div class="modal-body">

            <div id="folderContainer">
            
            <!-- 반복 -->
            <c:forEach var="f" items="${folderList }">
	            <c:choose>
	            	<c:when test="${not empty f }">
		            <div id="folderWrap">
					  <div class="mb-3" id="bookMarkImg" style="float: left; height: 40px;">
					    <img src="${pageContext.request.contextPath}/resources/img/bookMark.png" style="width: 35x; height: 35px; border-radius: 50%; ">
					  </div>
					  <div class="folderInfo">
					    <div class="folderName">
					      <h5 style="padding-left: 45px; margin-top: 15px;">${f.folderName }</h5>
					    </div>
						<!--     <div class="place">
					      <p style="padding-left: 40px; margin-top: 15px;">📍n(개)</p>
					    </div> -->
					  </div>
					  <div style="height: 1px;">
					    <hr>
					  </div>
					</div>
					</c:when>
					<c:otherwise>
						<h5>아직 ${f.memNickname }님의 즐겨찾기가 존재하지 않습니다.</h5>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<!-- 반복끝 -->
			
			
			  
			</div>
			<!-- 끝 -->
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
</div>
</section>
</div>

<script>

	

			
			

	
	
	
</script>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>