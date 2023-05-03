<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style >			
	element.style {
		display: flex;
		box-sizing: border-box;
		margin-top: 24px;
	}
	.bgfeYQ {
		padding: 0;
	}
	input:focus {
		outline-color: rgb(112, 217, 223);
		outline-width: 1px;
	}

	/*게시글스타일*/
	.cxduOO {
		display: flex;
		flex-direction: column;
		width: 235px;
		height: 350px;
		background: rgb(255, 255, 255);
		box-shadow: rgba(25, 25, 25, 0.2) 0 6px 10px;
		border-radius: 14px;
		box-sizing: border-box;
		cursor: pointer;
		margin: 0;
	}
	/*조회순 라인*/
	.buQzNq {
		position: relative;
		width: 1200px;
		margin: 0 auto;
	}
	/*게시글검색*/
	.jjezfq {
		display: flex;
		position: relative;
		box-sizing: border-box;
		width: 100%;
		height: 40px;
		-webkit-box-align: center;
		align-items: center;
		background: rgb(248, 248, 248);
		border-radius: 8px;
	}
	.fELxes {
		display: flex;
		position: relative;
		width: max-content;
		height: max-content;
		margin-left: 17px;
	}
	.wxYuf {
		display: flex;
		flex-flow: column nowrap;
		width: 282px;
		height: auto;
		flex-shrink: 0;
	}
	.dABHVy {
		display: flex;
		position: relative;
		width: 100%;
		height: auto;
		background: rgb(248, 248, 248);
		margin-left: 9px;
		border: none;
		outline: none;
	}
	.jbRhXc {
		display: flex;
		position: relative;
		width: 100%;
		height: auto;
		-webkit-box-align: center;
		align-items: center;
		-webkit-box-pack: center;
		justify-content: center;
		box-sizing: border-box;
	}
	/*정렬*/
	.hKHUvu {
		display: flex;
		width: max-content;
		height: auto;
		gap: 22px;
	}
	.cJFGWH {
		width: auto;
		height: 40px;
		display: flex;
		box-sizing: border-box;
		padding-right: 18px;
		-webkit-box-pack: start;
		justify-content: flex-start;
		position: relative;
		transition: all 0.25s ease-out 0s;
	}
	.tkvTm {
		width: auto;
		height: 40px;
		padding: 10px;
		border-radius: 10px;
		box-sizing: border-box;
		display: flex;
		flex-wrap: nowrap;
		flex-shrink: 0;
		font-weight: 400;
		font-size: 14px;
		color: rgb(37, 37, 37);
		background: rgb(248, 248, 248);
		margin-right: 12px;
		line-height: 21px;
		transition: all 0.25s ease-out 0s;
	}
	button {
		border: 0;
		cursor: pointer;
		outline: none;
		vertical-align: top;
	}
	.buQzNq > :nth-child(n+2) {
		margin-top: 0;
	}
	.bFhXDi {
		position: relative;
		display: flex;
		width: 100%;
		height: auto;
		-webkit-box-pack: justify;
		justify-content: space-between;
	}
	/*기간정렬*/
	.Swiwe {
		position: relative;
		display: flex;
		flex-wrap: nowrap;
		flex-shrink: 0;
		width: auto;
		height: 40px;
	}
	/*조회기간*/
	.CLCAt {
		margin-right: 15px;
		padding: 8px 14px;
		position: relative;
		width: auto;
		height: 40px;
		display: flex;
		-webkit-box-pack: center;
		justify-content: center;
		-webkit-box-align: center;
		align-items: center;
		box-sizing: border-box;
		background: rgb(255, 255, 255);
		border: 1px solid rgb(233, 233, 233);
		border-radius: 10px;
		cursor: pointer;
	}
	.dbocDg {
		font-weight: 500;
		font-size: 14px;
		line-height: 21px;
		padding-left: 10px;
		user-select: none;
		-webkit-user-drag: none;
		color: rgb(0, 0, 0);
	}
	/*모든국가*/
	.fWwuNM {
		padding: 0 14px;
		position: relative;
		display: flex;
		flex-wrap: nowrap;
		flex-shrink: 0;
		width: auto;
		height: 100%;
		-webkit-box-pack: center;
		justify-content: center;
		-webkit-box-align: center;
		align-items: center;
		cursor: pointer;
		box-sizing: border-box;
		border-radius: 10px;
		gap: 12px;
		background-color: rgb(255, 255, 255);
		border: 1px solid rgb(233, 233, 233);
		z-index: 1;
	}
	/*게시글정렬*/
	.dkymTH {
		display: grid;
		grid-template-columns: repeat(3, 1fr);
		gap: 24px;
		box-sizing: border-box;
		margin-top: 1rem;
	}
	/*윗단*/
	.cxduOO > * {
		box-sizing: border-box;
	}
	.iJlJaU {
		position: relative;
		padding: 0 14px;
		display: flex;
		-webkit-box-align: center;
		align-items: center;
		width: 100%;
		height: max-content;
		flex-wrap: nowrap;
	}
	.ijpLct {
		display: flex;
		flex-direction: column;
		width: 100%;
		height: max-content;
	}
	/*20대여행*/
	.dKvksB {
		margin-top: 0;
		display: flex;
		width: max-content;
		height: auto;
		-webkit-box-align: center;
		align-items: center;
		box-sizing: border-box;
	}
	.gGpJuG {
		font-weight: 400;
		font-size: 12px;
		line-height: 18px;
		display: -webkit-box;
		overflow: hidden;
		text-overflow: ellipsis;
		overflow-wrap: break-word;
		-webkit-line-clamp: 1;
		-webkit-box-orient: vertical;
		user-select: none;
		color: rgb(0, 143, 246);
		margin-top: 0.3rem;
		margin-bottom: 1rem;
	}
	/*여행 . */
	.bdAMWe {
		margin: 0 6px;
		display: flex;
		width: 2px;
		height: 2px;
		background: rgb(0, 143, 246);
		border-radius: 50%;
	}
	/*사용자이미지*/
	.hzLcgu {
		margin-right: 12px;
		display: flex;
		flex-wrap: nowrap;
		flex-shrink: 0;
		width: 30px;
		height: 30px;
		object-fit: cover;
		border-radius: 50%;
	}
	.gNWBdG {
		display: flex;
		-webkit-box-align: center;
		align-items: center;
		width: 50%;
		height: 100%;
	}
	/*닉네임*/
	.jmSbLA {
		font-weight: 400;
		font-size: 12px;
		line-height: 18px;
		display: -webkit-box;
		overflow: hidden;
		text-overflow: ellipsis;
		overflow-wrap: break-word;
		-webkit-line-clamp: 1;
		-webkit-box-orient: vertical;
		user-select: none;
		color: rgb(154, 154, 154);
		margin-top: 0.5rem;
		margin-bottom: 0;
	}
	/*가림막*/
	.fAUDUm {
		display: flex;
		width: 1px;
		height: 12px;
		background: rgb(219, 219, 219);
	}
	/*여행기간*/
	.ilUDog {
		margin-right: 2px;
		width: 14px;
		height: 14px;
		object-fit: contain;
		z-index: 100;
	}
	.fdRVsr {
		padding-left: 10px;
		display: flex;
		flex-shrink: 0;
		flex-direction: column;
		-webkit-box-pack: center;
		justify-content: center;
		justify-self: center;
		width: 50%;
		height: 100%;
		box-sizing: border-box;
	}
	.iBlyRM {
		font-weight: 400;
		font-size: 12px;
		line-height: 16px;
		display: flex;
		flex-shrink: 0;
		-webkit-box-align: center;
		align-items: center;
		color: rgb(154, 154, 154);
		z-index: 100;
		user-select: none;
		box-sizing: border-box;
		margin-top: 0.5rem;
		margin-bottom: 0;
	}
	.iVfuBW {
		font-weight: 500;
		font-size: 12px;
		line-height: 18px;
		display: -webkit-box;
		overflow: hidden;
		text-overflow: ellipsis;
		overflow-wrap: break-word;
		-webkit-line-clamp: 1;
		-webkit-box-orient: vertical;
		user-select: none;
		color: rgb(0, 206, 124);
		z-index: 100;
		margin-top: 0.3rem;
		margin-bottom: 1rem;
	}
	.dKvksz {
		margin-top: 2px;
		display: flex;
		width: max-content;
		height: auto;
		-webkit-box-align: center;
		align-items: center;
		box-sizing: border-box;
	}

	/*정렬*/
	.kdZjQK {
		display: flex;
		-webkit-box-align: center;
		align-items: center;
		width: max-content;
		height: max-content;
		box-sizing: border-box;
	}
	/*날짜표시*/
	.fblYhH {
		font-weight: 400;
		font-size: 12px;
		line-height: 18px;
		display: -webkit-box;
		overflow: hidden;
		text-overflow: ellipsis;
		overflow-wrap: break-word;
		-webkit-line-clamp: 1;
		-webkit-box-orient: vertical;
		user-select: none;
		color: rgb(0, 206, 124);
		z-index: 100;
		margin-top: 0.3rem;
		margin-bottom: 1rem;
	}
	/*5일 . */
	.mKoaj {
		margin: 0 6px;
		display: flex;
		width: 2px;
		height: 2px;
		background: rgb(0, 206, 124);
		border-radius: 50%;
		z-index: 100;
	}
	/*이미지*/
	.FemVM {
		display: flex;
		width: 100%;
		height: 144px;
		object-fit: cover;
		transition: all 0.3s ease-out 0s;
		transform: scale(1);
	}

	img {
		border-style: none;
	}
	.ctsFtI {
		position: relative;
		display: flex;
		width: 100%;
		height: max-content;
		border-radius: 10px;
	}
	
	/*주소*/
	.heALwI {
		position: absolute;
		padding: 0 8px;
		left: 6px;
		top: 6px;
		display: flex;
		-webkit-box-align: center;
		align-items: center;
		width: max-content;
		height: 28px;
		border-radius: 10px;
		background: rgb(248, 248, 248);
	}
	.lmqiXK {
		margin-right: 4px;
		display: flex;
		width: max-content;
		height: 20px;
		-webkit-box-pack: center;
		justify-content: center;
		-webkit-box-align: center;
		align-items: center;
		box-sizing: border-box;
	}
	.kPceoN {
		font-weight: 500;
		font-size: 12px;
		line-height: 19px;
		user-select: none;
		color: rgb(0, 143, 246);
		margin-bottom: 0rem;
	}
	/*아래단*/
	.eAbKRa {
		padding: 8px;
		display: flex;
		flex-direction: column;
		width: 100%;
		height: max-content;
	}

	/*<!-- hear -->*/
	.LuXMO {
		padding: 4px 10px;
		position: absolute;
		bottom: 0;
		display: flex;
		-webkit-box-align: center;
		align-items: center;
		-webkit-box-pack: justify;
		justify-content: space-between;
		width: 100%;
		height: 0;
		box-sizing: border-box;
		background: rgba(25, 25, 25, 0.7);
		backdrop-filter: blur(2px);
		border-radius: 0 0 10px 10px;
		transition: all 0.2s ease-out 0s;
		opacity: 0;
	}
	.jfSGGP {
		display: flex;
		width: max-content;
		height: max-content;
		-webkit-box-align: center;
		align-items: center;
	}
	.YIYAY {
		font-weight: 500;
		font-size: 12px;
		line-height: 21px;
		user-select: none;
		color: rgb(0, 206, 124);
	}
	.hMauwG {
		margin: 0 6px;
		display: flex;
		width: 2px;
		height: 2px;
		background: rgb(0, 206, 124);
		border-radius: 50%;
	}
	.jQFFHg {
		display: flex;
		width: max-content;
		height: max-content;
	}
	.lhlIsf {
		margin-right: 10px;
		display: flex;
		width: max-content;
		height: max-content;
		-webkit-box-align: center;
		align-items: center;
	}
	.ccCSmm {
		margin-right: 0;
		display: flex;
		width: max-content;
		height: max-content;
		-webkit-box-align: center;
		align-items: center;
	}
	.ctsFtI {
		position: relative;
		display: flex;
		width: 100%;
		height: max-content;
		border-radius: 10px;
		overflow: hidden;
	}
	/*<!-- hear -->*/
	/*아래단 제목*/
	.kVTEEb {
		font-weight: 700;
		font-size: 16px;
		line-height: 24px;
		color: rgb(0, 0, 0);
		overflow: hidden;
		text-overflow: ellipsis;
		overflow-wrap: break-word;
		-webkit-line-clamp: 1;
		-webkit-box-orient: vertical;
		user-select: none;
	}
	/*본문*/
	.ckjOSI {
		margin-top: 4px;
		font-weight: 400;
		font-size: 12px;
		line-height: 22px;
		display: -webkit-box;
		overflow: hidden;
		text-overflow: ellipsis;
		overflow-wrap: break-word;
		-webkit-line-clamp: 2;
		-webkit-box-orient: vertical;
		color: rgb(154, 154, 154);
		user-select: none;
	}
	/*페이징바*/
	.dvaZUI {
		width: 100%;
		height: 32px;
		display: flex;
		-webkit-box-pack: center;
		justify-content: center;
		-webkit-box-align: center;
		align-items: center;
		padding: 0;
		margin: 105px 0 20px;
	}
	.IJCLd {
		padding-left: 0;
		padding-right: 3px;
		width: 38px;
		height: 38px;
		display: flex;
		-webkit-box-align: center;
		align-items: center;
		-webkit-box-pack: center;
		justify-content: center;
		cursor: pointer;
		margin: 0 5px;
		border-radius: 50px;
		border: 1px solid rgb(238, 238, 238);
		background-color: rgb(255, 255, 255);
	}
	.IJCLb {
		padding-left: 0;
		padding-right: 1px;
		width: 38px;
		height: 38px;
		display: flex;
		-webkit-box-align: center;
		align-items: center;
		-webkit-box-pack: center;
		justify-content: center;
		cursor: pointer;
		margin: 0 5px;
		border-radius: 50px;
		border: 1px solid rgb(238, 238, 238);
		background-color: rgb(255, 255, 255);
	}
	.jMsedF {
		margin: 0 10px;
		width: auto;
		height: 32px;
		display: flex;
		-webkit-box-align: center;
		align-items: center;
		-webkit-box-pack: center;
		justify-content: center;
	}
	.bSLTGL {
		width: 32px;
		height: 32px;
		display: flex;
		-webkit-box-align: center;
		align-items: center;
		-webkit-box-pack: center;
		justify-content: center;
		color: rgb(0, 0, 0);
		cursor: pointer;
		margin: 0 5px;
		background-color: rgb(255, 255, 255);
		font-size: 16px;
	}
	.ItMoo {
		padding-left: 2px;
		padding-right: 0;
		width: 38px;
		height: 38px;
		display: flex;
		-webkit-box-align: center;
		align-items: center;
		-webkit-box-pack: center;
		justify-content: center;
		cursor: pointer;
		margin: 0 5px;
		border-radius: 50px;
		border: 1px solid rgb(238, 238, 238);
		background-color: rgb(255, 255, 255);
	}
	.HUvPJ {
		padding-left: 3px;
		padding-right: 0;
		width: 38px;
		height: 38px;
		display: flex;
		-webkit-box-align: center;
		align-items: center;
		-webkit-box-pack: center;
		justify-content: center;
		cursor: pointer;
		margin: 0 5px;
		border-radius: 50px;
		border: 1px solid rgb(238, 238, 238);
		background-color: rgb(255, 255, 255);
	}


	/*상단바 이미지*/
	section {
    display: block;
}
	.fqcgyB {
    padding: 0px;
    width: unset;
}
	.fqcgyB {
    position: relative;
	background-image: url("${pageContext.request.contextPath}/resources/img/partner/star.webp");
    background-size: cover;
    background-position: center center;
	}
	.AxzSO {
    position: relative;
    width: 1200px;
    margin: 0px auto;
    min-height: 341px;
    display: flex;
    flex-direction: column;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
	justify-content: space-evenly;
    color: rgb(255, 255, 255);
}
.AxzSO > p:first-child {
    font-weight: 400;
    font-size: 22px;
    display: inline-block;
}
.krJNwE {
    user-select: none;
    -webkit-user-drag: none;
}
.AxzSO > p:nth-child(2) {
    font-weight: 700;
    font-size: 70px;
    display: inline-block;
}

</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>


<div class="main-wrapper blog-list-right-sidebar">
  <section class="py-9 py-md-10">
    <div class="container">
      <div class="row">
		<div class="col-lg-8 col-xl-9 order-1 order-lg-0">
			<div>
			  <div class="row align-items-xl-center">
			  <div class="container">
				<div>
				<div class="row">
					<div class="col-12">
						<div class="row" style="width: 1500px;">
						  <div class="col-lg-6" style="border: solid 3px rgba(199, 198, 198, 0.37); padding: 35px; border-radius:  15px 15px 15px 15px;">

               <div class="mb-4">
             <h3 class="text-uppercase mb-3" align="center">내 동행 게시글</h3>
           </div>

	<div class="Layout__PageContentWrap-sc-1w3ggn5-0 bgfeYQ">
		
		<section
			direction="vertical"
			class="WebSection__SectionWrapper-sc-1hzt8o9-0 buQzNq"
			style="margin-top: 20px; display: flex;">
			<!-------------------------------------------------------------------------------------------------------------------------->

			<ul
				type="portrait"
				class="AccompanyWebSection__AccompanyList-sc-lvz8r6-0 dkymTH">
				<div class="AccompanyWebCard__Wrap-sc-ws5mjw-0 cxduOO">

					<div class="AccompanyWebCard__Header-sc-ws5mjw-5 iJlJaU">

						<div class="AccompanyWebCard__ProfileWrap-sc-ws5mjw-6 gNWBdG">
							<img
								src="https://tripsoda.s3.ap-northeast-2.amazonaws.com/prod/member/1681209401892-1"
								class="AccompanyWebCard__ProfilePhoto-sc-ws5mjw-7 hzLcgu">
							<div class="AccompanyWebCard__ProfileTextWrap-sc-ws5mjw-8 ijpLct">
								<p
									color="#000000"
									class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 jmSbLA">여행뿌수자</p>
								<div class="AccompanyWebCard__HeaderTextWrap-sc-ws5mjw-4 dKvksB">
									<p
										color="#008ff6"
										class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 gGpJuG">20대</p>
									<div color="#008ff6" class="AccompanyWebCard__Circle-sc-ws5mjw-1 bdAMWe"></div>
									<p
										color="#008ff6"
										class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 gGpJuG">남성</p>
								</div>
							</div>
						</div>

						<div class="AccompanyWebCard__GrayLine-sc-ws5mjw-2 fAUDUm"></div>

						<div class="AccompanyWebCard__DateWrap-sc-ws5mjw-9 fdRVsr">
							<div class="AccompanyWebCard__DateHoveredWrap-sc-ws5mjw-10 hWLPgS"></div>
							<div class="AccompanyWebCard__DateTitleWrap-sc-ws5mjw-11 kdZjQK">
								<img
									src="/images/sub/accompany/card/accompany_gray_calendar.png"
									class="AccompanyWebCard__DateIcon-sc-ws5mjw-12 ilUDog">
								<p class="AccompanyWebCard__DateTitle-sc-ws5mjw-13 iBlyRM">여행기간</p>
							</div>
							<div class="AccompanyWebCard__HeaderTextWrap-sc-ws5mjw-4 dKvksz">
								<p
									color="#00CE7C"
									class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 iVfuBW">4일</p>
								<div color="#00CE7C" class="AccompanyWebCard__Circle-sc-ws5mjw-1 mKoaj"></div>
								<p
									color="#00CE7C"
									class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 fblYhH">04/14 - 04/17</p>
							</div>
						</div>

					</div>

					<div class="AccompanyWebCard__ThumbnailWrap-sc-ws5mjw-14 ctsFtI">
						<img
							src="https://tripsoda.s3.ap-northeast-2.amazonaws.com/prod/accompany/1681209598075-2"
							class="AccompanyWebCard__Thumbnail-sc-ws5mjw-15 FemVM">

						<div class="AccompanyWebCard__LocationWrap-sc-ws5mjw-16 heALwI">
							<div class="AccompanyWebCard__LocationIcon-sc-ws5mjw-17 lmqiXK">
								<svg
									width="13"
									height="17"
									viewbox="0 0 13 17"
									fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M12.7244 7.11371C12.7244 10.6866 6.49995 16.3557 6.49995 16.3557C6.49995 16.3557 0.275513 10.6866 0.275513 7.11371C0.275513 3.54077 3.06229 0.644341 6.49995 0.644341C9.93761 0.644341 12.7244 3.54077 12.7244 7.11371Z"
										fill="#008FF6"></path>
									<ellipse cx="6.50063" cy="6.40462" rx="2.81106" ry="2.81106" fill="#fff"></ellipse>
								</svg>
							</div>
							<p color="#008FF6" class="AccompanyWebCard__LocationText-sc-ws5mjw-18 kPceoN">제주도</p>
						</div>
						<!-- hear -->
						<div class="AccompanyWebCard__DetailBottomWrap-sc-ws5mjw-19 LuXMO">
							<div class="AccompanyWebCard__RecruitWrap-sc-ws5mjw-20 jfSGGP">
								<p class="AccompanyWebCard__RecruitText-sc-ws5mjw-21 YIYAY">모집중</p>
								<div color="#00CE7C" class="AccompanyWebCard__Circle-sc-ws5mjw-1 hMauwG"></div>
								<p class="AccompanyWebCard__RecruitText-sc-ws5mjw-21 YIYAY">2명</p>
							</div>
							<div class="AccompanyWebCard__OptionWrap-sc-ws5mjw-22 jQFFHg">
								<div class="AccompanyWebCard__OptionIconWrap-sc-ws5mjw-23 lhlIsf">
									<img
										src="/images/sub/accompany/card/accompany_white_eye.png"
										class="AccompanyWebCard__OptionIcon-sc-ws5mjw-24 fbgSqP">
									<p class="AccompanyWebCard__OptionText-sc-ws5mjw-25 gOZZpD">36</p>
								</div>
								<div class="AccompanyWebCard__OptionIconWrap-sc-ws5mjw-23 lhlIsf">
									<img
										src="/images/sub/accompany/card/accompany_white_message.png"
										class="AccompanyWebCard__OptionIcon-sc-ws5mjw-24 fbgSqP">
									<p class="AccompanyWebCard__OptionText-sc-ws5mjw-25 gOZZpD">0</p>
								</div>
								<div class="AccompanyWebCard__OptionIconWrap-sc-ws5mjw-23 ccCSmm">
									<img
										src="/images/sub/accompany/card/accompany_white_plane.png"
										class="AccompanyWebCard__OptionIcon-sc-ws5mjw-24 fbgSqP">
									<p class="AccompanyWebCard__OptionText-sc-ws5mjw-25 gOZZpD">0</p>
								</div>
							</div>
						</div>
						<!-- hear -->
					</div>

					<div class="AccompanyWebCard__TextWrap-sc-ws5mjw-26 eAbKRa">
						<p class="AccompanyWebCard__Title-sc-ws5mjw-27 kVTEEb">재밌게 여행 뿌술분 있나요?</p>
						<p class="AccompanyWebCard__Description-sc-ws5mjw-28 ckjOSI">
							렌트 완료고, 제주 프리패스 48시간이나 72시간 구입해서 여행 다닐 예정입니다. 요트, 낚시, 카페, 베이커리, 수목원, 민속촌, 서커스 등
							하루는 성산 일출봉 일출 보러 올라 갈 거에요! (강제 등반 안 함) 티키타카 좋고, 에너지 활동 뿜뿜하신 분 모십니다~ 저녁식사 대접, 인생
							샷 영접 해드려요~
						</p>
					</div>

				</div>
				



				<!-------------------------------------------------------------------------------------------------------------------------->
				<div class="AccompanyWebCard__Wrap-sc-ws5mjw-0 cxduOO">

					<div class="AccompanyWebCard__Header-sc-ws5mjw-5 iJlJaU">

						<div class="AccompanyWebCard__ProfileWrap-sc-ws5mjw-6 gNWBdG">
							<img
								src="https://tripsoda.s3.ap-northeast-2.amazonaws.com/prod/member/1681209401892-1"
								class="AccompanyWebCard__ProfilePhoto-sc-ws5mjw-7 hzLcgu">
							<div class="AccompanyWebCard__ProfileTextWrap-sc-ws5mjw-8 ijpLct">
								<p
									color="#000000"
									class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 jmSbLA">여행뿌수자</p>
								<div class="AccompanyWebCard__HeaderTextWrap-sc-ws5mjw-4 dKvksB">
									<p
										color="#008ff6"
										class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 gGpJuG">20대</p>
									<div color="#008ff6" class="AccompanyWebCard__Circle-sc-ws5mjw-1 bdAMWe"></div>
									<p
										color="#008ff6"
										class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 gGpJuG">남성</p>
								</div>
							</div>
						</div>

						<div class="AccompanyWebCard__GrayLine-sc-ws5mjw-2 fAUDUm"></div>

						<div class="AccompanyWebCard__DateWrap-sc-ws5mjw-9 fdRVsr">
							<div class="AccompanyWebCard__DateHoveredWrap-sc-ws5mjw-10 hWLPgS"></div>
							<div class="AccompanyWebCard__DateTitleWrap-sc-ws5mjw-11 kdZjQK">
								<img
									src="/images/sub/accompany/card/accompany_gray_calendar.png"
									class="AccompanyWebCard__DateIcon-sc-ws5mjw-12 ilUDog">
								<p class="AccompanyWebCard__DateTitle-sc-ws5mjw-13 iBlyRM">여행기간</p>
							</div>
							<div class="AccompanyWebCard__HeaderTextWrap-sc-ws5mjw-4 dKvksz">
								<p
									color="#00CE7C"
									class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 iVfuBW">4일</p>
								<div color="#00CE7C" class="AccompanyWebCard__Circle-sc-ws5mjw-1 mKoaj"></div>
								<p
									color="#00CE7C"
									class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 fblYhH">04/14 - 04/17</p>
							</div>
						</div>

					</div>

					<div class="AccompanyWebCard__ThumbnailWrap-sc-ws5mjw-14 ctsFtI">
						<img
							src="https://tripsoda.s3.ap-northeast-2.amazonaws.com/prod/accompany/1681209598075-2"
							class="AccompanyWebCard__Thumbnail-sc-ws5mjw-15 FemVM">

						<div class="AccompanyWebCard__LocationWrap-sc-ws5mjw-16 heALwI">
							<div class="AccompanyWebCard__LocationIcon-sc-ws5mjw-17 lmqiXK">
								<svg
									width="13"
									height="17"
									viewbox="0 0 13 17"
									fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M12.7244 7.11371C12.7244 10.6866 6.49995 16.3557 6.49995 16.3557C6.49995 16.3557 0.275513 10.6866 0.275513 7.11371C0.275513 3.54077 3.06229 0.644341 6.49995 0.644341C9.93761 0.644341 12.7244 3.54077 12.7244 7.11371Z"
										fill="#008FF6"></path>
									<ellipse cx="6.50063" cy="6.40462" rx="2.81106" ry="2.81106" fill="#fff"></ellipse>
								</svg>
							</div>
							<p color="#008FF6" class="AccompanyWebCard__LocationText-sc-ws5mjw-18 kPceoN">제주도</p>
						</div>

						<div class="AccompanyWebCard__DetailBottomWrap-sc-ws5mjw-19 LuXMO">
							<div class="AccompanyWebCard__RecruitWrap-sc-ws5mjw-20 jfSGGP">
								<p class="AccompanyWebCard__RecruitText-sc-ws5mjw-21 YIYAY">모집중</p>
								<div color="#00CE7C" class="AccompanyWebCard__Circle-sc-ws5mjw-1 hMauwG"></div>
								<p class="AccompanyWebCard__RecruitText-sc-ws5mjw-21 YIYAY">2명</p>
							</div>
							<div class="AccompanyWebCard__OptionWrap-sc-ws5mjw-22 jQFFHg">
								<div class="AccompanyWebCard__OptionIconWrap-sc-ws5mjw-23 lhlIsf">
									<img
										src="/images/sub/accompany/card/accompany_white_eye.png"
										class="AccompanyWebCard__OptionIcon-sc-ws5mjw-24 fbgSqP">
									<p class="AccompanyWebCard__OptionText-sc-ws5mjw-25 gOZZpD">36</p>
								</div>
								<div class="AccompanyWebCard__OptionIconWrap-sc-ws5mjw-23 lhlIsf">
									<img
										src="/images/sub/accompany/card/accompany_white_message.png"
										class="AccompanyWebCard__OptionIcon-sc-ws5mjw-24 fbgSqP">
									<p class="AccompanyWebCard__OptionText-sc-ws5mjw-25 gOZZpD">0</p>
								</div>
								<div class="AccompanyWebCard__OptionIconWrap-sc-ws5mjw-23 ccCSmm">
									<img
										src="/images/sub/accompany/card/accompany_white_plane.png"
										class="AccompanyWebCard__OptionIcon-sc-ws5mjw-24 fbgSqP">
									<p class="AccompanyWebCard__OptionText-sc-ws5mjw-25 gOZZpD">0</p>
								</div>
							</div>
						</div>
					</div>

					<div class="AccompanyWebCard__TextWrap-sc-ws5mjw-26 eAbKRa">
						<p class="AccompanyWebCard__Title-sc-ws5mjw-27 kVTEEb">수정완료 이거 먹나?</p>
						<p class="AccompanyWebCard__Description-sc-ws5mjw-28 ckjOSI">
							렌트 완료고, 제주 프리패스 48시간이나 72시간 구입해서 여행 다닐 예정입니다. 요트, 낚시, 카페, 베이커리, 수목원, 민속촌, 서커스 등
							하루는 성산 일출봉 일출 보러 올라 갈 거에요! (강제 등반 안 함) 티키타카 좋고, 에너지 활동 뿜뿜하신 분 모십니다~ 저녁식사 대접, 인생
							샷 영접 해드려요~
						</p>
					</div>

				</div>

				<!-------------------------------------------------------------------------->
				<!-------------------------------------------------------------------------------------------------------------------------->
				<div class="AccompanyWebCard__Wrap-sc-ws5mjw-0 cxduOO">

					<div class="AccompanyWebCard__Header-sc-ws5mjw-5 iJlJaU">

						<div class="AccompanyWebCard__ProfileWrap-sc-ws5mjw-6 gNWBdG">
							<img
								src="https://tripsoda.s3.ap-northeast-2.amazonaws.com/prod/member/1681209401892-1"
								class="AccompanyWebCard__ProfilePhoto-sc-ws5mjw-7 hzLcgu">
							<div class="AccompanyWebCard__ProfileTextWrap-sc-ws5mjw-8 ijpLct">
								<p
									color="#000000"
									class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 jmSbLA">여행뿌수자</p>
								<div class="AccompanyWebCard__HeaderTextWrap-sc-ws5mjw-4 dKvksB">
									<p
										color="#008ff6"
										class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 gGpJuG">20대</p>
									<div color="#008ff6" class="AccompanyWebCard__Circle-sc-ws5mjw-1 bdAMWe"></div>
									<p
										color="#008ff6"
										class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 gGpJuG">남성</p>
								</div>
							</div>
						</div>

						<div class="AccompanyWebCard__GrayLine-sc-ws5mjw-2 fAUDUm"></div>

						<div class="AccompanyWebCard__DateWrap-sc-ws5mjw-9 fdRVsr">
							<div class="AccompanyWebCard__DateHoveredWrap-sc-ws5mjw-10 hWLPgS"></div>
							<div class="AccompanyWebCard__DateTitleWrap-sc-ws5mjw-11 kdZjQK">
								<img
									src="/images/sub/accompany/card/accompany_gray_calendar.png"
									class="AccompanyWebCard__DateIcon-sc-ws5mjw-12 ilUDog">
								<p class="AccompanyWebCard__DateTitle-sc-ws5mjw-13 iBlyRM">여행기간</p>
							</div>
							<div class="AccompanyWebCard__HeaderTextWrap-sc-ws5mjw-4 dKvksz">
								<p
									color="#00CE7C"
									class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 iVfuBW">4일</p>
								<div color="#00CE7C" class="AccompanyWebCard__Circle-sc-ws5mjw-1 mKoaj"></div>
								<p
									color="#00CE7C"
									class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 fblYhH">04/14 - 04/17</p>
							</div>
						</div>

					</div>

					<div class="AccompanyWebCard__ThumbnailWrap-sc-ws5mjw-14 ctsFtI">
						<img
							src="https://tripsoda.s3.ap-northeast-2.amazonaws.com/prod/accompany/1681209598075-2"
							class="AccompanyWebCard__Thumbnail-sc-ws5mjw-15 FemVM">

						<div class="AccompanyWebCard__LocationWrap-sc-ws5mjw-16 heALwI">
							<div class="AccompanyWebCard__LocationIcon-sc-ws5mjw-17 lmqiXK">
								<svg
									width="13"
									height="17"
									viewbox="0 0 13 17"
									fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M12.7244 7.11371C12.7244 10.6866 6.49995 16.3557 6.49995 16.3557C6.49995 16.3557 0.275513 10.6866 0.275513 7.11371C0.275513 3.54077 3.06229 0.644341 6.49995 0.644341C9.93761 0.644341 12.7244 3.54077 12.7244 7.11371Z"
										fill="#008FF6"></path>
									<ellipse cx="6.50063" cy="6.40462" rx="2.81106" ry="2.81106" fill="#fff"></ellipse>
								</svg>
							</div>
							<p color="#008FF6" class="AccompanyWebCard__LocationText-sc-ws5mjw-18 kPceoN">제주도</p>
						</div>

						<div class="AccompanyWebCard__DetailBottomWrap-sc-ws5mjw-19 LuXMO">
							<div class="AccompanyWebCard__RecruitWrap-sc-ws5mjw-20 jfSGGP">
								<p class="AccompanyWebCard__RecruitText-sc-ws5mjw-21 YIYAY">모집중</p>
								<div color="#00CE7C" class="AccompanyWebCard__Circle-sc-ws5mjw-1 hMauwG"></div>
								<p class="AccompanyWebCard__RecruitText-sc-ws5mjw-21 YIYAY">2명</p>
							</div>
							<div class="AccompanyWebCard__OptionWrap-sc-ws5mjw-22 jQFFHg">
								<div class="AccompanyWebCard__OptionIconWrap-sc-ws5mjw-23 lhlIsf">
									<img
										src="/images/sub/accompany/card/accompany_white_eye.png"
										class="AccompanyWebCard__OptionIcon-sc-ws5mjw-24 fbgSqP">
									<p class="AccompanyWebCard__OptionText-sc-ws5mjw-25 gOZZpD">36</p>
								</div>
								<div class="AccompanyWebCard__OptionIconWrap-sc-ws5mjw-23 lhlIsf">
									<img
										src="/images/sub/accompany/card/accompany_white_message.png"
										class="AccompanyWebCard__OptionIcon-sc-ws5mjw-24 fbgSqP">
									<p class="AccompanyWebCard__OptionText-sc-ws5mjw-25 gOZZpD">0</p>
								</div>
								<div class="AccompanyWebCard__OptionIconWrap-sc-ws5mjw-23 ccCSmm">
									<img
										src="/images/sub/accompany/card/accompany_white_plane.png"
										class="AccompanyWebCard__OptionIcon-sc-ws5mjw-24 fbgSqP">
									<p class="AccompanyWebCard__OptionText-sc-ws5mjw-25 gOZZpD">0</p>
								</div>
							</div>
						</div>
					</div>

					<div class="AccompanyWebCard__TextWrap-sc-ws5mjw-26 eAbKRa">
						<p class="AccompanyWebCard__Title-sc-ws5mjw-27 kVTEEb">재밌게 여행 뿌술분 있나요?</p>
						<p class="AccompanyWebCard__Description-sc-ws5mjw-28 ckjOSI">
							렌트 완료고, 제주 프리패스 48시간이나 72시간 구입해서 여행 다닐 예정입니다. 요트, 낚시, 카페, 베이커리, 수목원, 민속촌, 서커스 등
							하루는 성산 일출봉 일출 보러 올라 갈 거에요! (강제 등반 안 함) 티키타카 좋고, 에너지 활동 뿜뿜하신 분 모십니다~ 저녁식사 대접, 인생
							샷 영접 해드려요~
						</p>
					</div>

				</div>

				<!-------------------------------------------------------------------------------------------------------------------------->
				<div class="AccompanyWebCard__Wrap-sc-ws5mjw-0 cxduOO">

					<div class="AccompanyWebCard__Header-sc-ws5mjw-5 iJlJaU">

						<div class="AccompanyWebCard__ProfileWrap-sc-ws5mjw-6 gNWBdG">
							<img
								src="https://tripsoda.s3.ap-northeast-2.amazonaws.com/prod/member/1681209401892-1"
								class="AccompanyWebCard__ProfilePhoto-sc-ws5mjw-7 hzLcgu">
							<div class="AccompanyWebCard__ProfileTextWrap-sc-ws5mjw-8 ijpLct">
								<p
									color="#000000"
									class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 jmSbLA">여행뿌수자</p>
								<div class="AccompanyWebCard__HeaderTextWrap-sc-ws5mjw-4 dKvksB">
									<p
										color="#008ff6"
										class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 gGpJuG">20대</p>
									<div color="#008ff6" class="AccompanyWebCard__Circle-sc-ws5mjw-1 bdAMWe"></div>
									<p
										color="#008ff6"
										class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 gGpJuG">남성</p>
								</div>
							</div>
						</div>

						<div class="AccompanyWebCard__GrayLine-sc-ws5mjw-2 fAUDUm"></div>

						<div class="AccompanyWebCard__DateWrap-sc-ws5mjw-9 fdRVsr">
							<div class="AccompanyWebCard__DateHoveredWrap-sc-ws5mjw-10 hWLPgS"></div>
							<div class="AccompanyWebCard__DateTitleWrap-sc-ws5mjw-11 kdZjQK">
								<img
									src="/images/sub/accompany/card/accompany_gray_calendar.png"
									class="AccompanyWebCard__DateIcon-sc-ws5mjw-12 ilUDog">
								<p class="AccompanyWebCard__DateTitle-sc-ws5mjw-13 iBlyRM">여행기간</p>
							</div>
							<div class="AccompanyWebCard__HeaderTextWrap-sc-ws5mjw-4 dKvksz">
								<p
									color="#00CE7C"
									class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 iVfuBW">4일</p>
								<div color="#00CE7C" class="AccompanyWebCard__Circle-sc-ws5mjw-1 mKoaj"></div>
								<p
									color="#00CE7C"
									class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 fblYhH">04/14 - 04/17</p>
							</div>
						</div>

					</div>

					<div class="AccompanyWebCard__ThumbnailWrap-sc-ws5mjw-14 ctsFtI">
						<img
							src="https://tripsoda.s3.ap-northeast-2.amazonaws.com/prod/accompany/1681209598075-2"
							class="AccompanyWebCard__Thumbnail-sc-ws5mjw-15 FemVM">

						<div class="AccompanyWebCard__LocationWrap-sc-ws5mjw-16 heALwI">
							<div class="AccompanyWebCard__LocationIcon-sc-ws5mjw-17 lmqiXK">
								<svg
									width="13"
									height="17"
									viewbox="0 0 13 17"
									fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M12.7244 7.11371C12.7244 10.6866 6.49995 16.3557 6.49995 16.3557C6.49995 16.3557 0.275513 10.6866 0.275513 7.11371C0.275513 3.54077 3.06229 0.644341 6.49995 0.644341C9.93761 0.644341 12.7244 3.54077 12.7244 7.11371Z"
										fill="#008FF6"></path>
									<ellipse cx="6.50063" cy="6.40462" rx="2.81106" ry="2.81106" fill="#fff"></ellipse>
								</svg>
							</div>
							<p color="#008FF6" class="AccompanyWebCard__LocationText-sc-ws5mjw-18 kPceoN">제주도</p>
						</div>

						<div class="AccompanyWebCard__DetailBottomWrap-sc-ws5mjw-19 LuXMO">
							<div class="AccompanyWebCard__RecruitWrap-sc-ws5mjw-20 jfSGGP">
								<p class="AccompanyWebCard__RecruitText-sc-ws5mjw-21 YIYAY">모집중</p>
								<div color="#00CE7C" class="AccompanyWebCard__Circle-sc-ws5mjw-1 hMauwG"></div>
								<p class="AccompanyWebCard__RecruitText-sc-ws5mjw-21 YIYAY">2명</p>
							</div>
							<div class="AccompanyWebCard__OptionWrap-sc-ws5mjw-22 jQFFHg">
								<div class="AccompanyWebCard__OptionIconWrap-sc-ws5mjw-23 lhlIsf">
									<img
										src="/images/sub/accompany/card/accompany_white_eye.png"
										class="AccompanyWebCard__OptionIcon-sc-ws5mjw-24 fbgSqP">
									<p class="AccompanyWebCard__OptionText-sc-ws5mjw-25 gOZZpD">36</p>
								</div>
								<div class="AccompanyWebCard__OptionIconWrap-sc-ws5mjw-23 lhlIsf">
									<img
										src="/images/sub/accompany/card/accompany_white_message.png"
										class="AccompanyWebCard__OptionIcon-sc-ws5mjw-24 fbgSqP">
									<p class="AccompanyWebCard__OptionText-sc-ws5mjw-25 gOZZpD">0</p>
								</div>
								<div class="AccompanyWebCard__OptionIconWrap-sc-ws5mjw-23 ccCSmm">
									<img
										src="/images/sub/accompany/card/accompany_white_plane.png"
										class="AccompanyWebCard__OptionIcon-sc-ws5mjw-24 fbgSqP">
									<p class="AccompanyWebCard__OptionText-sc-ws5mjw-25 gOZZpD">0</p>
								</div>
							</div>
						</div>
					</div>

					<div class="AccompanyWebCard__TextWrap-sc-ws5mjw-26 eAbKRa">
						<p class="AccompanyWebCard__Title-sc-ws5mjw-27 kVTEEb">재밌게 여행 뿌술분 있나요?</p>
						<p class="AccompanyWebCard__Description-sc-ws5mjw-28 ckjOSI">
							렌트 완료고, 제주 프리패스 48시간이나 72시간 구입해서 여행 다닐 예정입니다. 요트, 낚시, 카페, 베이커리, 수목원, 민속촌, 서커스 등
							하루는 성산 일출봉 일출 보러 올라 갈 거에요! (강제 등반 안 함) 티키타카 좋고, 에너지 활동 뿜뿜하신 분 모십니다~ 저녁식사 대접, 인생
							샷 영접 해드려요~
						</p>
					</div>

				</div>
				<!-------------------------------------------------------------------------------------------------------------------------->
				<div class="AccompanyWebCard__Wrap-sc-ws5mjw-0 cxduOO">

					<div class="AccompanyWebCard__Header-sc-ws5mjw-5 iJlJaU">

						<div class="AccompanyWebCard__ProfileWrap-sc-ws5mjw-6 gNWBdG">
							<img
								src="https://tripsoda.s3.ap-northeast-2.amazonaws.com/prod/member/1681209401892-1"
								class="AccompanyWebCard__ProfilePhoto-sc-ws5mjw-7 hzLcgu">
							<div class="AccompanyWebCard__ProfileTextWrap-sc-ws5mjw-8 ijpLct">
								<p
									color="#000000"
									class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 jmSbLA">여행뿌수자</p>
								<div class="AccompanyWebCard__HeaderTextWrap-sc-ws5mjw-4 dKvksB">
									<p
										color="#008ff6"
										class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 gGpJuG">20대</p>
									<div color="#008ff6" class="AccompanyWebCard__Circle-sc-ws5mjw-1 bdAMWe"></div>
									<p
										color="#008ff6"
										class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 gGpJuG">남성</p>
								</div>
							</div>
						</div>

						<div class="AccompanyWebCard__GrayLine-sc-ws5mjw-2 fAUDUm"></div>

						<div class="AccompanyWebCard__DateWrap-sc-ws5mjw-9 fdRVsr">
							<div class="AccompanyWebCard__DateHoveredWrap-sc-ws5mjw-10 hWLPgS"></div>
							<div class="AccompanyWebCard__DateTitleWrap-sc-ws5mjw-11 kdZjQK">
								<img
									src="/images/sub/accompany/card/accompany_gray_calendar.png"
									class="AccompanyWebCard__DateIcon-sc-ws5mjw-12 ilUDog">
								<p class="AccompanyWebCard__DateTitle-sc-ws5mjw-13 iBlyRM">여행기간</p>
							</div>
							<div class="AccompanyWebCard__HeaderTextWrap-sc-ws5mjw-4 dKvksz">
								<p
									color="#00CE7C"
									class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 iVfuBW">4일</p>
								<div color="#00CE7C" class="AccompanyWebCard__Circle-sc-ws5mjw-1 mKoaj"></div>
								<p
									color="#00CE7C"
									class="AccompanyWebCard__HeaderTextNormal-sc-ws5mjw-3 fblYhH">04/14 - 04/17</p>
							</div>
						</div>

					</div>

					<div class="AccompanyWebCard__ThumbnailWrap-sc-ws5mjw-14 ctsFtI">
						<img
							src="https://tripsoda.s3.ap-northeast-2.amazonaws.com/prod/accompany/1681209598075-2"
							class="AccompanyWebCard__Thumbnail-sc-ws5mjw-15 FemVM">

						<div class="AccompanyWebCard__LocationWrap-sc-ws5mjw-16 heALwI">
							<div class="AccompanyWebCard__LocationIcon-sc-ws5mjw-17 lmqiXK">
								<svg
									width="13"
									height="17"
									viewbox="0 0 13 17"
									fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M12.7244 7.11371C12.7244 10.6866 6.49995 16.3557 6.49995 16.3557C6.49995 16.3557 0.275513 10.6866 0.275513 7.11371C0.275513 3.54077 3.06229 0.644341 6.49995 0.644341C9.93761 0.644341 12.7244 3.54077 12.7244 7.11371Z"
										fill="#008FF6"></path>
									<ellipse cx="6.50063" cy="6.40462" rx="2.81106" ry="2.81106" fill="#fff"></ellipse>
								</svg>
							</div>
							<p color="#008FF6" class="AccompanyWebCard__LocationText-sc-ws5mjw-18 kPceoN">제주도</p>
						</div>

						<div class="AccompanyWebCard__DetailBottomWrap-sc-ws5mjw-19 LuXMO">
							<div class="AccompanyWebCard__RecruitWrap-sc-ws5mjw-20 jfSGGP">
								<p class="AccompanyWebCard__RecruitText-sc-ws5mjw-21 YIYAY">모집중</p>
								<div color="#00CE7C" class="AccompanyWebCard__Circle-sc-ws5mjw-1 hMauwG"></div>
								<p class="AccompanyWebCard__RecruitText-sc-ws5mjw-21 YIYAY">2명</p>
							</div>
							<div class="AccompanyWebCard__OptionWrap-sc-ws5mjw-22 jQFFHg">
								<div class="AccompanyWebCard__OptionIconWrap-sc-ws5mjw-23 lhlIsf">
									<img
										src="/images/sub/accompany/card/accompany_white_eye.png"
										class="AccompanyWebCard__OptionIcon-sc-ws5mjw-24 fbgSqP">
									<p class="AccompanyWebCard__OptionText-sc-ws5mjw-25 gOZZpD">36</p>
								</div>
								<div class="AccompanyWebCard__OptionIconWrap-sc-ws5mjw-23 lhlIsf">
									<img
										src="/images/sub/accompany/card/accompany_white_message.png"
										class="AccompanyWebCard__OptionIcon-sc-ws5mjw-24 fbgSqP">
									<p class="AccompanyWebCard__OptionText-sc-ws5mjw-25 gOZZpD">0</p>
								</div>
								<div class="AccompanyWebCard__OptionIconWrap-sc-ws5mjw-23 ccCSmm">
									<img
										src="/images/sub/accompany/card/accompany_white_plane.png"
										class="AccompanyWebCard__OptionIcon-sc-ws5mjw-24 fbgSqP">
									<p class="AccompanyWebCard__OptionText-sc-ws5mjw-25 gOZZpD">0</p>
								</div>
							</div>
						</div>
					</div>

					<div class="AccompanyWebCard__TextWrap-sc-ws5mjw-26 eAbKRa">
						<p class="AccompanyWebCard__Title-sc-ws5mjw-27 kVTEEb">재밌게 여행 뿌술분 있나요?</p>
						<p class="AccompanyWebCard__Description-sc-ws5mjw-28 ckjOSI" >
							렌트 완료고, 제주 프리패스 48시간이나 72시간 구입해서 여행 다닐 예정입니다. 요트, 낚시, 카페, 베이커리, 수목원, 민속촌, 서커스 등
							하루는 성산 일출봉 일출 보러 올라 갈 거에요! (강제 등반 안 함) 티키타카 좋고, 에너지 활동 뿜뿜하신 분 모십니다~ 저녁식사 대접, 인생
							샷 영접 해드려요~
						</p>
					</div>

				</div>
				<!-- -------------------------------------------------------------------------------------------------------------------------- -->

				<script>
					$(".cxduOO").hover(function() {
					  $(this).find(".FemVM").css("transform", "scale(1.2)");
					  $(this).find(".ctsFtI").css("overflow", "hidden");
					  $(this).find(".heALwI").css("background", "rgb(0, 143, 246)");
					  $(this).find(".heALwI, .kPceoN").css("color", "white");
					}, function() {
					  $(this).find(".FemVM").css("transform", "");
					  $(this).find(".ctsFtI").css("overflow", "");
					  $(this).find(".heALwI").css("background", "");
					  $(this).find(".heALwI, .kPceoN").css("color", "");
					});
				  </script>
				<!-------------------------------------------------------------------------->

			</ul>

		</section>
		

		
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
</div>
	<jsp:include page="../member/mypageSidebar.jsp"/>
	
	    </div>		
  	</div>
	</section>
  	</div><!-- element wrapper ends -->
	
		<!-- 푸터바 포함 -->
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>