<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/json/sido.json"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d01b5e344f19b98d9ce3f465ded0b304"></script>  
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<style type="text/css">

</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	
	<div>
		<input type="button" onclick="tourInsert();" value="관광지 데이터 insert">
	</div>
    <input type="text" name="dates">
	
	<div id="search" style="display: none;">
		<input type="text" id="searchVal">
		<button type="button" onclick="searchTour();">검색</button>
	</div>
	<div id="content">
		
	</div>
    <div class="modal fade" id="plan" tabindex="-1" role="dialog" aria-label="loginModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document" style="margin-left:300px; ">
          <div class="modal-plan" style="width: 1000px !important; height: 1000px;">
            <div class="modal-header rounded" id="modalTop">
              <h3 class="modal-title text-uppercase font-weight-bold">여행지 검색</h3>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div style="width: 100%; height: 100%; display:flex; ">
	            <div id="map" class="modal-body" style="width: 50% !important; height: 70%;">
	            </div>
	            <div style="width: 50%; height: 70%; background-color:gray; overflow: auto;">
                <div id="menu_wrap" class="bg_white">
                  <div class="option">
                    <br>
                      <div>
                          <form onsubmit="searchPlaces(); return false;">
                              <input type="text" value="경복궁" id="keyword" size="15"> 
                              <button type="submit" class="btn-sm" style="background-color: rgb(112, 217, 223); color: white; border-radius: 30px; height: 40px">검색</button>
                          </form>
                      </div>
                      <br>
                  </div>
                  <hr>
                  <br>
                  <ul id="placesList"><li class="item"><span class="markerbg marker_1"></span><div class="info">   <h5>경복궁</h5>    <span>서울 종로구 사직로 161</span>   <span class="jibun gray">서울 종로구 세종로 1-91</span>  <span class="tel">02-3700-3900</span></div></li><li class="item"><span class="markerbg marker_2"></span><div class="info">   <h5>경복궁주유소</h5>    <span>서울 종로구 율곡로 6</span>   <span class="jibun gray">서울 종로구 중학동 14</span>  <span class="tel">02-6016-6981</span></div></li><li class="item"><span class="markerbg marker_3"></span><div class="info">   <h5>경복궁역 3호선</h5>    <span>서울 종로구 사직로 지하 130</span>   <span class="jibun gray">서울 종로구 적선동 81-1</span>  <span class="tel">02-6110-3271</span></div></li><li class="item"><span class="markerbg marker_4"></span><div class="info">   <h5>경복궁 주차장</h5>    <span>서울 종로구 사직로 161</span>   <span class="jibun gray">서울 종로구 세종로 1-1</span>  <span class="tel"></span></div></li><li class="item"><span class="markerbg marker_5"></span><div class="info">   <h5>경복궁 지하주차장1</h5>    <span>서울 종로구 사직로 161</span>   <span class="jibun gray">서울 종로구 세종로 1-1</span>  <span class="tel"></span></div></li><li class="item"><span class="markerbg marker_6"></span><div class="info">   <h5>경복궁 관훈점</h5>    <span>서울 종로구 인사동5길 38</span>   <span class="jibun gray">서울 종로구 관훈동 198-42</span>  <span class="tel">02-722-7713</span></div></li><li class="item"><span class="markerbg marker_7"></span><div class="info">   <h5>경복궁 매표소1</h5>    <span>서울 종로구 사직로 161</span>   <span class="jibun gray">서울 종로구 세종로 1-1</span>  <span class="tel"></span></div></li><li class="item"><span class="markerbg marker_8"></span><div class="info">   <h5>경복궁 경회루</h5>    <span>서울 종로구 세종로 1-1</span>  <span class="tel"></span></div></li><li class="item"><span class="markerbg marker_9"></span><div class="info">   <h5>경복궁 근정전</h5>    <span>서울 종로구 사직로 161</span>   <span class="jibun gray">서울 종로구 세종로 1-1</span>  <span class="tel"></span></div></li><li class="item"><span class="markerbg marker_10"></span><div class="info">   <h5>경복궁 향원정</h5>    <span>서울 종로구 사직로 161</span>   <span class="jibun gray">서울 종로구 세종로 1-1</span>  <span class="tel"></span></div></li><li class="item"><span class="markerbg marker_11"></span><div class="info">   <h5>다이소 경복궁역점</h5>    <span>서울 종로구 사직로 125</span>   <span class="jibun gray">서울 종로구 적선동 107-1</span>  <span class="tel">02-733-6016</span></div></li><li class="item"><span class="markerbg marker_12"></span><div class="info">   <h5>경복궁 신무문</h5>    <span>서울 종로구 사직로 161</span>   <span class="jibun gray">서울 종로구 세종로 1-1</span>  <span class="tel"></span></div></li><li class="item"><span class="markerbg marker_13"></span><div class="info">   <h5>경복궁박광일참치</h5>    <span>서울 종로구 자하문로 26-1</span>   <span class="jibun gray">서울 종로구 통의동 72</span>  <span class="tel">02-732-4114</span></div></li><li class="item"><span class="markerbg marker_14"></span><div class="info">   <h5>경복궁아트홀</h5>    <span>서울 종로구 자하문로 82</span>   <span class="jibun gray">서울 종로구 효자동 70-1</span>  <span class="tel">02-305-0525</span></div></li><li class="item"><span class="markerbg marker_15"></span><div class="info">   <h5>경복궁역 7번출구 앞 대여소</h5>    <span>서울 종로구 내자동 75-4</span>  <span class="tel"></span></div></li></ul>
                  <div id="pagination"><a href="#" class="on">1</a><a href="#">2</a><a href="#">3</a></div>
              </div>
	            	
	            	
	            	
	            </div>
            </div>
  
            
          </div>
        </div>
      </div>
    
    <script src="resources/js/travelPlan/plan.js"></script>
    <script>
      var mapModal = document.getElementById("plan");
      mapModal.addEventListener('shown.bs.modal',function(event){
        createMap();
        
      })
    </script>
    <script>
		let j =1;
		
		function tourInsert(){ //한국관광공사 api 관광지 전체 데이터 insert
		 console.log("asd");
		 let interval = setInterval(function () {
				
		 	$.ajax({
		 		url: "tourInsert.do",
		 		data:{pageNum:j++},
		 		success:function(data){
		 			console.log("데이터입력 성공");
		 			console.log(data);
				},
		 		error:function(){
		 			console.log("데이터입력 실패");
				}
	
	
		 	})
		 	if(j==169){
		 		clearInterval(interval);
			}
		 },3000)

		 }
		</script>
    
    

</body>
</html>
