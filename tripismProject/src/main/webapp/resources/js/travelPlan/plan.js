

let searchValue =null;
let currentCode = 0;
let flag = false;
let currentPage = 1;
let maps = [];
let markers = [];
let currentMapNum = 0;

	function createMap(mapNum){
		currentMapNum=mapNum;
		console.log("asdsad");
		let tourInfo = JSON.parse(JSON.stringify(info));
		console.log(tourInfo[0].color);
		console.log(tourInfo);
		console.log(tourInfo[0].code);
		var areas = [];	
		for(let i in tourInfo){
			let poly = {};
			poly.name = tourInfo[i].name;
			poly.path = [];
			for(let j in tourInfo[i].Polygon){
				poly.path.push(new kakao.maps.LatLng(tourInfo[i].Polygon[j][1], tourInfo[i].Polygon[j][0])) ;
			}
			areas.push(poly)
			
		}
		console.log(areas);
		var mapContainer = document.getElementById('map'+(mapNum+1)), // 지도를 표시할 div 
			mapOption = { 
				center: new kakao.maps.LatLng(35.95, 128.25), // 지도의 중심좌표
				level: 13 // 지도의 확대 레벨
			};

		maps[mapNum] = new kakao.maps.Map(mapContainer, mapOption),
			customOverlay = new kakao.maps.CustomOverlay({}),
			infowindow = new kakao.maps.InfoWindow({removable: true});

		// 지도에 영역데이터를 폴리곤으로 표시합니다 
		for (var i = 0, len = areas.length; i < len; i++) {
			
			displayArea(areas[i],tourInfo[i].color,tourInfo[i].code);
			
		}

		// 다각형을 생상하고 이벤트를 등록하는 함수입니다
		function displayArea(area,color,code) {
			
			// 다각형을 생성합니다 
			var polygon = new kakao.maps.Polygon({
				map: maps[mapNum], // 다각형을 표시할 지도 객체
				path: area.path,
				strokeWeight: 2,
				strokeColor: '#004c80',
				strokeOpacity: 0.8,
				fillColor: color,
				fillOpacity: 0.7 
			});

			// 다각형에 mouseover 이벤트를 등록하고 이벤트가 발생하면 폴리곤의 채움색을 변경합니다 
			// 지역명을 표시하는 커스텀오버레이를 지도위에 표시합니다
			kakao.maps.event.addListener(polygon, 'mouseover', function(mouseEvent) {
				polygon.setOptions({fillColor: '#E80F00'});

				// customOverlay.setContent('<div class="area">' + area.name + '</div>');
				
				// customOverlay.setPosition(mouseEvent.latLng); 
				// customOverlay.setMap(map);
			});

			// 다각형에 mousemove 이벤트를 등록하고 이벤트가 발생하면 커스텀 오버레이의 위치를 변경합니다 
			kakao.maps.event.addListener(polygon, 'mousemove', function(mouseEvent) {
				
				customOverlay.setPosition(mouseEvent.latLng); 
			});

			// 다각형에 mouseout 이벤트를 등록하고 이벤트가 발생하면 폴리곤의 채움색을 원래색으로 변경합니다
			// 커스텀 오버레이를 지도에서 제거합니다 
			kakao.maps.event.addListener(polygon, 'mouseout', function() {
				polygon.setOptions({fillColor: color});
				customOverlay.setMap(null);
			}); 

			// 다각형에 click 이벤트를 등록하고 이벤트가 발생하면 다각형의 이름과 면적을 인포윈도우에 표시합니다 
			kakao.maps.event.addListener(polygon, 'click', function(mouseEvent) {
				
				let area = code;
				console.log(area);
				let markerNum = 1;
				// 지도 중심을 부드럽게 이동시킵니다
				// 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
				let lat = 0;
				let lng = 0;
				switch(area){
					case '1' : 
						lat = 37.715133;
						lng = 127.0016985;
						break;
					case '2' :
						lat = 37.4562557;
						lng = 126.7052062
						break;
					case '3' :
						lat = 36.3504119;
						lng = 127.3845475;
						break;
					case '4' :
						lat = 35.8714354;
						lng = 128.601445;
						break;
					case '5' :
						lat = 35.1;
						lng = 126.8;
						break;
					case '6' :
						lat = 35.1795543;
						lng = 129.0756416;
						break;
					case '7' :
						lat = 35.5383773;
						lng = 129.3113596;
						break;
					case '8' :
						lat = 36.5040736;
						lng = 127.2494855;
						break;
					case '31' :
						lat = 37.5864315;
						lng = 127.0462765;
						break;
					case '32' :
						lat = 37.8304115;
						lng = 128.2260705;
						break;
					case '33' :
						lat = 36.628503;
						lng = 127.929344;
						break;
					case '37' : 
						lat = 35.716705;
						lng = 127.144185;
						break;
					case '39' :
						lat = 33.4996213;
						lng = 126.5311884;
						break;
					case '34' :
						lat = 36.5184;
						lng = 126.8;
						break;
					case '38' :
						lat = 34.819400;
						lng = 126.893113;
						break;
					case '35' :
						lat = 36.248647;
						lng = 128.664734;
						break;
					case '36' :
						lat = 35.259787;
						lng = 128.664734;
						break;

				}
				console.log(lat,lng);
				// panTo(lat,lng);
				
				
				
				$("#search"+(mapNum+1)).css("display","block")
				currentPage = 1;
				searchValue="";
				// flag = true;
				
				// console.log(code);
				


				selectTourList(code,currentPage,searchValue,markerNum);
				// console.log(currentPage);
				currentCode = code;
				
				
				
				
				
			});
			// function panTo(lat,lng) {
			// 	// 이동할 위도 경도 위치를 생성합니다 
			// 	var moveLatLon = new kakao.maps.LatLng(lat, lng);
				
			// 	// 지도 중심을 부드럽게 이동시킵니다
			// 	// 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
			// 	map.setLevel(11);          
			// 	map.panTo(moveLatLon);  
			// }        
		}

	
	
	

	let isUpdateList = true;
	const placesDiv = document.getElementById("placesDiv"+(mapNum+1));
	placesDiv.onscroll = function(e) {
      if((placesDiv.clientHeight + placesDiv.scrollTop) >= (placesDiv.scrollHeight-3)) { 
        if(isUpdateList){
            isUpdateList = false;
            
			selectTourList(currentCode,++currentPage,searchValue);
            isUpdateList = true;
        }
        
      }
    }
}
	function selectTourList(code,currentPage,searchValue,markerNum){
		if(currentCode!=code){
			$("#placesList"+(currentMapNum+1)).html("");
			markers.forEach(marker=>{
				marker.setMap(null);
			})
			markers.length=0;
			
		}
		console.log(searchValue)
		let value = "";
		
		$.ajax({
			url:"tourList.do",
			data:{areaCode:code,
				currentPage:currentPage,
				searchValue:searchValue},
			success:function(list){
				for(let i=0; i<list.length; i++){
					value += '<hr style="margin-top:0;"><li class="item">'
							+ '<span class="markerbg marker_'+(markerNum++)+'"></span>'
							+ '<div class="info" style="display:flex;">' ; 
							if(list[i].spotImgPath!=null){
								value+='<img src="'+list[i].spotImgPath+'" style="width:50px; height:50px;">';
							}else{
								value+='<img src="https://3.bp.blogspot.com/-WhBe10rJzG4/U4W-hvWvRCI/AAAAAAAABxg/RyWcixpgr3k/s1600/noimg.jpg" style="width:50px; height:50px;">';
							} 
							value+='<h5 class="spotTilte">'+list[i].spotTitle+'</h5>'
								+'<input type="hidden" class="mapX" value="'+list[i].spotMapx+'">'
								+'<input type="hidden" class="mapY" value="'+list[i].spotMapy+'">'
									+'<button type="button" class="addSpot btnButtonStyle-sc-1m85upr-1 iJuLkw">추가</button>'
							+'</div>'
							+'<span>'+list[i].spotAddress+'</span>'
							+'<span class="tel">'+list[i].spotTel+'</span>'
						+'</li>';

						// positions.push(
						// 	{
						// 		title:list[i].spotTitle,
						// 		latlng: new kakao.maps.LatLng(list[i].spotMapy, list[i].spotMapx)
						// 	}

						// )
						var marker = new kakao.maps.Marker({
							
							position: new kakao.maps.LatLng(list[i].spotMapy, list[i].spotMapx), 
							title : list[i].spotTitle 
						});
						markers.push(marker);
						
						
				}
				markers.forEach(marker=>{
					marker.setMap(maps[currentMapNum]);
				})
				console.log(markers);
				$("#placesList"+(currentMapNum+1)).append(value);
				console.log(currentPage);
				console.log(list);
				
				console.dir(document.getElementsByClassName("info"))
				// for (var i = 0; i < positions.length; i ++) {
				// 	var marker = new kakao.maps.Marker({
				// 		map: map, 
				// 		position: positions[i].latlng, 
				// 		title : positions[i].title, 
				// 	});
				// }
			},
			error:function(){
				console.log("실패");
			}
		})
		
	}
	
	
	
	function searchTour(){
		console.log("검색함수")
		console.dir(document.getElementById("searchVal"+(currentMapNum+1)))
		console.log(document.getElementById("searchVal"+(currentMapNum+1)).value)
		markers.forEach(marker=>{
			marker.setMap(null);
		})
		markers.length=0;
		$("#placesList"+(currentMapNum+1)).html("");
		currentPage=1;
		searchValue = $("#searchVal"+(currentMapNum+1)).val();
		$("#searchVal"+(currentMapNum+1)).val("");
		selectTourList(currentCode,currentPage,searchValue);

	}


$(function(){
	var today = new Date();
	$('input[name="dates"]').daterangepicker({
		nextText: '다음 달',
		prevText: '이전 달', 
		dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
		dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
		monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		minDate:today,

	}, function(start, end, label) {
		console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
		console.log(label);
		console.log(start);
		console.log(end);
		$("#schedule").append($("<div></div>").html(start.format('YYYY-MM-DD')))
		$("#schedule").append($("<div></div>").html(end.format('YYYY-MM-DD')))
		
		var dates = getDatesStartToLast(start.format('YYYY-MM-DD'),end.format('YYYY-MM-DD'))
		makeDate(dates);
	
	});



})
function getDatesStartToLast(startDate, lastDate) {
	
	var result = [];
	var curDate = new Date(startDate);
	while(curDate <= new Date(lastDate)) {
		result.push(curDate.toISOString().split("T")[0]);
		curDate.setDate(curDate.getDate() + 1);
	}
	
	return result;
}

function makeDate(dates){
	let result = "";
	let modals = [];
	let modalDiv = document.getElementById('modalDiv');
	for(let i=0; i<dates.length; i++){
		result += '<div class="plan'+(i+1)+'">'
				+'<div>'
				+ dates[i]
				+'</div>'
				+'<button type="button" class="addPlan">'
				+'<a href="javascript:void(0)"  data-bs-toggle="modal" data-bs-target="#plan'+(i+1)+'" class="media d-inline-flex align-items-center">일정추가</a>'
				+'</button>'
				+'<div id="resultMap'+(i+1)+'"></div>'
				+'</div>';

		let modal = document.createElement('div');
		modal.setAttribute('class','modal fade plan-modal');
		modal.setAttribute('id','plan'+(i+1));
		modal.setAttribute('tabindex','-1');
		modal.setAttribute('role','dialog');
		modal.setAttribute('aria-label','loginModalLabel');
		modal.setAttribute('aria-hidden','true');
		
	
		modals.push(modal);
		console.log(modal);
		
		modalHTML = '<div class="modal-dialog" role="document" style="margin-left:50px; ">'
          +'<div class="modal-plan" style="width: 1000px ; height: 850px;">'
            +'<div class="modal-header rounded" id="modalTop" style="height: 5%;">'
              +'<h3 class="modal-title text-uppercase font-weight-bold">여행지 검색</h3>'
             +'<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>'
            +'</div>'
            +'<div style="width: 100%; height: 70%; display:flex; ">'
	            +'<div id="map'+(i+1)+'" class="modal-body" style="width: 50%; height: 100%;">'
	            +'</div>'
	            +'<div style="width: 50%; height: 100%; background-color:white;">'
	            +	'<div class="option" style="height: 10%;">'
	                	
	                  +  '<div id="search'+(i+1)+'" style="display: none;">'
						+	'<input type="text" id="searchVal'+(i+1)+'">'
							+'<button type="button" onclick="searchTour();">검색</button>'
						+'</div>'
	                +'</div>'
                  	 +'<div id="placesDiv'+(i+1)+'" style="overflow: auto; height: 90%;">'
	                 	+'<ul id="placesList'+(i+1)+'" class="placesList">'
	                  	+'</ul>'
                  	+'</div>'
	            +'</div>'
				
           +'</div>'
			
			+'<div id="spotList'+(i+1)+'" style="width: 100%; height: 20%; ">'
				+'<h3 style="width: 10%;">여행지 목록</h3>'
				+'<div id="addedList'+(i+1)+'" style="width: 100%; height: 80%; overflow: auto;">'

				+'</div>'
				

			+'</div>'
			
			+'<div style="height: 5%;">'
				+'<button class="btnCom btnButtonStyle-sc-1m85upr-1 iJuLkw" type="button" data-bs-dismiss="modal" aria-label="Close">완료</button>'
			+'</div>'
  
            
          +'</div>'
        +'</div>';
		modal.innerHTML = modalHTML;
		modalDiv.appendChild(modal);
		console.log(modal)
		maps.length=i;
	}
	
	
	console.dir(modalDiv);
	content.innerHTML = result;

	const placesList = document.getElementsByClassName('placesList');
		const btnCom = document.getElementsByClassName('btnCom');
		console.log(placesList);
		for(let i=0;i<placesList.length;i++){
			placesList[i].addEventListener('click',e=>{
				const targetEl = e.target;
				const infoEl = targetEl.parentElement;
				
				if(!targetEl.classList.contains('addSpot'))return;
				
				const spotList = document.getElementById('addedList'+(currentMapNum+1));
				const spot = document.createElement('div');

				spot.className='addedSpot';
				spot.innerText=infoEl.querySelector('.spotTilte').innerText;
				spot.appendChild(infoEl.querySelector('.mapX'));
				spot.appendChild(infoEl.querySelector('.mapY'));
				spotList.appendChild(spot);
				spotList.scrollTop = spotList.scrollHeight;
			})
		}
		
		for(let i=0;i<btnCom.length;i++){
			btnCom[i].addEventListener('click',()=>{
			
				const addedSpot = document.getElementsByClassName('addedSpot');
				console.log(addedSpot);
				for(let i=0;i<addedSpot.length;i++){
					console.log(addedSpot[i].innerText);
				}
		

			})
		}
		const mapModal = document.getElementsByClassName('plan-modal');
		console.log(mapModal.length);
	  	for(let i=0;i<mapModal.length;i++){
			mapModal[i].addEventListener('shown.bs.modal',function(event){
			
			console.log(mapModal[i]);
			createMap(i);
        
      	})
	  }

}

function addPlan(){

}


