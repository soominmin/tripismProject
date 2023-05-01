<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>


		<!-- jQuery 라이브러리 -->
		<!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		
		<!-- jQuery UI 라이브러리 -->
		<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/smoothness/jquery-ui.css">


		<style >
			.WriteSelectionModal__StyledModalWrap-sc-1cknulk-0.kxfRvG{
			  display: none;
			}
			 html {
				line-height: 1.15;
				text-size-adjust: 100%;
			}
			section {
				margin: 0;
				padding: 0;
				border: 0;
				font-style: normal;
				display: block;
			}
			.gBZHir {
				padding: 18px 0 220px;
				width: 1200px;
				margin: 0 auto;
				position: relative;
				box-sizing: border-box;
			}
			main {
				display: block;
			}
			div {
				margin: 0;
				padding: 0;
				border: 0;
				font-style: normal;
			}
			div > p {
				margin-top: 0;
				margin-bottom: 0;
			}
			body {
				font-weight: 400;
				font-size: 14px;
			}
			button {
				line-height: 1.15;
				margin: 0;
				overflow: visible;
				text-transform: none;
				cursor: pointer;
				outline: none;
				vertical-align: top;
				background: unset;
				border: 0;
				padding: 0;
				
			}
			div {
				margin: 0;
				padding: 0;
				border: 0;
				font-style: normal;
			}
			p {
				margin: 0;
				padding: 0;
				border: 0;
				margin-inline-start: 0;
				margin-inline-end: 0;
			}
			
			/*상단바 이미지*/
			.kSLJBy {
				padding: 0;
				width: unset;
				margin-top: 0;
			}
			.kSLJBy {
				position: relative;
				margin-top: 0;
				background-image: url("${pageContext.request.contextPath}/resources/img/partner/img1.jpg");
				background-size: cover;
				background-position: center center;
			}
			.AxzSO {
				position: relative;
				width: 1200px;
				margin: 0 auto;
				min-height: 341px;
				display: flex;
				flex-direction: column;
				-webkit-box-align: center;
				align-items: center;
				-webkit-box-pack: center;
				justify-content: center;
				color: rgb(255, 255, 255);
				justify-content: space-evenly;
			}
			/*나와맞는동행찾기*/
			.AxzSO > p:first-child {
				font-weight: 400;
				font-size: 22px;
				display: inline-block;
			}
			.krJNwE {
				user-select: none;
				-webkit-user-drag: none;
			}
			/*여행친구찾기*/
			.AxzSO > p:nth-child(2) {
				font-weight: 500;
				font-size: 70px;
				display: inline-block;
			}
			
			/*장소설정*/
			/*전체영역*/
			.fIxQSV {
				position: relative;
				width: 1200px;
				margin: 0 auto;
			}
			.eMbJju {
				position: relative;
				padding: 16px;
				border-radius: 6px;
				border: 1px solid rgb(233, 233, 233);
				background-color: rgb(255, 255, 255);
			}
			.gZYroh {
				position: relative;
				border: 1px solid rgb(233, 233, 233);
				border-radius: 3px;
				display: flex;
				max-height: 424px;
			}
			/*장소좌측나라*/
			.cksfQf {
				position: relative;
				border-width: 0 1px 0 0;
				border-style: solid;
				border-color: rgb(233, 233, 233);
				width: fit-content;
			}
			.StvrC {
				position: relative;
			}
			/*버튼클릭시*/
			.jWOSQK {
				position: relative;
				display: flex;
				-webkit-box-align: center;
				align-items: center;
				-webkit-box-pack: center;
				justify-content: center;
				width: auto;
				height: fit-content;
				background-color: rgb(112, 217, 223);
				border: 0 solid rgb(255, 255, 255);
				padding: 19px 0 19px 25px;
				color: rgb(255, 255, 255);
				font-weight: 500;
				font-size: 15px;
			}
			/*버튼미클릭*/
			.kRktcM {
				position: relative;
				display: flex;
				-webkit-box-align: center;
				align-items: center;
				-webkit-box-pack: center;
				justify-content: center;
				width: auto;
				height: fit-content;
				background-color: rgb(255, 255, 255);
				border: 0 solid rgb(37, 37, 37);
				padding: 19px 0 19px 25px;
				color: rgb(37, 37, 37);
				font-weight: 500;
				font-size: 15px;
			}
			/*세부지역설정*/ 
			.gZpguq {
				position: relative;
				width: 100%;
				overflow-y: scroll;
			}
			.fTvelu {
				position: relative;
				display: flex;
			}
			.StvrC {
				position: relative;
			}
			.fTvelu > :nth-child(2) {
				position: relative;
				width: 795px;
			}
			/*지역클릭시*/
			.cZpRAh {
				position: relative;
				display: flex;
				-webkit-box-align: center;
				align-items: center;
				-webkit-box-pack: center;
				height: fit-content;
				border: 0px solid rgb(112, 217, 223);
				padding: 19px 0px 19px 25px;
				color: rgb(112, 217, 223);
				font-weight: 700;
				font-size: 15px;
			}
			
			/*세부지역영역설정*/
			.fTvelu > :nth-child(2) > div {
				position: relative;
				display: flex;
				width: max-content;
			}
			.StvrC {
				position: relative;
			}
			/*세부선택*/
			.jNSMIB {
				position: relative;
				display: flex;
				-webkit-box-align: center;
				align-items: center;
				-webkit-box-pack: center;
				justify-content: center;
				width: auto;
				height: fit-content;
				border: 0 solid rgb(154, 154, 154);
				padding: 19px;
				color: rgb(154, 154, 154);
				font-weight: 400;
				font-size: 15px;
			}
			/*세부나라미클릭시*/
			.bKQVyS {
				position: relative;
				display: flex;
				-webkit-box-align: center;
				align-items: center;
				-webkit-box-pack: center;
				border: 0 solid rgb(37, 37, 37);
				padding: 19px;
				height: 16px;
				color: rgb(37, 37, 37);
				font-size: 15px;
				height: auto;
			}
			/*세부지역선택시*/
			.bnbVGW {
				position: relative;
				display: flex;
				-webkit-box-align: center;
				align-items: center;
				-webkit-box-pack: center;
				border: 0px solid rgb(112, 217, 223);
				padding: 19px;
				color: rgb(112, 217, 223);
				font-weight: 800;
				font-size: 15px;
			}
			/*모집인원*/
			.eMbJju > :nth-child(n+2) {
				border: unset;
				padding: 16px 0 0;
			}
			.QhPLj {
				display: flex;
				-webkit-box-align: center;
				align-items: center;
				-webkit-box-pack: justify;
				justify-content: space-between;
				position: relative;
			}
			.QhPLj > p:first-child {
				padding: 0 18px 18px;
				font-size: 14px;
				display: block;
				font-weight: 500;
			}
			.jZopBj {
				user-select: none;
				-webkit-user-drag: none;
			}
			/*모집인원*/
			.QhPLj > p:first-child {
				padding: 0 0 0 25px;
				font-size: 14px;
				display: block;
				font-weight: 500;
			}
			/*인원조절*/
			.QhPLj > :nth-child(n) {
				padding: 0;
				width: calc(100% - 220px);
			}
			.QMYJI > div:first-child {
				margin-left: 7px;
				width: 100%;
			}
			.QMYJI {
				position: relative;
				display: flex;
				align-items: center;
				-webkit-box-pack: justify;
				justify-content: space-between;
			}
			/*슬라이더바*/
			
			
			/*인원알려주기*/
			.QMYJI > div:last-child {
				margin-left: 15px;
			}
			.area_flex {
				display: flex;
				justify-content: space-between;
				align-items: center;
			}
			.drqLrs {
				user-select: none;
				-webkit-user-drag: none;
			}
			element.style {
				margin-left: 4px;
			}
			/*날짜선택*/
			.eMbJju > :nth-child(n+2) {
				border: unset;
				padding: 16px 0 0;
			}
			.QhPLj > p:first-child {
				padding: 0 0 0 25px;
				width: fit-content;
			}
			/*날짜*/
			.bwNDmh {
				margin-bottom: -1px;
				position: relative;
				display: flex;
			}
			.djQkqt {
				position: relative;
				display: flex;
				-webkit-box-align: center;
				align-items: center;
				width: 100%;
				-webkit-box-pack: justify;
				justify-content: space-between;
			}
			/*날짜출발*/
			.djQkqt > .react-datepicker-wrapper {
				width: 100%;
			}
			.react-datepicker-wrapper {
				display: inline-block;
				padding: 0;
				border: 0;
			}
			.react-datepicker__input-container {
				position: relative;
				display: inline-block;
				width: 100%;
			}
			.djQkqt .react-datepicker__input-container::before {
				content: "";
				width: 16px;
				height: 16px;
				background: url("${pageContext.request.contextPath}/resources/img/partner/calender.svg") no-repeat;
				display: inline-block;
				position: absolute;
				z-index: 1;
				margin: 18px;
			}
			.djQkqt .datepicker[type="text"] {
				padding: 16px 28px 16px 46px;
				display: inline-block;
			}
			input[type="text"] {
				display: inline-block;
				width: 100%;
				font-size: 13px;
				line-height: 20px;
				padding: 16px 20px;
				background: #fff;
				border: 1px solid #e9e9e9;
				border-radius: 4px;
				box-sizing: border-box;
				vertical-align: top;
			}
			input {
				overflow: visible;
				margin: 0;
			}
			.djQkqt > .react-datepicker-wrapper {
				width: 100%;
			}
			.djQkqt > span {
				margin: 0 12px;
			}
			.eiMlOY {
				user-select: none;
				-webkit-user-drag: none;
			}
			/*클릭시*/
			input:focus {
				outline-color: rgb(112, 217, 223);
				outline-width: 1px;
			}
			/*본문내용*/
			.fIxQSV > :nth-child(n+2) {
				margin-top: 65px;
			}
			/*이미지넣기*/
			.gegbdD > :first-child {
				margin-top: 0;
			}
			.iRoMKW {
				height: 400px;
			}
			.iRoMKW {
				position: relative;
				display: flex;
				flex-direction: column;
				-webkit-box-align: center;
				align-items: center;
				-webkit-box-pack: center;
				justify-content: center;
				border: 1px solid rgb(233, 233, 233);
				background-color: rgb(244, 244, 244);
				width: 1200px;
				border-radius: 4px;
			}
			input:read-only {
				color: #9a9a9a;
				outline: none;
			}
			/*이미지텍스트*/
			.iRoMKW > :nth-child(n+2) {
				margin-top: 10px;
			}
			.iRoMKW > div {
				position: relative;
				display: flex;
				color: rgb(153, 153, 153);
				font-size: 14px;
				font-weight: 300;
				-webkit-box-align: center;
				align-items: center;
				-webkit-box-pack: center;
				justify-content: center;
			}
			.iOsHZd {
				user-select: none;
				-webkit-user-drag: none;
				margin-top: 0;
			}
			.iRoMKW > img {
				position: relative;
				width: 100%;
				height: 100%;
				border-radius: 4px;
				margin: 0px !important;
			}
			/*이미지취소*/
			.iRoMKW > #close {
				position: absolute;
				top: 10px;
				right: 10px;
				z-index: 2;
			}
			/*조그만거*/
			.iRoMKW > div > :nth-child(n+2) {
				margin-left: 4px;
				margin-top: 0;
			}
			/*제목*/
			.gegbdD > :nth-child(n) {
				margin-top: 26px;
			}
			input[type="text"] {
				display: inline-block;
				width: 100%;
				font-size: 13px;
				line-height: 20px;
				padding: 16px 20px;
				background: #fff;
				border: 1px solid #e9e9e9;
				border-radius: 4px;
				box-sizing: border-box;
				vertical-align: top;
			}
			/*영역분리*/
			.gegbdD > :nth-child(n) {
				margin-top: 26px;
			}
			.cGslsG {
				border-top: 1px solid rgb(233, 233, 233);
			}
			/*동행 내용*/
			.gegbdD > :nth-child(n) {
				margin-top: 26px;
			}
			.gegbdD textarea {
				min-height: 400px;
			}
			textarea {
				overflow: auto;
				position: relative;
				resize: none;
				display: block;
				width: 100%;
				padding: 16px 20px;
				box-sizing: border-box;
				border: 1px solid #e9e9e9;
				border-radius: 4px;
				font-size: 100%;
				line-height: 2.0;
				margin: 0;
			}
			textarea:focus {
				outline-color: rgb(112, 217, 223);
				outline-width: 1px;
			}
			textarea::placeholder {
				color: #919191;
				font-weight: 500;
			}
			input::placeholder {
				color: #919191;
				font-weight: 500;
			}
			/*버튼선택*/
			.bGwIdM {
				display: flex;
				-webkit-box-pack: justify;
				justify-content: space-between;
				padding: 65px 0 70px;
			}
			/*취소*/
			.hlWCvk {
				position: relative;
				line-height: 20px;
				border-radius: 4px;
				padding: 17px 5px;
				background-color: rgb(219, 219, 219);
				font-size: 14px;
				color: rgb(255, 255, 255);
				box-sizing: border-box;
				outline: auto;
			}
			.dcFMHq {
				position: relative;
				line-height: 20px;
				border-radius: 4px;
				padding: 17px 5px;
				background-color: rgb(112, 217, 223);
				font-size: 14px;
				color: rgb(255, 255, 255);
				box-sizing: border-box;
				outline: auto;
			}
			
			/*modal*/
			/*전체창*/
			.kxfRvG {
				width: 100%;
				height: 100%;
				position: fixed;
				top: 0px;
				left: 0px;
				display: flex;
				-webkit-box-pack: center;
				justify-content: center;
				-webkit-box-align: center;
				align-items: center;
				z-index: 10001;
				box-sizing: border-box;
				background: rgba(25, 25, 25, 0.5);
			}
			/*모달창*/
			.fcUHXy {
				box-sizing: border-box;
				width: 606px;
				height: 47.5rem;
				background-color: rgb(255, 255, 255);
				position: absolute;
				border-radius: 10px;
				overflow-y: auto;
			}
			/*헤드*/
			.fyfOyU {
				width: 318px;
				height: 104px;
				margin: 50px auto 20px;
				display: flex;
				flex-direction: column;
				-webkit-box-pack: justify;
				justify-content: space-between;
				-webkit-box-align: center;
				align-items: center;
				position: relative;
			}
			.fyfOyU > p {
				user-select: none;
				-webkit-user-drag: none;
				color: rgb(0, 0, 0);
			}
			.CWwyo {
				font-size: 23px;
				font-weight: 700;
			}
			.hZBcfU {
				font-size: 16px;
			}
			.fUbzlq {
				font-size: 14px;
			}
			.fUbzlq > span {
				color: rgb(240, 38, 38);
			}
			.ckUMfu > div > span {
				display: block;
				margin-left: 4px;
				font-size: 20px;
			}
			.ckUMfu > div {
				display: flex;
				-webkit-box-align: center;
				align-items: center;
				-webkit-box-pack: center;
				justify-content: center;
			}
			/*이모지*/
			.djivRF {
				width: 24px;
				height: 24px;
			}
			/*태그 선택박스*/
			.dBcUhY {
				width: 100%;
				box-sizing: border-box;
				padding: 0px 24px;
				position: relative;
			}
			/*미선택시*/
			.ckUMfu {
				box-sizing: border-box;
				width: 46%;
				height: 102px;
				background-color: rgb(248, 248, 248);
				color: rgb(37, 37, 37);
				border-radius: 10px;
				transition: background-color 0.3s ease-out 0s;
				margin: 10px 1.5%;
				cursor: pointer;
			}
			/*선택시*/
			.eWrVZP {
				box-sizing: border-box;
				width: 46%;
				height: 102px;
				background-color: rgb(112, 217, 223);
				color: rgb(255, 255, 255);
				border-radius: 10px;
				transition: background-color 0.3s ease-out 0s;
				margin: 10px 1.5%;
				font-size: large;
				cursor: pointer;
			}
			/*버튼*/
			.jUFPpk {
				width: 100%;
				box-sizing: border-box;
				padding: 0px 22px;
				margin: 60px 0px 24px;
				display: flex;
				-webkit-box-pack: justify;
				justify-content: space-between;
			}
			/*뒤로가기*/
			.hpRpYH {
				width: 244px;
				color: rgb(255, 255, 255);
				height: 68px;
				background: rgb(219, 219, 219);
				border-radius: 50px;
				cursor: pointer;
				font-size: 16px;
			}
			/*작성완료*/
			.hbQEgR {
				width: 244px;
				color: rgb(255, 255, 255);
				height: 68px;
				background: linear-gradient(90deg, rgb(112, 217, 223) 0%, rgb(88, 210, 216) 100%);
				border-radius: 50px;
				cursor: pointer;
				font-size: 16px;
			}
			/*모달창 위치 고정*/
			.WriteSelectionModal__StyledModalWrap-sc-1cknulk-0 {
			  position: fixed;
			  top: 0;
			  left: 0;
			  width: 100%;
			  height: 100%;
			  overflow: auto;
			}
			/*달력 스타일*/
			.ui-datepicker {
				background-color: #f8f8f8;
				border-radius: 10px;
				font-size: 16px;
				width: auto; /* 달력 전체 너비 */
				height: auto; /* 달력 전체 높이 */
			}
			
			.ui-datepicker-calendar {
			  width: 100%; /* 달력 내부의 날짜 표시 영역 너비 */
			  height: 100%; /* 달력 내부의 날짜 표시 영역 높이 */
			}
			
			.ui-datepicker td {
			  padding: 3px; /* 각 날짜 셀의 패딩 */
			}
			
			</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<section class="WriteWebSectionstyle__WebSectionImgWrapper-sc-ixmlq3-0 kSLJBy">
		<div class="FullSection__TopSectionWrapper-sc-1szrt90-1 AxzSO">
			<p class="TopSection__PreventDragP-sc-1sc5grx-0 krJNwE" style="margin-top: 0; margin-bottom: 0;">나와 맞는 여행동행과 이야기를 나누어 보아요!</p>
			<p class="TopSection__PreventDragP-sc-1sc5grx-0 krJNwE" style="margin-top: 0; margin-bottom: 0;">여행친구찾기</p>
		</div>
	</section>
	<main class="LayoutWrapper__ItemWrapper-sc-14edszd-0 gBZHir">
		<section
			direction="vertical"
			class="WebSection__SectionWrapper-sc-1hzt8o9-0 fIxQSV">
			<section
				direction="vertical"
				class="WebSection__SectionWrapper-sc-1hzt8o9-0 buQzNq">
				<div>
					<div class="WebSection__AreaWebFilterWrapper-sc-1hzt8o9-1 eMbJju">
						<div class="filter__WebItemWrapper-sc-1055oli-2 gZYroh">
							<div class="filter__WebContinentFilter-sc-1055oli-3 cksfQf">
								<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
									<button
										width="auto"
										font-size="15px"
										font-weight="500"
										class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jWOSQK"
										style="width: 220px; justify-content: flex-start;">국내여행</button>
								</div>
							</div>
							<div class="filter__WebCountryFilter-sc-1055oli-4 gZpguq">
								<div class="filter__WebCountryItemWrapper-sc-1055oli-5 fTvelu">
									<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
										<button
											width="auto"
											font-size="15px"
											font-weight="900"
											class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 bKQVyS"
											style="width: 144px; justify-content: flex-start;">서울</button>
									</div>
									<div>
										<div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">종로구</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">강남구</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">성동구</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">송파구</button>
											</div>
										</div>
									</div>
								</div>
								<div class="filter__WebCountryItemWrapper-sc-1055oli-5 fTvelu">
									<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
										<button
											width="auto"
											font-size="15px"
											font-weight="400"
											class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 bKQVyS"
											style="width: 144px; justify-content: flex-start;">경기</button>
									</div>
									<div>
										<div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">가평군</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">광명시</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">수원시</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">파주시</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">양평군</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">과천시</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">용인시</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">안성시</button>
											</div>
										</div>
									</div>
								</div>
								<div class="filter__WebCountryItemWrapper-sc-1055oli-5 fTvelu">
									<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
										<button
											width="auto"
											font-size="15px"
											font-weight="400"
											class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 bKQVyS"
											style="width: 144px; justify-content: flex-start;">인천</button>
									</div>
									<div>
										<div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">중구</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">연수구</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">옹진군</button>
											</div>
										</div>
									</div>
									
								</div>

								<div class="filter__WebCountryItemWrapper-sc-1055oli-5 fTvelu">
									<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
										<button
											width="auto"
											font-size="15px"
											font-weight="400"
											class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 bKQVyS"
											style="width: 144px; justify-content: flex-start;">강원</button>
									</div>
									<div>
										<div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">춘천시</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">평창구</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">동해시</button>
											</div>
										</div>
									</div>
								</div>
								<div class="filter__WebCountryItemWrapper-sc-1055oli-5 fTvelu">
									<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
										<button
											width="auto"
											font-size="15px"
											font-weight="400"
											class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 bKQVyS"
											style="width: 144px; justify-content: flex-start;">충청권</button>
									</div>
									<div>
										<div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">대전</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">세종</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">충남</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">충북</button>
											</div>
										</div>
									</div>
								</div>
								<div class="filter__WebCountryItemWrapper-sc-1055oli-5 fTvelu">
									<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
										<button
											width="auto"
											font-size="15px"
											font-weight="400"
											class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 bKQVyS"
											style="width: 144px; justify-content: flex-start;">경상권</button>
									</div>
									<div>
										<div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">부산</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">울산</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">경남</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">대구</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">경북</button>
											</div>
										</div>
									</div>
								</div>
								<div class="filter__WebCountryItemWrapper-sc-1055oli-5 fTvelu">
									<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
										<button
											width="auto"
											font-size="15px"
											font-weight="400"
											class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 bKQVyS"
											style="width: 144px; justify-content: flex-start;">전라권</button>
									</div>
									<div>
										<div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">광주</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">전남</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">전북</button>
											</div>
										</div>
									</div>
								</div>
								<div class="filter__WebCountryItemWrapper-sc-1055oli-5 fTvelu">
									<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
										<button
											width="auto"
											font-size="15px"
											font-weight="400"
											class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 bKQVyS"
											style="width: 144px; justify-content: flex-start;">제주도</button>
									</div>
									<div>
										<div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">한라봉시</button>
											</div>
											<div class="ButtonWithToggle__RelativeBox-sc-b2wh5i-0 StvrC">
												<button
													width="auto"
													font-size="15px"
													font-weight="400"
													class="ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2 jNSMIB"
													style="width: fit-content; justify-content: flex-start;">서귀포시</button>
											</div>
							
										</div>
									</div>
								</div>
								<script>
									var $j = jQuery.noConflict();
									$j(document).ready(function() {
									var prevBtn = null;
									$j(document).on("click", ".ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2.jNSMIB", function() {
										$j(this).removeClass("jNSMIB").addClass("bnbVGW");
										if (prevBtn !== null) {
											prevBtn.removeClass("bnbVGW").addClass("jNSMIB");
										}
										prevBtn = $j(this);
										$j(this).siblings().find(".bnbVGW").removeClass("bnbVGW").addClass("jNSMIB");
										$j(this).closest(".filter__WebCountryItemWrapper-sc-1055oli-5").siblings().find(".bnbVGW").removeClass("bnbVGW").addClass("jNSMIB");
										// Select the 제주도 button when one of the city buttons is clicked
										$j(this).closest(".filter__WebCountryItemWrapper-sc-1055oli-5").find(".ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2.bKQVyS").removeClass("jNSMIB").addClass("bnbVGW");
										$j(this).closest(".filter__WebCountryItemWrapper-sc-1055oli-5").find(".ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2.jNSMIB").removeClass("bnbVGW").addClass("jNSMIB");
										$j(this).closest(".filter__WebCountryItemWrapper-sc-1055oli-5").find(".ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2.jNSMIB").removeClass("bnbVGW").addClass("jNSMIB").addClass("cZpRAh");

									});
								});

								$j(document).ready(function() {
									$j(document).on("click", ".ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2.jNSMIB", function() {
										$j(".filter__WebCountryItemWrapper-sc-1055oli-5 .ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2.bKQVyS").removeClass("cZpRAh");
										$j(".filter__WebCountryItemWrapper-sc-1055oli-5 .ButtonWithToggle__ButtonWrapper-sc-b2wh5i-2.jNSMIB").removeClass("cZpRAh");
										$j(this).addClass("cZpRAh");
									});
								});
								</script>
								
								
							</div>
						</div>


						<div class="InfoSection__SectionWrapper-sc-kxxjuz-0 QhPLj">
							<p class="InfoSection__PreventDragP-sc-kxxjuz-1 jZopBj">모집인원</p>
							<div class="Number__ItemWrapper-sc-chlyb5-0 QMYJI">
							  <input type="range" min="1" max="20" value="1" class="rc-slider" style="width: 100%;" onchange="updateRecruitNo(this.value)">
							  <div class="area_flex">
								<p class="Number__PreventDragP-sc-chlyb5-1 drqLrs recruit_no">1</p>
								<p class="Number__PreventDragP-sc-chlyb5-1 drqLrs" style="margin-left: 4px;">명</p>
							  </div>
							</div>
						  </div>
						  
						  <script>
						  function updateRecruitNo(value) {
							const recruitNoElement = document.querySelector(".recruit_no");
							recruitNoElement.innerText = value;
						  }
						  </script>
						  
						

						<div class="InfoSection__SectionWrapper-sc-kxxjuz-0 QhPLj">
							<p class="InfoSection__PreventDragP-sc-kxxjuz-1 jZopBj">날짜 선택</p>
							<div class="DatepickerRange__DatepickerRangeWrapper-sc-xqwwp5-0 bwNDmh datepicker_wrap">
								<div class="DatepickerRange__DatePickerWrapper-sc-xqwwp5-1 djQkqt">
									<div class="react-datepicker-wrapper">
										<div class="react-datepicker__input-container">
											<input
											type="text"
											name="calPrev"
											placeholder= "날짜 선택"
											autocomplete="off"
											class="datepicker"
											value=""></div>  
									</div>
									<span class="DatepickerRange__PreventDragSpan-sc-xqwwp5-2 eiMlOY">-</span>
									<div class="react-datepicker-wrapper">
										<div class="react-datepicker__input-container">
											<input type="text" id="datepicker" name="datepicker"
											placeholder="날짜 선택" autocomplete="off" class="datepicker" value=""></div>
									</div>
								</div>
							</div>
						</div>
							
						
					
					</div>
				</div>
			</section>
		<div class="WriteWebSectionstyle__TitleContentImgWrap-sc-ixmlq3-2 gegbdD">
			
			<label for="fileInput">
				<div class="Image__ItemWrapper-sc-16k9dmh-0 iRoMKW">
					<svg
						width="50"
						height="50"
						viewbox="0 0 50 50"
						fill="none"
						xmlns="http://www.w3.org/2000/svg"
						style="display: inline-block;">
						<path
						fill-rule="evenodd"
						clip-rule="evenodd"
						d="M0 6.54397C0 2.92984 2.93584 0 6.55738 0H43.4426C47.0642 0 50 2.92983 50 6.54397V43.456C50 47.0702 47.0642 50 43.4426 50H6.55738C2.93584 50 0 47.0702 0 43.456V6.54397ZM6.55738 2.86299C4.52026 2.86299 2.86885 4.51102 2.86885 6.54397V43.456C2.86885 45.489 4.52026 47.137 6.55738 47.137H9.23315L32.1003 23.5656C34.6482 20.9392 38.8581 20.9052 41.4483 23.4901L47.1311 29.1613V6.54397C47.1311 4.51102 45.4797 2.86299 43.4426 2.86299H6.55738ZM43.4426 47.137H13.2262L34.1615 25.557C35.5947 24.0796 37.9627 24.0605 39.4197 25.5145L47.1311 33.2102V43.456C47.1311 45.489 45.4797 47.137 43.4426 47.137ZM11.5779 17.1268C11.5779 14.1056 14.032 11.6564 17.0594 11.6564C20.0868 11.6564 22.541 14.1056 22.541 17.1268C22.541 20.148 20.0868 22.5971 17.0594 22.5971C14.032 22.5971 11.5779 20.148 11.5779 17.1268ZM17.0594 8.79346C12.4476 8.79346 8.70902 12.5244 8.70902 17.1268C8.70902 21.7292 12.4476 25.4601 17.0594 25.4601C21.6712 25.4601 25.4098 21.7292 25.4098 17.1268C25.4098 12.5244 21.6712 8.79346 17.0594 8.79346Z"
						fill="#DBDBDB"></path>
					</svg>
					<div>
						<p class="Image__PreventDragP-sc-16k9dmh-1 iOsHZd">배경사진을 선택해주세요</p>
						<div
							style="width: 14px; height: 14px; background-color: rgba(0, 0, 0, 0.2); border-radius: 7px; display: inline-flex; align-items: center; justify-content: center;">
							<svg
								width="2"
								height="8"
								viewbox="0 0 2 8"
								fill="none"
								xmlns="http://www.w3.org/2000/svg">
								<path
								d="M0.493506 5.23368H1.49351L1.7013 1.57833L1.75325 0.5H0.246753L0.285714 1.57833L0.493506 5.23368ZM0.987013 7.5C1.55844 7.5 2 7.19843 2 6.76893C2 6.33943 1.55844 6.01958 0.987013 6.01958C0.428571 6.01958 0 6.33943 0 6.76893C0 7.19843 0.428571 7.5 0.987013 7.5Z"
								fill="#FFF"></path>
							</svg>
						</div>
					</div>
				</div>
			</label>
			<input id="fileInput" type="file" accept="image/png, image/jpeg" style="display: none; margin: 0px; padding: 0px;">
			<script>
				const fileInput = document.getElementById('fileInput');
				const imageWrapper = document.querySelector('.Image__ItemWrapper-sc-16k9dmh-0');

				fileInput.addEventListener('change', (event) => {
				const file = event.target.files[0];
				const reader = new FileReader();

				reader.onload = (event) => {
					const imageUrl = event.target.result;
					imageWrapper.style.backgroundImage = `url(${imageUrl})`;
				}
				reader.readAsDataURL(file);
				});
			</script>
			
				
				<div>
					<input type="text" name="title" placeholder="ex) 12월 3박4일 제주 바다 보러갈 동행 3명 구해요" maxlength="100" value=""></div>
				<div class="WriteWebSectionstyle__HorizontalLine-sc-ixmlq3-1 cGslsG"></div>
				<div>
				<textarea class="WriteWebSectionstyle__WriteTextarea-sc-ixmlq3-3 IUMRx desc" name="content" id="desc" placeholder="
1. 현재 동행이 있나요? 
ex) 혼자에요 / 동행 1명이 있어요 

2.어떤 동행을 찾고 있나요? 
ex) 맛집 탐방을 좋아하는 20대 여성 동행을 찾아요! 

3. 원하는 여행 코스가 있다면 알려주세요! 

(1000자 이내) "></textarea>
				</div>
			</div>
			<div class="button__ButtonAreaDiv-sc-1szjplo-6 bGwIdM" style="margin-top: 7px;">
				<button
					class="button__ButtonConfirmButton-sc-1szjplo-7 hlWCvk"
					style="width: calc(50% - 8px);">취소</button>
				<button
					class="button__ButtonConfirmButton-sc-1szjplo-7 dcFMHq"
					style="width: calc(50% - 8px);">작성완료</button>
			</div>
			</section>
			</main>

			<div class="WriteSelectionModal__StyledModalWrap-sc-1cknulk-0 kxfRvG">
			<div class="WriteSelectionModal__StyledModalInner-sc-1cknulk-1 fcUHXy">
			<div class="WriteSelectionModal__StyledTitleBox-sc-1cknulk-2 fyfOyU">
				<p class="WriteSelectionModal__StyledNumTitle-sc-1cknulk-3 hZBcfU">여행 키워드 선택하기</p>
				<p class="WriteSelectionModal__StyledTitle-sc-1cknulk-4 CWwyo">어떤 여행을 계획하고 있나요?</p>
				<p class="WriteSelectionModal__StyledSubtitle-sc-1cknulk-5 fUbzlq">
					<span>* 최소 1개~ 최대 3개</span>의 키워드를 선택해주세요.</p>
			</div>
			<div class="WriteSelectionModal__StyledContentBox-sc-1cknulk-6 dBcUhY">
				<button class="WriteSelectionModal__StyledAnswer-sc-1cknulk-7 ckUMfu">
					<div>
						<img
							src="${pageContext.request.contextPath}/resources/img/partner/answer1_img01.png"
							alt="이모지"
							class="WriteSelectionModal__StyledImg-sc-1cknulk-8 djivRF">
							<span>무계획</span>
						</div>
					</button>
					<button class="WriteSelectionModal__StyledAnswer-sc-1cknulk-7 ckUMfu">
						<div>
							<img src="${pageContext.request.contextPath}/resources/img/partner/2.png" alt="이모지"
								class="WriteSelectionModal__StyledImg-sc-1cknulk-8 djivRF">
								<span>관광</span>
							</div>
						</button>
						<button class="WriteSelectionModal__StyledAnswer-sc-1cknulk-7 ckUMfu">
							<div>
								<img src="${pageContext.request.contextPath}/resources/img/partner/3.png" alt="이모지"
									class="WriteSelectionModal__StyledImg-sc-1cknulk-8 djivRF">
									<span>바다</span>
								</div>
							</button>
							<button class="WriteSelectionModal__StyledAnswer-sc-1cknulk-7 ckUMfu">
								<div>
									<img src="${pageContext.request.contextPath}/resources/img/partner/4.png" alt="이모지"
										class="WriteSelectionModal__StyledImg-sc-1cknulk-8 djivRF">
										<span>등산</span>
									</div>
								</button>
								<button class="WriteSelectionModal__StyledAnswer-sc-1cknulk-7 ckUMfu">
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/partner/5.png" alt="이모지"
											class="WriteSelectionModal__StyledImg-sc-1cknulk-8 djivRF">
											<span>맛집/카페 탐방</span>
										</div>
									</button>
									<button class="WriteSelectionModal__StyledAnswer-sc-1cknulk-7 ckUMfu">
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/partner/6.png"
												alt="이모지"
												class="WriteSelectionModal__StyledImg-sc-1cknulk-8 djivRF">
												<span>핫플레이스 탐방</span>
											</div>
										</button>
										<button class="WriteSelectionModal__StyledAnswer-sc-1cknulk-7 ckUMfu">
											<div>
												<img
													src="${pageContext.request.contextPath}/resources/img/partner/7.png"
													alt="이모지"
													class="WriteSelectionModal__StyledImg-sc-1cknulk-8 djivRF">
													<span>쇼핑</span>
												</div>
											</button>
											<button class="WriteSelectionModal__StyledAnswer-sc-1cknulk-7 ckUMfu">
												<div>
													<img
														src="${pageContext.request.contextPath}/resources/img/partner/8.png"
														alt="이모지"
														class="WriteSelectionModal__StyledImg-sc-1cknulk-8 djivRF">
														<span>드라이브</span>
													</div>
												</button>
												<button class="WriteSelectionModal__StyledAnswer-sc-1cknulk-7 ckUMfu">
													<div>
														<img
															src="${pageContext.request.contextPath}/resources/img/partner/9.png"
															alt="이모지"
															class="WriteSelectionModal__StyledImg-sc-1cknulk-8 djivRF">
															<span>전시회/공연 관람</span>
														</div>
													</button>
													<button class="WriteSelectionModal__StyledAnswer-sc-1cknulk-7 ckUMfu">
														<div>
															<img
																src="${pageContext.request.contextPath}/resources/img/partner/10.png"
																alt="이모지"
																class="WriteSelectionModal__StyledImg-sc-1cknulk-8 djivRF">
																<span>스포츠 경기 직관</span>
															</div>
														</button>
														<button class="WriteSelectionModal__StyledAnswer-sc-1cknulk-7 ckUMfu">
															<div>
																<img
																	src="${pageContext.request.contextPath}/resources/img/partner/11.png"
																	alt="이모지"
																	class="WriteSelectionModal__StyledImg-sc-1cknulk-8 djivRF">
																	<span>글램핑</span>
																</div>
															</button>
															<button class="WriteSelectionModal__StyledAnswer-sc-1cknulk-7 ckUMfu">
																<div>
																	<img
																		src="${pageContext.request.contextPath}/resources/img/partner/12.png"
																		alt="이모지"
																		class="WriteSelectionModal__StyledImg-sc-1cknulk-8 djivRF">
																		<span>서핑</span>
																	</div>
																</button>
																<div class="WriteSelectionModal__StyledButtonBox-sc-1cknulk-9 jUFPpk">
																	<button
																		width="244px"
																		height="68px"
																		color="#fff"
																		font-size="16px"
																		class="ModalButton__ButtonWrap-sc-1q3a6l3-0 hpRpYH">뒤로가기</button>
																	<button
																		width="244px"
																		height="68px"
																		color="#fff"
																		font-size="16px"
																		class="ModalButton__ButtonWrap-sc-1q3a6l3-0 hbQEgR">다음</button>
																</div>
															</div>
														</div>
													</div>
					<script>
						// 모달 요소 가져오기
						const modal = document.querySelector('.kxfRvG');
					
						// 작성완료 버튼을 클릭할 때마다 실행되는 함수
						function openModal() {
							// body 요소에 overflow: hidden; 속성 추가
							document.body.style.overflow = 'hidden';
							// 모달을 보이도록 함
							modal.style.display = 'flex';
						}
					
						// 작성완료 버튼 요소 가져오기
						const submitButton = document.querySelector('.dcFMHq');
						// 작성완료 버튼에 클릭 이벤트 리스너 추가하기
						submitButton.addEventListener('click', openModal);
					
						// 뒤로가기 버튼 요소 가져오기
						const backButton = document.querySelector('.ModalButton__ButtonWrap-sc-1q3a6l3-0.hpRpYH');
						// 모달 꺼지기
						backButton.addEventListener('click', function () {
							// 모달을 안 보이도록 함
							modal.style.display = 'none';
							// body 요소의 overflow 속성을 auto로 변경
							document.body.style.overflow = 'auto';
						});
					
						// 모달 외부를 클릭할 때 모달이 사라지도록 함
						window.addEventListener('click', function (event) {
							// 클릭한 요소가 모달이 아닐 경우 모달을 안 보이도록 함
							if (event.target === modal) {
								modal.style.display = 'none';
								// body 요소의 overflow 속성을 auto로 변경
								document.body.style.overflow = 'auto';
							}
						});
					</script>
													
					<script>
						$j(document).ready(function () {
							// 선택된 버튼을 저장할 배열 선언
							var selectedBtns = [];
							// 버튼 클릭 이벤트 핸들러 등록
							$j(document).on(
								"click",
								".WriteSelectionModal__StyledAnswer-sc-1cknulk-7.ckUMfu",
									function () {
										// 클릭된 버튼의 클래스 변경
										$j(this)
											.removeClass("ckUMfu")
											.addClass("eWrVZP");
										// 선택된 버튼이 3개 이상일 경우 가장 오래된 버튼을 배열에서 제거하고 해당 버튼의 클래스를 초기화
										if (selectedBtns.length >= 3) {
											var oldestBtn = selectedBtns.shift();
											oldestBtn
												.removeClass("eWrVZP bnbVGW jNSMIB cZpRAh")
												.addClass("ckUMfu");
										}
										// 선택된 버튼을 배열에 추가
										selectedBtns.push($j(this));
										// 선택된 버튼의 클래스를 변경
										for (var i = 0; i < selectedBtns.length; i++) {
											var selectedBtn = selectedBtns[i];
											selectedBtn
												.removeClass("ckUMfu jNSMIB cZpRAh")
												.addClass("eWrVZP");
										}
									}
							);
						});
					</script>

	
	
	
			<!-- 푸터바 포함 -->
	<jsp:include page="../common/footer.jsp"/>
            
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery-ui-datepicker-with-i18n@1.10.4/ui/i18n/jquery.ui.datepicker-de.min.js"></script>

	<script>
		var $j = jQuery.noConflict();
		
		
		
		$j(document).ready(function() { 
			console.log("jquery testwwa")
	

			$j.datepicker.setDefaults({
			minDate: 0, 
			dateFormat: 'yy-mm-dd',	
			prevText: '이전 달',	
			nextText: '다음 달',	
			closeText: '닫기',      
			monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],	    
			monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],	
			dayNames: ['일', '월', '화', '수', '목', '금', '토'],	    
			dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],	
			dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],	
			showMonthAfterYear: true,	
			yearSuffix: '년',	
		});
		});
	</script>
</body>
</html>