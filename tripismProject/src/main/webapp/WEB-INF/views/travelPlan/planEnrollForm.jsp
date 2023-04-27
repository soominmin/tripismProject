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
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	

    <input type="text" name="dates">
	
	<div id="search" style="display: none;">
		<input type="text" id="searchVal">
		<button type="button" onclick="searchTour();">검색</button>
	</div>
	<div id="content">
		
	</div>
    <div class="modal fade" id="plan" tabindex="-1" role="dialog" aria-label="loginModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document" >
          <div class="modal-plan" style="width: 800px !important; height: 700px;">
            <div class="modal-header rounded" id="modalTop">
              <h3 class="modal-title text-uppercase font-weight-bold">여행지 검색</h3>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            
            <div id="map" class="modal-body" style="width: 90%; height: 90%;">
              <div >지도</div>
              
              
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
    

</body>
</html>
