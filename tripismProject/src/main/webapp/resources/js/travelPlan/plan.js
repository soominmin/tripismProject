

	function createMap(){
		let searchValue =null;
		let currentCode = 0;
		let flag = false;
		let currentPage = 1;
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
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = { 
				center: new kakao.maps.LatLng(35.95, 128.25), // 지도의 중심좌표
				level: 13 // 지도의 확대 레벨
			};

		var map = new kakao.maps.Map(mapContainer, mapOption),
			customOverlay = new kakao.maps.CustomOverlay({}),
			infowindow = new kakao.maps.InfoWindow({removable: true});

		// 지도에 영역데이터를 폴리곤으로 표시합니다 
		for (var i = 0, len = areas.length; i < len; i++) {
			
			displayArea(areas[i],tourInfo[i].color,tourInfo[i].code);
			
		}

		// 다각형을 생상하고 이벤트를 등록하는 함수입니다
		function displayArea(area,color/*,code*/) {
			
			// 다각형을 생성합니다 
			var polygon = new kakao.maps.Polygon({
				map: map, // 다각형을 표시할 지도 객체
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
				// var content = '<div class="info">' + 
				// 			'   <div class="title">' + area.name + '</div>' +
				// 			'   <div class="size">총 면적 : 약 ' + Math.floor(polygon.getArea()) + ' m<sup>2</sup></div>' +
				// 			'</div>';

				// infowindow.setContent(content); 
				// infowindow.setPosition(mouseEvent.latLng); 
				// infowindow.setMap(map);
				// $("#search").css("display","block")
				// currentPage = 1;
				// searchValue="";
				// flag = true;
				
				// console.log(code);

				// selectTourList(code,currentPage,searchValue);
				// console.log(currentPage);
				
				// currentCode = code;
				
				
				
			});
		}

	
	// function selectTourList(code,currentPage,searchValue){
	// 	if(currentCode!=code){
	// 		$("#content").html("");
	// 	}
	// 	let value = "";
	// 	$.ajax({
	// 		url:"tourList.do",
	// 		data:{areaCode:code,
	// 			currentPage:currentPage,
	// 			searchValue:searchValue},
	// 		success:function(list){
	// 			for(let i=0; i<list.length; i++){
	// 				value += "<div class='list'>"
	// 						+"<div> 여행지:" + list[i].spotTitle + "            </div>"
	// 						+"<div> 주소:" + list[i].spotAddress + "</div>"
							
							

	// 				if(list[i].spotImgPath!=null){
	// 					value+="<img src='"+list[i].spotImgPath+"' style='width:250px; height:250px;'>"
	// 				}
	// 				+"</div>"
	// 			}
	// 			value+="<div> 주소:----------------------------------------------------</div>";
				
	// 			$("#content").append(value);
	// 			console.log(currentPage);
	// 			console.log(list);
	// 		},
	// 		error:function(){
	// 			console.log("실패");
	// 		}
	// 	})
		
	// }
	

	// let isUpdateList = true;
	
	// window.onscroll = function(e) {
    //   console.log(window.innerHeight , window.scrollY,document.body.offsetHeight)
    //   if((window.innerHeight + window.scrollY) >= document.body.offsetHeight) { 
    //     if(isUpdateList){
    //         isUpdateList = false;
            
	// 		selectTourList(currentCode,++currentPage,searchValue);
    //         isUpdateList = true;
    //     }
        
    //   }
    // }
	// function searchTour(){
		
	// 	$("#content").html("");
	// 	currentPage=1;
	// 	searchValue = $("#searchVal").val();
	// 	$("#searchVal").val("");
	// 	selectTourList(currentCode,currentPage,searchValue);

	// 	$.ajax({
	// 		url:"tourList.do",
	// 		data:{areaCode:currentCode,
	// 			currentPage:currentPage++,
	// 			searchValue:$("#searchVal").val()},
	// 		success:function(){
	// 			console.log($("#searchVal").val())
	// 		},
	// 		error:function(){
	// 			console.log("실패");
	// 		}


	// 	})
	// }
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
	result = "";
	for(let i=0; i<dates.length; i++){
		result += '<div>'
				+'<div>'
				+ dates[i]
				+'</div>'
				+'<button type="button" class="addPlan" id="plan'+i+'">'
				+'<a href="javascript:void(0)" onclick="createMap();" data-bs-toggle="modal" data-bs-target="#plan" class="media d-inline-flex align-items-center">일정추가</a>'
				+'</button>'
				+'</div>';

	}
	$("#content").html(result);

}

function addPlan(){

}