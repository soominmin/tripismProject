<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>


<div id="bookMark" tabindex="-1" role="dialog" aria-label="signupModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
     <div class="modal-subin">
      <div class="modal-content" style="width:360px;">
        <div class="modal-header rounded" id="modalTop">
          <h3 class="modal-title text-uppercase font-weight-bold">내 즐겨찾기 폴더</h3>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>

		<form action="insertFolder.do">
        <div class="modal-body">
            <h4 style="font-weight: bold;">전체폴더 N</h4>

            <button class="btn btn-facebook text-uppercase text-white" id="folderAdd">새폴더추가</button>
            <div id="folderContainer">
            <div style="height: 1px;">
              <hr>
            </div>
              </div>
            <button type="submit" class="btn btn-facebook text-uppercase text-white">폴더 추가 완료</button>
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
<!-- 폴더 템플릿 -->
<template id="folderTemplate">
  <div id="folderWrap">
  <div class="mb-3" id="bookMarkImg" style="float: left; height: 40px;">
    <img src="${pageContext.request.contextPath}/resources/img/bookMark.png" style="width: 35x; height: 35px; border-radius: 50%;">
  </div>
  <div class="folderInfo">
    <div class="folderName">
      <h5 style="padding-left: 45px; margin-top: 15px;">폴더명</h5>
    </div>
    <div class="place">
      <p style="padding-left: 40px; margin-top: 15px;">📍n(개)</p>
    </div>
  </div>
  <div style="height: 1px;">
    <hr>
  </div>
</div>
</template>
</div>
</div>
</section>
</div>

<script>
	document.getElementById("folderAdd").addEventListener("click", function() {
	  // 새로운 폴더를 위한 템플릿 엘리먼트 복제
	  const folderTemplate = document.getElementById("folderTemplate");
	  const newFolder = folderTemplate.content.cloneNode(true);
	
	  // 폴더명을 입력받는 프롬프트 창 표시
	  const folderName = prompt("폴더명을 입력하세요.");
	  newFolder.querySelector(".folderName h5").textContent = folderName;
	
	  // 새로운 폴더를 폴더 컨테이너에 추가
	  const folderContainer = document.getElementById("folderContainer");
	  folderContainer.appendChild(newFolder);
	  
	  											
	// folderName을 서버로 보내기 위한 AJAX 요청
	  const xhr = new XMLHttpRequest();
	  xhr.open("POST", "/insertFolder.do", true);
	  xhr.setRequestHeader("Content-Type", "application/json");

	  // folderName 데이터를 포함한 객체 생성
	  const data = {	
	    folderName: folderName
	  };

	  // 데이터를 JSON 형식으로 변환
		  const jsonData = JSON.stringify(data);
	
		  xhr.onreadystatechange = function() {
		    if (xhr.readyState === XMLHttpRequest.DONE) {
		      if (xhr.status === 200) {
		        // 요청이 성공적으로 처리됨
		        console.log("폴더가 성공적으로 추가되었습니다.");
		      } else {
		        // 오류가 발생함
		        console.error("폴더 추가 중 오류가 발생했습니다.");
		      }
		    }
		  };
	
		  // JSON 데이터를 포함한 AJAX 요청 보내기
		  xhr.send(jsonData);

	});
</script>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>