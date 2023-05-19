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
    <input type="text" name="dates" style="margin-left: 350px; width: 500px; height: 50px;">
	
	
	<div id="content">
		
	</div>
	<div id="btnSub" style="display: none;">
	<button onclick="enrollSub()" class="btnButtonStyle-sc-1m85upr-1 iJuLkw" type="button">등록하기</button>
	</div>
	<div id="modalDiv"></div>
    
    <script src="resources/js/travelPlan/plan.js"></script>

    <script>
    

	$(function(){

		$("input[name=dates]").trigger('click');

	})
	  
    </script>
	<script>
		function enrollSub(){
			// console.log($(document).find('id=^resultList'));
			let content = document.getElementById('content');
			console.log(content.children);
			let planList = content.children;
			let date = [];
			for(let i =0; i<planList.length; i++){
				p
				console.log(planList[i].getElementsByClassName('addedSpot'))
			}

		}

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
		
		<jsp:include page="../common/chatting.jsp"/>
		
		
    
    

</body>
</html>
