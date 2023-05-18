<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
		<head>
		    <meta charset="utf-8">
			    <title>여행지도</title>
		    <style>
				body{
				 -ms-overflow-style: none;
				 }
				 
				::-webkit-scrollbar {
				  display: none;
				}
				.map_wrap, .map_wrap * {margin:0;padding:0;font-size:12px;}
				.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
				.map_wrap {position:relative;width:100%;height:800px;}
				#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:400px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgb(255, 255, 255);z-index: 1;font-size:12px;border-radius: 10px;}
				.bg_white {background:#fff;}
				#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
				#menu_wrap .option{text-align: center;}
				#menu_wrap .option p {margin:10px 0;}  
				#menu_wrap .option button {margin-left:5px;}
				#menu_wrap #keyword {
		            background: rgb(248, 248, 248);
		            border: 1px solid rgb(233, 233, 233);
		            box-sizing: border-box;
		            border-radius: 30px;
		            height: 40px;
		            width: 70%;
		            padding: 13px 18px 13px 40px;
		            text-indent: 3px;
				}
				#placesList li {list-style: none;}
				#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
				#placesList .item span {display: block;margin-top:4px;}
				#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
				#placesList .item .info{padding:10px 0 10px 55px;}
				#placesList .info .gray {color:#8a8a8a;}
				#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
				#placesList .info .tel {color:#009900;}
				#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
				#placesList .item .marker_1 {background-position: 0 -10px;}
				#placesList .item .marker_2 {background-position: 0 -56px;}
				#placesList .item .marker_3 {background-position: 0 -102px}
				#placesList .item .marker_4 {background-position: 0 -148px;}
				#placesList .item .marker_5 {background-position: 0 -194px;}
				#placesList .item .marker_6 {background-position: 0 -240px;}
				#placesList .item .marker_7 {background-position: 0 -286px;}
				#placesList .item .marker_8 {background-position: 0 -332px;}
				#placesList .item .marker_9 {background-position: 0 -378px;}
				#placesList .item .marker_10 {background-position: 0 -423px;}
				#placesList .item .marker_11 {background-position: 0 -470px;}
				#placesList .item .marker_12 {background-position: 0 -516px;}
				#placesList .item .marker_13 {background-position: 0 -562px;}
				#placesList .item .marker_14 {background-position: 0 -608px;}
				#placesList .item .marker_15 {background-position: 0 -654px;}
				#pagination {margin:10px auto;text-align: center;}
				#pagination a {display:inline-block;margin-right:10px;}
				#pagination .on {font-weight: bold; cursor: default;color:#777;}
				
				/* 커스텀오버레이 */
			    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
			    .wrap * {padding: 0;margin: 0;}
			    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
			    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
			    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 15px;font-weight: bold;}
			    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
			    .info .close:hover {cursor: pointer;}
			    .info .body {position: relative;overflow: hidden;}
			    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
			    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
			    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
			    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
				/* .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')} */
			    .info .link {color: #5085BB;}
				.info .title:hover {cursor: pointer;}
				
				/* */

			</style>
		</head>
	<body>
	
	<jsp:include page="../common/header.jsp"/>
	
	<div class="map_wrap">
	    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
	
	    <div id="menu_wrap" class="bg_white">
	        <div class="option">
	        	<br>
	            <div>
	                <!-- <form onsubmit="searchTour();"> -->
	                    <input type="text" value="" id="keyword" size="15"> 
	                    <button type="button" class="btn-sm" onclick="searchTour();" style="background-color: rgb(112, 217, 223); color: white; border-radius: 30px; height: 40px">검색</button>
	                <!-- </form> -->
	            </div>
	            <br>
	        </div>
	        <hr>
	        <br>
	        <ul id="placesList"></ul>
	        <div id="pagination"></div>
	    </div>
	</div>
	
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1986b6865e95c60fac90b9fdaef0579e&libraries=services"></script>
	<script>
	
	
	let currentPage = 1;
	
	// 클릭시 위도 경도 변수
	var mapx = null;
	var mapy = null;

	// 오버레이
	var overlay = null;
	
	
	// 마커를 담을 배열입니다
	var markers = [];
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({zIndex:1});

	/*
	// 장소 검색 객체를 생성합니다
	var ps = new kakao.maps.services.Places();  
	
	// 키워드로 장소를 검색합니다
	searchPlaces();
	
	// 키워드 검색을 요청하는 함수입니다
	function searchPlaces() {
	
	    var keyword = document.getElementById('keyword').value;
	
	    if (!keyword.replace(/^\s+|\s+$/g, '')) {
	        alert('키워드를 입력해주세요!');
	        return false;
	    }
	
	    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
	    ps.keywordSearch( keyword, placesSearchCB); 
	}
	
	// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
	function placesSearchCB(data, status, pagination) {
	    if (status === kakao.maps.services.Status.OK) {
	
	        // 정상적으로 검색이 완료됐으면
	        // 검색 목록과 마커를 표출합니다
	        displayPlaces(data);
	
	        // 페이지 번호를 표출합니다
	        displayPagination(pagination);
	
	    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
	
	        alert('검색 결과가 존재하지 않습니다.');
	        return;
	
	    } else if (status === kakao.maps.services.Status.ERROR) {
	
	        alert('검색 결과 중 오류가 발생했습니다.');
	        return;
	
	    }
	}
	
	
	
	// 검색결과 항목을 Element로 반환하는 함수입니다
	function getListItem(index, places) {
	
	    var el = document.createElement('li'),
	    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
	                '<div class="info">' +
	                '   <h5>' + places.place_name + '</h5>';
	
	    if (places.road_address_name) {
	        itemStr += '    <span>' + places.road_address_name + '</span>' +
	                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
	    } else {
	        itemStr += '    <span>' +  places.address_name  + '</span>'; 
	    }
	                 
	      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
	                '</div>';           
	
	    el.innerHTML = itemStr;
	    el.className = 'item';
	
	    return el;
	}
	
	// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
	function addMarker(position, idx, title) {
	    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
	        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
	        imgOptions =  {
	            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
	            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
	            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
	        },
	        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
	            marker = new kakao.maps.Marker({
	            position: position, // 마커의 위치
	            image: markerImage 
	        });
	
	    marker.setMap(map); // 지도 위에 마커를 표출합니다
	    markers.push(marker);  // 배열에 생성된 마커를 추가합니다
	
	    return marker;
	}
	
	// 지도 위에 표시되고 있는 마커를 모두 제거합니다
	function removeMarker() {
	    for ( var i = 0; i < markers.length; i++ ) {
	        markers[i].setMap(null);
	    }   
	    markers = [];
	}
	
	// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
	function displayPagination(pagination) {
	    var paginationEl = document.getElementById('pagination'),
	        fragment = document.createDocumentFragment(),
	        i; 
	
	    // 기존에 추가된 페이지번호를 삭제합니다
	    while (paginationEl.hasChildNodes()) {
	        paginationEl.removeChild (paginationEl.lastChild);
	    }
	
	    for (i=1; i<=pagination.last; i++) {
	        var el = document.createElement('a');
	        el.href = "#";
	        el.innerHTML = i;
	
	        if (i===pagination.current) {
	            el.className = 'on';
	        } else {
	            el.onclick = (function(i) {
	                return function() {
	                    pagination.gotoPage(i);
	                }
	            })(i);
	        }
	
	        fragment.appendChild(el);
	    }
	    paginationEl.appendChild(fragment);
	}
	
	// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
	// 인포윈도우에 장소명을 표시합니다
	function displayInfowindow(marker, title) {
	    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';
	
	    infowindow.setContent(content);
	    infowindow.open(map, marker);
	}
	
	 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
	function removeAllChildNods(el) {   
	    while (el.hasChildNodes()) {
	        el.removeChild (el.lastChild);
	    }
	}
	
	// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
	var mapTypeControl = new kakao.maps.MapTypeControl();

	// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
	// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
	map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

	// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
	var zoomControl = new kakao.maps.ZoomControl();
	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
	
	// 커스텀 오버레이에 표시할 컨텐츠 입니다
	// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
	// 별도의 이벤트 메소드를 제공하지 않습니다 
	var content = '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title">' + 
	            '            카카오 스페이스닷원' + 
	            '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src="https://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">제주특별자치도 제주시 첨단로 242</div>' + 
	            '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' + 
	            '                <div><a href="https://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';

	// 마커 위에 커스텀오버레이를 표시합니다
	// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
	var overlay = new kakao.maps.CustomOverlay({
	    content: content,
	    map: map,
	    position: marker.getPosition()       
	});

	// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	kakao.maps.event.addListener(marker, 'click', function() {
	    overlay.setMap(map);
	});

	// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
	function closeOverlay() {
	    overlay.setMap(null);     
	}
	*/
	
	function searchTour(){
		console.log("sssstt")

		markers.forEach(marker=>{
			marker.setMap(null);
		})

		markers.length=0;

		var keyword = document.getElementById('keyword').value;
		
		console.log(keyword);

		// 검색요청
		selectSearchList(currentPage, keyword);

	}

	function selectSearchList(currentPage, keyword){

		let value = "";

		console.log(keyword);
		console.log(currentPage);

		$.ajax({
			url:"mapSearch.sp",
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			data:{
					currentPage:currentPage,
					keyword:keyword
				 },
			success:function(places){
				displayPlaces(places);
				let titles = document.getElementsByClassName('title');
				for(let i=0;i<titles.length;i++){
					titles[i].addEventListener('click',function(){
						mapDetail(places[i].spotContentId,places[i].spotContentType);
					})
				}
			},
			error:function(){
				console.log("실패");
			}
		})

	}

	// 검색 결과 목록과 마커를 표출하는 함수입니다
	function displayPlaces(places) {
	
	var listEl = document.getElementById('placesList'), 
	menuEl = document.getElementById('menu_wrap'),
	fragment = document.createDocumentFragment(), 
	bounds = new kakao.maps.LatLngBounds(), 
	listStr = '';
	
	// 검색 결과 목록에 추가된 항목들을 제거합니다
	removeAllChildNods(listEl);

	// 지도에 표시되고 있는 마커를 제거합니다
	removeMarker();
	
	for ( var i=0; i<places.length; i++ ) {

			console.log(places[0]);
			// console.log(places);

			var contentType = null;

			switch (places[i].spotContentType) {
				case "12":
					contentType = "관광지";
					break;
				case "14":
					contentType = "문화시설";
					break;
				case "15":
					contentType = "행사/공연/축제";
					break;
				case "28":
					contentType = "레포츠";
					break;
				case "32":
					contentType = "숙박";
					break;
				case "38":
					contentType = "쇼핑";
					break;
				case "39":
					contentType = "식당";
					break;
				default:
					break;
			}

			// 커스텀 오버레이에 표시할 컨텐츠 입니다
			// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
			// 별도의 이벤트 메소드를 제공하지 않습니다 
			var content = '<div class="wrap">' + 
						'    <div class="info">' + 
						'        <div class="title">' + 
						'            '+places[i].spotTitle + 
						'            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
						'        </div>' + 
						'        <div class="body">' + 
						'            <div class="img">' +
						'                <img src="'+places[i].spotImgPath+'" width="73" height="70">' +
						'           </div>' + 
						'            <div class="desc">' + 
						'                <div style="font-size:10pt" class="ellipsis">'+places[i].spotAddress+'</div>' +
						'<b style="font-size:9pt; color:dodgerblue;">○ '+contentType+'</b><br>'+
						 '<div class="post_area" style="float: right; margin-right: 10px;">'
								+ '<span class="num_like">'
								+ '<img src="resources/img/icons/after-like.png" style="width: 18px; height: 18px;" alt="">'
								+ '<span class="num" id="conRead" style="font-size: 10pt">&nbsp&nbsp'+places[i].spotLike+'&nbsp&nbsp&nbsp</span>'
								+ '</span>'
								+ '<span class="num_view">'
								+ '<img src="resources/img/icons/view.png" style="width: 18px; height: 18px;" alt="">'
								+ '<span class="num" id="conRead" style="font-size: 10pt">&nbsp&nbsp'+places[i].spotCount+'</span>'
								+ '</span>'
								+ '</div>'
						'            </div>' + 
						'        </div>' + 
						'    </div>' +    
						'</div>';

			// 마커를 생성하고 지도에 표시합니다
			var placePosition = new kakao.maps.LatLng(places[i].spotMapy, places[i].spotMapx),
				marker = addMarker(placePosition, i), 
				itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다
						
			// 마커 위에 커스텀오버레이를 표시합니다
			// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
			    overlay = new kakao.maps.CustomOverlay({
				content: content,
				map: map,
				position: marker.getPosition()  
			});

			// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
			// LatLngBounds 객체에 좌표를 추가합니다
			bounds.extend(placePosition);

			// 마커와 검색결과 항목에 mouseover 했을때
			// 해당 장소에 인포윈도우에 장소명을 표시합니다
			// mouseout 했을 때는 인포윈도우를 닫습니다
			(function(marker, title) {
				kakao.maps.event.addListener(marker, 'mouseover', function() {
					displayInfowindow(marker, title);
				});

				kakao.maps.event.addListener(marker, 'mouseout', function() {
					infowindow.close();
				});

				itemEl.onmouseover =  function () {
					displayInfowindow(marker, title);
				};

				itemEl.onmouseout =  function () {
					infowindow.close();
				};
				

				

				

				
			})(marker, places[i].spotTitle);

			// document.getElementById('title').addListener(document.getElementById('title'),'click', function() {
			// 	location.href="detailAPI.sp?contentId="+places[i].spotContentId+"&contentType="+places[i].spotContentType;
			// });

			// kakao.maps.event.addListener(overlay,'click',function(){
			// 	mapDetail(places[i].spotContentId,places[i].spotContentType);
			// })

			kakao.maps.event.addListener(marker, 'click', function() {
				overlay.setMap(map);
			});
				
			itemEl.onclick =  function () {
				overlay.setMap(null);
			};

			fragment.appendChild(itemEl);
		}

		// 검색결과 항목들을 검색결과 목록 Element에 추가합니다
		listEl.appendChild(fragment);
		menuEl.scrollTop = 0;

		// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		map.setBounds(bounds);
	}

	 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {   
				while (el.hasChildNodes()) {
					el.removeChild (el.lastChild);
				}
			}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
			for ( var i = 0; i < markers.length; i++ ) {
					markers[i].setMap(null);
				}   
				markers = [];
			}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, idx, title) {
			var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
				imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
				imgOptions =  {
					spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
					spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
					offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
				},
				markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
					marker = new kakao.maps.Marker({
					position: position, // 마커의 위치
					image: markerImage 
				});
		
			marker.setMap(map); // 지도 위에 마커를 표출합니다
			markers.push(marker);  // 배열에 생성된 마커를 추가합니다
		
			return marker;
		}

		// 검색결과 항목을 Element로 반환하는 함수입니다
		function getListItem(index, places) {
	
			var el = document.createElement('li'),
			itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
						'<div class="info">' +
						'   <h5>' + places.spotTitle + '</h5>';

			itemStr += '    <span>' +  places.spotAddress  + '</span>'; 
			
			if (places.spotTel) {
				itemStr += '  <span class="tel">' + places.spotTel  + '</span>' +
							'</div>';
			}

			el.innerHTML = itemStr;
			el.className = 'item';

			return el;
		}

		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
			var content = '<div style="padding:5px;z-index:1; border-radius:30pt">' + title + '</div>';
		
			infowindow.setContent(content);
			infowindow.open(map, marker);
		}
		
		// 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {   
			while (el.hasChildNodes()) {
				el.removeChild (el.lastChild);
			}
		}

		// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
		function closeOverlay() {
			overlay.setMap(null);
		}

		function mapDetail(contentId,contentType) {
			location.href="detailAPI.sp?contentId="+contentId+"&contentType="+contentType;
		}


	
	
	
	
	
	</script>
	
	<script src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery-3.4.1.min.js"></script>
	
	</body>
	</html>