<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>여행지 둘러보기</title>
    
    <!-- Plugins css Style -->
    <link href='${pageContext.request.contextPath}/resources/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/resources/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
    <link href="${pageContext.request.contextPath}/resources/plugins/animate/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/plugins/menuzord/css/menuzord.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/plugins/menuzord/css/menuzord-animations.css" rel="stylesheet">
    <link href='${pageContext.request.contextPath}/resources/plugins/fancybox/jquery.fancybox.min.css' rel='stylesheet'>


    <!-- CUSTOM CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/star.css" id="option_style" rel="stylesheet">

    <!-- FAVICON -->
    <link rel="shortcut icon" type="image/png" href="assets/img/favicon.png"/>

    <style>
     #arealist li{
      float: left;
      list-style: none;
      padding: 10px;
      border: 0.5px;
      color: rgb(112, 217, 223);
     }

     #arealist li button span{
      color: gray;
      font-size: 10pt;
     }

	 /*div 스타일*/
	 .card.card-hover {
		box-shadow: rgba(25, 25, 25, 0.2) 0 6px 10px;

	 }

	.test_obj input[type="radio"] {
	display: none;
	}

	.test_obj input[type="radio"] + span {
		display: inline-block;
		padding: 15px 10px;
		border: 1px solid #dfdfdf;
		background-color: #ffffff;
		text-align: center;
		cursor: pointer;
	}

	.test_obj input[type="radio"]:checked + span {
		background-color: RGB(112, 217, 223);
		color: #ffffff;
	}

	.test_btn {
    display: inline-block;
    padding: 15px 10px;
    background-color: rgba(112, 217, 223, 0.8);
    color: #ffffff;
    border: 1px solid #dfdfdf;
  	}

	.test_obj {
		padding-right: 20px;
		padding-bottom: 10px;
	}
     

    </style>
</head>

<body id="body" class="up-scroll">
	<jsp:include page="../common/header.jsp"/>
	
	
	<!-- ====================================
	———	PAGE TITLE
	===================================== -->
	<section class="page-title">

	  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(${pageContext.request.contextPath}/resources/img/pages/page-title-bg5.jpg);">

	    <div class="container">
	      <div class="row align-items-center justify-content-center" style="height: 200px;">
	        <div class="col-lg-6">
	          <div class="page-title-content">
	            <div class="title-border">
	              <h2 class="text-uppercase text-white font-weight-bold">여행지 둘러보기</h2>
	            </div>
	            <p class="text-white mb-0"></p>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>


	<!-- ====================================
	——— TRAVEL TIPS SECTION
	===================================== -->
	
	
	<section class="py-9 py-md-10">
	  <div class="container" id="spotDiv">
	    <div class="row" id="spotList">
			
		<form action="searchSpotList.sp">
			<input type="hidden" name="currentPage" value="1">

	      	<div>
			
				<h3>카테고리</h3>
			
				<label class="test_obj typeNo">
					<input type="radio" name="spotContentType" value="0" class="label_que">
					<span>#전체</span>
				</label>

				<label class="test_obj typeNo">
					<input type="radio" name="spotContentType" value="12" class="label_que">
					<span>#관광지</span>
				</label>

				<label class="test_obj typeNo">
					<input type="radio" name="spotContentType" value="14" class="label_que">
					<span>#문화시설</span>
				</label>

				<label class="test_obj typeNo">
					<input type="radio" name="spotContentType" value="15" class="label_que">
					<span>#행사/공연/축제</span>
				</label>

				<label class="test_obj typeNo">
					<input type="radio" name="spotContentType" value="28" class="label_que">
					<span>#레포츠</span>
				</label>

				<label class="test_obj typeNo">
					<input type="radio" name="spotContentType" value="32" class="label_que">
					<span>#숙박</span>
				</label>

				<label class="test_obj typeNo">
					<input type="radio" name="spotContentType" value="38" class="label_que">
					<span>#쇼핑</span>
				</label>

				<label class="test_obj typeNo">
					<input type="radio" name="spotContentType" value="39" class="label_que">
					<span>#식당</span>
				</label>

				<br><br><br>

				<h3>지역</h3>

				<label class="test_obj areaNo">
					<input type="radio" name="areaCategoryNo" value="0" class="label_que">
					<span>#전체</span>
				</label>

				<label class="test_obj areaNo">
					<input type="radio" name="areaCategoryNo" value="1" class="label_que">
					<span>#서울</span>
				</label>

				<label class="test_obj areaNo">
					<input type="radio" name="areaCategoryNo" value="2" class="label_que">
					<span>#인천</span>
				</label>

				<label class="test_obj areaNo">
					<input type="radio" name="areaCategoryNo" value="3" class="label_que">
					<span>#대전</span>
				</label>

				<label class="test_obj areaNo">
					<input type="radio" name="areaCategoryNo" value="4" class="label_que">
					<span>#대구</span>
				</label>

				<label class="test_obj areaNo">
					<input type="radio" name="areaCategoryNo" value="5" class="label_que">
					<span>#광주</span>
				</label>

				<label class="test_obj areaNo">
					<input type="radio" name="areaCategoryNo" value="6" class="label_que">
					<span>#부산</span>
				</label>

				<label class="test_obj areaNo">
					<input type="radio" name="areaCategoryNo" value="7" class="label_que">
					<span>#울산</span>
				</label>

				<label class="test_obj areaNo">
					<input type="radio" name="areaCategoryNo" value="8" class="label_que">
					<span>#세종</span>
				</label>
				<br>
				<label class="test_obj areaNo">
					<input type="radio" name="areaCategoryNo" value="31" class="label_que">
					<span>#경기</span>
				</label>

				<label class="test_obj areaNo">
					<input type="radio" name="areaCategoryNo" value="32" class="label_que">
					<span>#강원</span>
				</label>

				<label class="test_obj areaNo">
					<input type="radio" name="areaCategoryNo" value="33" class="label_que">
					<span>#충북</span>
				</label>

				<label class="test_obj areaNo">
					<input type="radio" name="areaCategoryNo" value="34" class="label_que">
					<span>#충남</span>
				</label>

				<label class="test_obj areaNo">
					<input type="radio" name="areaCategoryNo" value="35" class="label_que">
					<span>#경북</span>
				</label>

				<label class="test_obj areaNo">
					<input type="radio" name="areaCategoryNo" value="36" class="label_que">
					<span>#경남</span>
				</label>

				<label class="test_obj areaNo">
					<input type="radio" name="areaCategoryNo" value="37" class="label_que">
					<span>#전북</span>
				</label>

				<label class="test_obj areaNo">
					<input type="radio" name="areaCategoryNo" value="38" class="label_que">
					<span>#전남</span>
				</label>

				<label class="test_obj areaNo">
					<input type="radio" name="areaCategoryNo" value="39" class="label_que">
					<span>#제주</span>
				</label>

				<br><br><br>

			<button type="submit" class="test_btn" style="border-radius: 30px; float: right; width: 100%;">검색</button>
			
			<div>
			</form>
	
	
	
			</div>
	
			<br><br><br><br>
			<hr>
			<br>
			
			<select name="" id="" style="border: none; float: right;">
			<option value="">이름순</option>
			<option value="">좋아요순</option>
			<option value="">조회순</option>
			</select>

			<br><br><br><br>


			<div>
			
			</div>
	
			</div>

		  <c:forEach var="i" items="${sl }">
			<div class="col-md-6 col-lg-4 mb-5">
			<form class="postForm" action="detailAPI.sp" method="post">
			<input type="hidden" name="contentId" value="${i.spotContentId}">
			<input type="hidden" name="contentType" value="${i.spotContentType}">
			</form>
			<div class="card card-hover">
			<a href="javascript:void(0)" class="position-relative">
			<img class="card-img-top" data-src="${i.spotImgPath}" src="${i.spotImgPath}" alt="Card image cap"></img>;
			<div onclick="selectSpotAPI('${i.spotContentId}', '${i.spotContentType}');" class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">
			</div>
			</a>
			<div class="card-body px-4" style="background-color: rgba(112, 217, 223, 0.01)">
			<p style="color: gray; font-size: 9;">
			<img src="resources/img/icons/map.png" style="width: 16px; height: 16px;" alt="">
			${i.areaTitle} ${i.sigunguTitle}
			</p>
			<h5>
			<a href="javascript:selectSpotAPI('+list[i].spotContentId+', '+list[i].spotContentType+');" class="card-title text-uppercase">${i.spotTitle}</a>
			<h5>
			<div class="post_area" style="float: right;">
			<span class="num_like">
			<img src="resources/img/icons/after-like.png" style="width: 18px; height: 18px;" alt="">
			<span class="num" id="conRead" style="font-size: 10pt">${i.spotLike} &nbsp</span>
			</span>
			<span class="num_view">
			<img src="resources/img/icons/view.png" style="width: 18px; height: 18px;" alt="">
			<span class="num" id="conRead" style="font-size: 10pt">${i.spotCount}</span>
			</span>
			</div>
			</div>
			</div>
			</div>
		</c:forEach>


	
	      
		  </div>
	

	      
	      
	
	
	      
	
	
	
	    </div>
	  </div>
	
	
	</section>




	<script>

		$(function(){
			$('.typeNo input[value=${slo.spotContentType}]').attr("checked", true);
			$('.areaNo input[value=${slo.areaCategoryNo}]').attr("checked", true);
		})

		let currentPage = 1;

		let isUpdateList = true;
		window.onscroll = function(e) {
		//   console.log(document.body.clientHeight ,  window.innerHeight, window.scrollY , document.body.scrollHeight)
			if((window.innerHeight + window.scrollY) >= (document.body.offsetHeight)) { 
				if(isUpdateList){

					
					isUpdateList = false;
					
					searchSpotList(++currentPage, '${slo.spotContentType}', '${slo.areaCategoryNo}');
					
					isUpdateList = true;
				}

			}
		}

		function searchSpotList(currentPage, spotContentType, areaCategoryNo) {
			let value = "";
			$.ajax({
				url:"searchSpotListTwo.sp",
				data:{
						currentPage:currentPage,
						spotContentType:spotContentType,
						areaCategoryNo:areaCategoryNo
					},
				success:function(list){
					for(let i=0; i<list.length; i++){
						value += '<div class="col-md-6 col-lg-4 mb-5">'
								+ '<form class="postForm" action="detailAPI.sp" method="post">'
								+ '<input type="hidden" name="contentId" value="'+list[i].spotContentId+'">'
								+ '<input type="hidden" name="contentType" value="'+list[i].spotContentType+'">'
								+ '</form>'
								+ '<div class="card card-hover">'
								+ '<a href="javascript:void(0)" class="position-relative">'
								if(list[i].spotImgPath == null){
									//value += '<img class="card-img-top lazyestload" data-src="resources/img/logo.png" src="" alt="Card image cap"></img>';
									
								}else{
									value += '<img class="card-img-top" data-src="'+list[i].spotImgPath+'" src="'+list[i].spotImgPath+'" alt="Card image cap"></img>';
								}
								value += '<div onclick="selectSpotAPI('+list[i].spotContentId+', '+list[i].spotContentType+');" class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">'
								+ '</div>'
								+ '</a>'
								+ '<div class="card-body px-4" style="background-color: rgba(112, 217, 223, 0.01)">'
								+ '<p style="color: gray; font-size: 9;">'
								+ '<img src="resources/img/icons/map.png" style="width: 16px; height: 16px;" alt="">'
								+ list[i].areaTitle + " " + list[i].sigunguTitle
								+ '</p>'
								+ '<h5>'
								+ '<a href="javascript:selectSpotAPI('+list[i].spotContentId+', '+list[i].spotContentType+');" class="card-title text-uppercase">'+list[i].spotTitle+'</a>'
								+ '<h5>'
								+ '<div class="post_area" style="float: right;">'
								+ '<span class="num_like">'
								+ '<img src="resources/img/icons/after-like.png" style="width: 18px; height: 18px;" alt="">'
								+ '<span class="num" id="conRead" style="font-size: 10pt">&nbsp&nbsp'+list[i].spotLike+'&nbsp&nbsp&nbsp</span>'
								+ '</span>'
								+ '<span class="num_view">'
								+ '<img src="resources/img/icons/view.png" style="width: 18px; height: 18px;" alt="">'
								+ '<span class="num" id="conRead" style="font-size: 10pt">&nbsp&nbsp'+list[i].spotCount+'</span>'
								+ '</span>'
								+ '</div>'
								+ '</div>'
								+ '</div>'
								+ '</div>'

							
					}
					$("#spotList").append(value);
					console.log(currentPage);
					console.log(list);
				},
				error:function(){
					console.log("실패");
				}
			})
		}


	</script>


	
	
	<jsp:include page="../common/footer.jsp"/>
	
	<!-- Javascript -->
    <script src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/menuzord/js/menuzord.js"></script>
    <script src='${pageContext.request.contextPath}/resources/plugins/fancybox/jquery.fancybox.min.js'></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/lazyestload/lazyestload.js"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/smoothscroll/SmoothScroll.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/star.js"></script>
</body>
</html>