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
						<div class="row" style="width: 1670px;">
						  <div class="col-lg-6" style="border: solid 3px rgba(199, 198, 198, 0.37); padding: 35px; border-radius:  15px 15px 15px 15px;">
               			<div class="mb-4" style="padding-bottom:30px;">
             <h3 class="text-uppercase mb-3" align="center">나의 즐겨찾기 목록</h3>
           	   </div>
    <div>
      <div>


        <div class="modal-body">

            <button class="btn btn-facebook text-uppercase text-white" id="folderAdd" data-bs-toggle="modal" data-bs-target="#addFolder">새폴더추가</button>
            <div id="folderContainer">
            <div style="height: 1px;">
              <hr>
            </div>
            
            <!-- 반복 -->
            <c:forEach var="f" items="${folderList }">
            <div id="folderWrap">
			  <div class="mb-3" id="bookMarkImg" style="float: left; height: 40px;">
			    <img src="${pageContext.request.contextPath}/resources/img/bookMark.png" style="width: 35x; height: 35px; border-radius: 50%;">
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
			<!-- 반복끝 -->
			</c:forEach>
			
			
			  
			</div>
			<!-- 끝 -->
              </div>
        </div>
      </div>
    </div>
<jsp:include page="../member/mypageSidebar.jsp"/>
  </div>
      



</div>
</div>
</div>
</div>
</div>
</div>

</div>


<!-- 폴더추가 모달창 -->

<div class="modal fade" id="addFolder" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
     <div class="modal-subin">
      <div class="modal-content" style="width:360px;">
        <div class="modal-header rounded" id="modalTop">
          <h3 class="modal-title text-uppercase font-weight-bold">폴더추가하기</h3>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>


		<form action="insertFolder.do" id="insertFolder">
        <div class="modal-body">
          <div class="mb-3" align="center" style="padding-bottom:7px;">
            <input type="text" class="form-control bg-smoke" name="folderName" required placeholder="폴더명을 입력하세요." >
            <input type="hidden" name="memNo" id="memNo" value="${loginUser.memNo }">
          </div>
          <div class="mb-3" align="center">
            <button class="btn btn-primary btn-block text-uppercase" id="okBtn">완료</button>
           </div>
        </div>
        </form>
      </div>
    </div>
  </div>
  </div>
  
<!-- 폴더추가 모달끝 -->
</div>
</div>
</section>
</div>

<script>

	  // document.getElementById("folderAdd").addEventListener("click", function() {
	  // 새로운 폴더를 위한 템플릿 엘리먼트 복제
	  // const folderTemplate = document.getElementById("folderTemplate");
	  // const newFolder = folderTemplate.content.cloneNode(true);
	
	  // 폴더명을 입력받는 프롬프트 창 표시
	  // const folderName = prompt("폴더명을 입력하세요.");
	  // newFolder.querySelector(".folderName h5").textContent = folderName;
	
	  // 새로운 폴더를 폴더 컨테이너에 추가
	  // const folderContainer = document.getElementById("folderContainer");
	  // folderContainer.appendChild(newFolder);
	  
	  // const memNo = document.getElementById("memNo").value;
	  
	  
	  
	  	//	 $.ajax({
	  	//	url : // "insertFolder.do",
	  	//	data : {folderName, memNo}
	  	//	console.log(folderName),
	  	//	success:function(result){
	  			 // 새로운 폴더를 폴더 컨테이너에 추가
	  	//	  const folderContainer = document.getElementById("folderContainer");
	  	//	  folderContainer.appendChild(newFolder);
	  	//	}, error : function(){
	  	//		console.log("ajax 통신 실패");
	  	//	}
	  		
	  	// })
		// });
	  
		$(function(){
			$("okBtn").click(function(){
				const $folderNameInput = $("#insertFolder input[name=folderName]");
				const $memNoInput = $("#memNo input[name=memNo]");
				$.ajax({
					url:"insertFolder.do",
					data:{folderName:$folderNameInput.val(),
						  memNo:$memNoInput.val()
						},
					succss:function(count){
						console.log(count);
				 }, error : function(){	
						console.log("ajax 통신 실패");
					}
				})
				
			})
		 
			})
			
			

	
	
	
</script>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>