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

	.spotTilte:hover{cursor: pointer;}
	.addSpot,.info img{width: 20%;}
	.spotTitle{width: 60%;}
	.dotOverlay {position:relative;bottom:10px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;font-size:12px;padding:5px;background:#fff;}
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	
	<div>
		<input type="button" onclick="tourInsert();" value="관광지 데이터 insert">
	</div>
    <input type="text" name="dates">
	
	
	<div id="content">
		
	</div>
    <!-- <div class="modal fade" id="plan" tabindex="-1" role="dialog" aria-label="loginModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document" style="margin-left:50px; ">
          <div class="modal-plan" style="width: 1000px ; height: 850px;">
            <div class="modal-header rounded" id="modalTop" style="height: 5%;">
              <h3 class="modal-title text-uppercase font-weight-bold">여행지 검색</h3>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div style="width: 100%; height: 70%; display:flex; ">
	            <div id="map" class="modal-body" style="width: 50%; height: 100%;">
	            </div>
	            <div style="width: 50%; height: 100%; background-color:white;">
	            	<div class="option" style="height: 10%;">
	                	
	                    <div id="search" style="display: none;">
							<input type="text" id="searchVal">
							<button type="button" onclick="searchTour();">검색</button>
						</div>
	                 </div>
                  	 <div id="placesDiv" style="overflow: auto; height: 90%;">
	                 	<ul id="placesList">
	                  	</ul>
                  	</div>
	            </div>
				
            </div>
			
			<div id="spotList" style="width: 100%; height: 20%; ">
				<h3 style="width: 10%;">여행지 목록</h3>
				<div id="addedList" style="width: 100%; height: 80%; overflow: auto;">

				</div>
				

			</div>
			
			<div style="height: 5%;">
				<button id="btnCom" class="btnButtonStyle-sc-1m85upr-1 iJuLkw" type="button" data-bs-dismiss="modal" aria-label="Close">완료</button>
			</div>
  
            
          </div>
        </div>
      </div> -->
	  <div id="modalDiv"></div>
    
    <script src="resources/js/travelPlan/plan.js"></script>
    <script>
    //   const mapModal = document.getElementById("plan");
	//   const mapModal = document.getElementsByClassName('modal');
	  
	//   for(let i=0;i<mapModal.length;i++){
	// 	mapModal[i].addEventListener('shown.bs.modal',function(event){
	// 		console.log(mapModal[i]);
	// 		createMap(i);
        
    //   	})
	//   }
      
	  
    </script>
	<script>

		// const placesList = document.getElementById("placesList");
		// placesList.addEventListener("click",e=>{
		// 	const targetEl = e.target;
		// 	if(!targetEl.classList.contains('addSpot'))return;
			
		// 	const spotList = document.getElementById('addedList');
		// 	const spot = document.createElement('div');

		// 	spot.className='addedSpot';
		// 	spot.innerText=e.target.previousElementSibling.innerText;
		// 	spotList.appendChild(spot);
		// 	spotList.scrollTop = spotList.scrollHeight;
		// })
		

		// const placesList = document.getElementsByClassName('placesList');
		// const btnCom = document.getElementsByClassName('btnCom');

		// for(let i=0;i<placesList.length;i++){
		// 	placesList[i].addEventListener('click',e=>{
		// 		const targetEl = e.target;
		// 		if(!targetEl.classList.contains('addSpot'))return;
				
		// 		const spotList = document.getElementById('addedList');
		// 		const spot = document.createElement('div');

		// 		spot.className='addedSpot';
		// 		spot.innerText=e.target.previousElementSibling.innerText;
		// 		spotList.appendChild(spot);
		// 		spotList.scrollTop = spotList.scrollHeight;
		// 	})
		// }
		
		// for(let i=0;i<btnCom.length;i++){
		// 	btnCom[i].addEventListener('click',()=>{
			
		// 		const addedSpot = document.getElementsByClassName('addedSpot');
		// 		console.log(addedSpot);
		// 		for(let i=0;i<addedSpot.length;i++){
		// 			console.log(addedSpot[i].innerText);
		// 		}
		

		// 	})
		// }
		
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
		 },1000)

		 }
		</script>
    
    

</body>
</html>
