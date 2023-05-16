<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>동행상세게시글</title>

    
<style >
    body * {
        font-family: 'TheJamsil';
    }
    p {
        margin-bottom: 0rem;
    }
    /*메인div정렬*/
    div {
        margin: 0;
        padding: 0;
        border: 0;
        font-style: normal;
    }
    .UvObH {
        padding: calc(140px + var(--app-padding-top)) 0 0;
        width: 1200px;
        margin: 0 auto;
        position: relative;
        box-sizing: border-box;
        min-height: calc(100vh - var(--app-padding-bottom) - var(--app-padding-top));
    }
    main {
        display: block;
    }
    /*메인이미지*/
    .buQzNq {
        position: relative;
        width: 1200px;
        margin: 0 auto;
        border: 0;
    }
    .buQzNq > img:first-child {
        width: 100%;
        height: 400px;
        border-radius: 8px;
        margin: 40px 0;
    }
    img {
        border-style: none;
    }
    img {
        vertical-align: top;
        object-fit: cover;
    }
    /*전체내용영역*/
    .jLghAG {
        padding: 70px 0 250px;
        display: flex;
        -webkit-box-pack: justify;
        justify-content: space-between;
    }
    /*1단.본문*/
    .birXOP {
        max-width: 800px;
        width: 800px;
        margin-right: 80px;
    }
    .rgrEj {
        margin-bottom: 65px;
    }
    /*제목*/
    .gMhobB {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
    }
    .gMhobB > p {
        width: 100%;
        overflow: hidden;
        font-weight: 500;
        font-size: 24px;
        line-height: 1.5em;
        text-overflow: ellipsis;
    }
    /*모집box*/
    .ioZvtx {
        margin: 24px 0 30px;
    }
    .ihbYE {
        border: 1px solid rgb(233, 233, 233);
        border-radius: 5px;
        padding: 20px 30px;
        font-size: 16px;
        font-weight: 400;
        margin-top: 40px;
    }
    /*인원*/
    .ihbYE {
        border: 1px solid rgb(233, 233, 233);
        border-radius: 5px;
        padding: 20px 30px;
        font-size: 16px;
        font-weight: 400;
        margin-top: 40px;
    }
    .kosINv {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
    }
    .kosINv p {
        color: rgb(106, 106, 106);
        margin-bottom: 0rem;
    }
    .kosINv span {
        margin-left: 10px;
    }
    /*인원*/
    .eBgxXA {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        margin-left: 10px;
    }
    .eBgxXA p {
        color: rgb(106, 106, 106);
    }
    .eBgxXA span {
        margin-left: 10px;
    }
    /*날짜*/
    .fVZoIM {
        margin-top: 10px;
    }
    element.style {
        display: inline-block;
    }
    .kosINv span {
        margin-left: 10px;
    }
    .fVZoIM {
        margin-top: 10px;
    }
    /*2단태그*/
    .ioZvtx {
        margin: 24px 0 30px;
    }
    
    /*첫번째줄*/
    .klFqPP {
        display: flex;
        align-items: flex-start;
    }
    .klFqPP:first-child > p {
        margin-bottom: 10px;
    }
    .klFqPP > p > span {
        color: #00ce7c;
    }
    .ioZvtx > div > p {
        font-size: 15px;
        color: rgb(37, 37, 37);
    }
    .klFqPP > p {
        margin-left: 10px;
    }
    
    /*두번째줄*/
    .ioZvtx > div > p {
        font-size: 15px;
        color: rgb(37, 37, 37);
    }
    .ioZvtx > div > p {
        font-size: 15px;
        color: rgb(37, 37, 37);
    }
    /*본문내용*/
    .jbdwEb {
        margin-top: 31px;
        font-size: 15px;
        line-height: 1.5em;
        min-height: 100px;
        font-family: sans-serif;
        word-break: break-all;
        white-space: pre-wrap;
    }
    p {
        display: block;
        margin-block-start: 1em;
        margin-block-end: 1em;
        margin-inline-start: 0;
        margin-inline-end: 0;
    }
    /*태그*/
    p {
        margin: 0;
        padding: 0;
        border: 0;
        font-style: normal;
    }
    .Ewzzt > div {
        display: flex;
        width: max-content;
    }
    .cdLLix > div {
        display: flex;
        width: max-content;
    }
    .cFzGDF {
        display: flex;
        color: rgb(106, 106, 106);
        font-size: 13px;
        font-weight: 500;
        background-color: rgb(245, 245, 245);
        border-radius: 3px;
        padding: 4px 7px;
    }
    .ekdtxk {
        user-select: none;
        -webkit-user-drag: none;
        margin-bottom: 0rem;
    }
    .cFzGDF > :nth-child(n+2) {
        margin-left: 4px;
    }

    /*n번째태그*/
    .cdLLix > div > :nth-child(n+2) {
        margin-left: 8px;
    }
    /*작성날짜*/
    .xqeY {
        margin-top: 10px;
        font-size: 13px;
        color: rgb(154, 154, 154);
        display: flex;
    }
    .iLlzSN {
        user-select: none;
        -webkit-user-drag: none;
        margin-bottom: 0rem;
    }
    /*신고하기*/
    .xqeY > :nth-child(n+2) {
        margin-left: 10px;
    }
    .xqeY button {
        font-size: 13px;
        color: rgb(154, 154, 154);
    }
    .laOqNb {
        text-decoration: underline;
    }
    button {
        font-family: inherit;
        line-height: 1.15;
        margin: 0;
        border: 0;
        padding: 0;
        cursor: pointer;
        outline: none;
        vertical-align: top;
        background: unset;
    }
    /*댓글창*/
    .eGJmXC {
        display: flex;
        position: relative;
        flex-direction: column;
        width: 100%;
        height: auto;
        margin-top: 24px;
    }
    .goDHMI {
        display: flex;
        position: relative;
        width: 100%;
        min-height: 48px;
        line-height: 48px;
        -webkit-box-align: center;
        align-items: center;
        box-sizing: border-box;
        border: 1px solid rgb(220, 220, 220);
        background-color: white;
        border-radius: 10px;
        overflow: hidden;
    }
    .dMqEYk {
        display: block;
        overflow: auto;
        width: 85%;
        font-weight: 400;
        font-size: 13px;
        padding: 12px;
        outline: none;
        border: none;
        line-height: 1.15;
        resize: none;
    }
    textarea {
        font-family: inherit;
        line-height: 1.15;
        margin: 0;
        position: relative;
        resize: none;
        box-sizing: border-box;
        position: relative;
        resize: none;
        appearance: none;
    }
    /*게시버튼*/
    .hnSauy {
        display: block;
        position: absolute;
        overflow: hidden;
        width: max-content;
        height: 100%;
        align-self: center;
        text-align: center;
        font-weight: 400;
        font-size: 14px;
        color: rgb(0, 206, 124);
        padding: 0 12px;
        right: 0;
    }
    /*사용자영역*/
    .bdoziM {
        width: 320px;
    }
    .profile_section {
        border: 1px solid #e9e9e9;
        padding: 20px 19px;
        border-radius: 4px;
    }
    /*사용자 푸로필*/
    .hAClzB > :first-child {
        margin-top: 0;
    }
    .profile_section .area_top {
        display: flex;
        margin-bottom: 15px;
    }
    .profile_section .area_top img {
        border-radius: 100%;
        object-fit: cover;
    }
    .profile_section .profile_info_wrap {
        margin: 7px 0 0 14px;
    }
    .profile_section .area_flex {
        justify-content: space-between;
        align-items: center;
    }
    /*닉네임*/
    .profile_section .profile_nickname {
        display: inline-block;
        width: 140px;
        margin-right: 15px;
        font-size: 16px;
        font-weight: bold;
        padding: 2px 0;
        text-align: left;
        text-overflow: ellipsis;
        white-space: nowrap;
        overflow: hidden;
        margin-bottom: 0rem;
    }
    /*정보*/
    .profile_section .profile_taste {
        margin-top: 5px;
        font-size: 13px;
    }
    .gray_text {
        color: #6a6a6a;
    }
    .eOlhBT {
        user-select: none;
        -webkit-user-drag: none;
    }
    /*영역정리*/
    .hAClzB > :nth-child(n) {
        margin-top: 26px;
    }
    .profile_section .area_middle {
        border-top: 1px solid #e9e9e9;
        padding: 35px 0 0;
        margin: 0;
        min-height: unset;
    }
    .profile_section .profile_click {
        display: flex;
    }
    /*프로필알림*/
    .profile_section .area_middle .desc {
        font-size: 14px;
        color: #252525;
        font-weight: bold;
        margin: 0 0 0 6px;
        line-height: 18px;
    }
    .eOlhBT {
        user-select: none;
        -webkit-user-drag: none;
    }
    /*동행신청하기*/
    .iNZmaX {
        color: rgb(255, 255, 255);
        background-color: rgb(112, 217, 223);
        width: -webkit-fill-available;
        height: 55px;
        border-radius: 4px;
        margin: 17px 0 0;
        cursor: pointer;
        transition: all 0.1s ease-out 0s;
    }
    .iNZmaX a {
        color: rgb(255, 255, 255);
    }
    .cmgUBW a {
        display: inherit;
        font-weight: bold;
    }
    /*동행신청 모달*/
    .dompyb {
        position: fixed;
        top: 0px;
        width: 100%;
        height: 100%;
        z-index: 10010;
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        box-sizing: border-box;
        background: rgba(25, 25, 25, 0.5);
        padding: 0px;
        opacity: 1;
        transition: opacity 0.6s ease 0s;
        
    }
    .dompyb > div {
        transform: translateY(0px);
    }
    .bgZZfo {
        width: 375px;
        height: auto;
        padding: 0px;
        box-sizing: border-box;
        border-radius: 20px;
        transition: transform 0.6s ease 0s;
        background-color: rgb(255, 255, 255);
    }
    .bJjRJT {
        width: 100%;
        height: auto;
        box-sizing: border-box;
        padding: 34px 18px;
    }
    /*모달 p태그*/
    .gpnsLj {
        width: 100%;
        box-sizing: border-box;
        word-break: break-all;
        white-space: pre-wrap;
        font-weight: 500;
        font-size: 14px;
        line-height: 21px;
        text-align: center;
        user-select: none;
        -webkit-user-drag: none;
        margin-bottom: 24px;
    }
    .bcDKTX {
        width: 100%;
        height: 50px;
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: justify;
        justify-content: space-between;
    }
    .cMnydo {
        box-sizing: border-box;
        width: 80%;
        height: 100%;
        background: rgb(112, 217, 223);
        color: rgb(255, 255, 255);
        border-radius: 10px;
        transition: background-color 0.3s ease-out 0s;
        border: none;
        cursor: pointer;
        margin: 0px;
        margin-left: 2rem;
        font-size: 15px;
        font-weight: 400;
    }

    .btn-ono {
        margin-left: 5px;
        border: 1px solid rgb(233, 233, 233);
        font-size: 15px;
        line-height: 22px;
        font-weight: 500;
        color: rgb(106, 106, 106);
        background-color: rgb(255, 255, 255);
        border-radius: 5px;
    }
    #go {
    position: relative;
    border-radius: 4px;
    padding: 10px;
    background-color: rgb(112, 217, 223);
    font-size: 14px;
    color: rgb(255, 255, 255);
    box-sizing: border-box;
    outline: auto;
    margin-left: auto;
    }
    #no {
    position: relative;
    border-radius: 4px;
    padding: 10px;
    background-color: rgb(255, 255, 255);
    font-size: 14px;
    color: rgb(112, 217, 223);
    box-sizing: border-box;
    outline: auto;
    margin-left: 5px;
    }
    </style>
</head>
<body>
	<!-- 헤더바 포함 -->
	<jsp:include page="../common/header.jsp"/>
	
    <main class="LayoutWrapper__ItemWrapper-sc-14edszd-0 UvObH">
        <section
            direction="vertical"
            class="WebSection__SectionWrapper-sc-1hzt8o9-0 buQzNq">
            <img alt="이미지" src="${pageContext.request.contextPath}/resources/img/partner/${pb.partnerOriginalImg }"></section>
            <div class="accompanyId__BulletinWrapDiv-sc-1up08zu-1 jLghAG">
                <div class="innerSection__AreaLeftDiv-sc-1ag5fhb-4 birXOP">
                    <div class="AccompanyContainer__Wrap-sc-zoqt5l-0 rgrEj">
                        <div class="AccompanyContainer__TitleBox-sc-zoqt5l-1 gMhobB">
                            <p>${ pb.partnerTitle }</p>
                        </div>
                        <div class="AccompanyContainer__TopInfoBox-sc-zoqt5l-3 ihbYE">
                            <div class="AccompanyContainer__FlexBox-sc-zoqt5l-4 kosINv">
                                <div class="AccompanyContainer__FlexBox-sc-zoqt5l-4 kosINv">
                                    <p>지역</p>
                                    <span>${pb.spot.areaTitle }</span>
                                </div>
                                <div class="AccompanyContainer__FlexMarginBox-sc-zoqt5l-5 eBgxXA">
                                    <p>모집인원</p>
                                    <span>${pb.partnerNumber }명</span>
                                </div>
                            </div>
                            <div class="AccompanyContainer__MarginBox-sc-zoqt5l-6 fVZoIM">
                                <div class="AccompanyContainer__FlexBox-sc-zoqt5l-4 kosINv">
                                    <svg
                                        width="14"
                                        height="14"
                                        viewBox="0 0 14 16"
                                        fill="none"
                                        xmlns="http://www.w3.org/2000/svg"
                                        style="display: inline-block;">
                                        <path
                                            d="M13.8828 4.3846C13.8829 4.10977 13.8294 3.83763 13.7256 3.58372C13.6218 3.32981 13.4696 3.09909 13.2777 2.90475C13.0858 2.7104 12.858 2.55624 12.6072 2.45106C12.3565 2.34588 12.0878 2.29175 11.8164 2.29175H2.08262C1.53477 2.29215 1.00949 2.51283 0.622273 2.90528C0.235052 3.29773 0.0175774 3.82983 0.0176569 4.3846V5.9756H0V13.806C0 14.3879 0.228278 14.946 0.634616 15.3575C1.04095 15.7689 1.59206 16.0001 2.16671 16.0001H11.6988C12.2734 15.9999 12.8244 15.7687 13.2307 15.3573C13.637 14.9459 13.8653 14.3879 13.8655 13.806V6.21561H13.8828V4.3846Z"
                                            fill="#9A9A9A"></path>
                                        <path
                                            d="M3.22294 3.04927C2.98173 3.04927 2.75041 2.95348 2.57985 2.78298C2.40929 2.61249 2.31348 2.38124 2.31348 2.14012V0.909143C2.31348 0.668024 2.40929 0.436779 2.57985 0.266282C2.75041 0.0957845 2.98173 0 3.22294 0C3.46414 0 3.69547 0.0957845 3.86602 0.266282C4.03658 0.436779 4.1324 0.668024 4.1324 0.909143V2.14012C4.1324 2.38124 4.03658 2.61249 3.86602 2.78298C3.69547 2.95348 3.46414 3.04927 3.22294 3.04927Z"
                                            fill="#9A9A9A"></path>
                                        <path
                                            d="M10.8584 3.04927C10.6172 3.04927 10.3859 2.95348 10.2153 2.78298C10.0448 2.61249 9.94897 2.38124 9.94897 2.14012V0.909143C9.94897 0.668024 10.0448 0.436779 10.2153 0.266282C10.3859 0.0957845 10.6172 0 10.8584 0C11.0996 0 11.331 0.0957845 11.5015 0.266282C11.6721 0.436779 11.7679 0.668024 11.7679 0.909143V2.14012C11.7679 2.38124 11.6721 2.61249 11.5015 2.78298C11.331 2.95348 11.0996 3.04927 10.8584 3.04927Z"
                                            fill="#9A9A9A"></path>
                                        <path d="M14 5.57568H0.117188V6.82461H14V5.57568Z" fill="white"></path>
                                    </svg>
                                    <span>${pb.partnerStartDate } ~ ${pb.partnerEndDate }</span>
                                </div>
                            </div>
                        </div>
                        <div class="AccompanyContainer__TempWrap-sc-zoqt5l-7 ioZvtx">
                            <div class="AccompanyContainer__TempBox-sc-zoqt5l-8 klFqPP">
                                <svg
                                    width="15"
                                    height="15"
                                    viewBox="0 0 13 13"
                                    fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path d="M1 6.65217L5.58333 11L12 1" stroke="#00CE7C" stroke-width="1.5"></path>
                                </svg>
                                <p>함께 <span>${pb.partnerType }</span> 여행을 떠나려고 해요.</p>
                            </div>

                        </div>
                        <p class="AccompanyContainer__ContentBox-sc-zoqt5l-9 jbdwEb">${pb.partnerContent }</p>
                        <div class="badge__HashTagArrayWrapper-sc-1ju2uee-1 Ewzzt">
                            <div>
                                <div class="badge__HashTagArrayWrapper-sc-1ju2uee-1 cdLLix">
                                    <div>
                                        <div font-size="13px" font-weight="500" class="badge__HashTagWrapper-sc-1ju2uee-0 cFzGDF">
                                            <p class="hashtag__PreventDragP-sc-8lpzsm-0 ekdtxk">#</p>
                                            <p class="hashtag__PreventDragP-sc-8lpzsm-0 ekdtxk">${pb.member.gender == 'F' ? '여성' : '남성'}</p>
                                        </div>
                                        <div font-size="13px" font-weight="500" class="badge__HashTagWrapper-sc-1ju2uee-0 cFzGDF">
                                            <p class="hashtag__PreventDragP-sc-8lpzsm-0 ekdtxk">#</p>
                                            <c:choose>
	                                            <c:when test="${not empty pb.member.mbti }">
	                                            	<p class="hashtag__PreventDragP-sc-8lpzsm-0 ekdtxk">${pb.member.mbti }</p>
	                                            </c:when>
	                                            <c:otherwise>
	                                            	<p class="hashtag__PreventDragP-sc-8lpzsm-0 ekdtxk">미정</p>
	                                            </c:otherwise>
                                            </c:choose>
                                        </div>
                                        <div
                                            font-size="13px"
                                            font-weight="500"
                                            class="badge__HashTagWrapper-sc-1ju2uee-0 cFzGDF">
                                            <p class="hashtag__PreventDragP-sc-8lpzsm-0 ekdtxk">#</p>
                                            <p class="hashtag__PreventDragP-sc-8lpzsm-0 ekdtxk">${pb.partnerType }</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="AccompanyContainer__BottomBox-sc-zoqt5l-11 xqeY">
                            <p class="AccompanyContainer__PreventDragP-sc-zoqt5l-10 iLlzSN">${pb.partnerDate }· 조회수 ${pb.partnerViews }</p>
                            <button class="AccompanyContainer__ReportButton-sc-zoqt5l-12 laOqNb">신고하기</button>
                        </div>
                        <div class="AccompanyCommentInputBox__CommentContainer-sc-1t3w1p4-0 eGJmXC">
                            <div class="CommentInputBox__InputContainer-sc-kzgy2k-0 goDHMI">
                                <textarea rows="1" placeholder="댓글을 입력해주세요." class="CommentInputBox__Input-sc-kzgy2k-1 dMqEYk" id="pnComment" style="height: 40px;"></textarea>
                                <button class="CommentInputBox__SubmitText-sc-kzgy2k-2 hnSauy">게시</button>
                            </div>
                        </div>
                        <div class="AccompanyContainer__CommentContainer-sc-zoqt5l-13 kEMgcA"></div>
                    </div>
                </div>
                <div class="innerSection__AreaRightDiv-sc-1ag5fhb-5 bdoziM">
                    <div class="Layout__LayoutEqualDistanceDiv-sc-1w3ggn5-1 hAClzB profile_section">
                        <div class="area_top" style="margin: 0; margin-bottom: 15px;">

                                <img src="${pageContext.request.contextPath}/resources/img/partner/ner.jpg" style="width: 55px; height: 55px; padding: 4px; margin-top: 10px;">
                      
                                <div class="profile_info_wrap">
                                    <div class="area_flex" style="display: flex;">
                                        <p class="profile_nickname" style="font-size: 16px">${pb.member.memNickname }</p>
                                    </div>
                                    <div class="profile_taste gray_text" style="display: flex;">
                                      <c:choose>
                                         <c:when test="${not empty pb.member.mbti }">
                                         	<p class="ProfileCompanion eOlhBT">${pb.member.mbti } · ${pb.member.gender == 'F' ? '여성' : '남성'}</p>
                                         </c:when>
                                         <c:otherwise>
                                         	<p class="ProfileCompanion eOlhBT">미정 ·  ${pb.member.gender == 'F' ? '여성' : '남성'}</p>
                                         </c:otherwise>
                                       </c:choose>
                                    
                                    
                                    
                                    
                                    <a href="mypage.do" style="text-decoration:none;">
                                        <button class="AccompanyContainer__ReportButton-sc-zoqt5l-12 laOqNb" style="font-size: 14px; color: rgb(154, 154, 154); line-height: 21px; font-weight: 400; margin-bottom: 15px; margin-left: 66px;">
                                        정보 보러가기</button>
                                    </a>
                    
                                    </div>
                                </div>
                            </div>
           

                            <div class="area_middle">
                                <div class="profile_click">
                                    <p class="ProfileCompanion_desc" style="margin-bottom: 0rem;">프로필 사진을 클릭해보세요!</p>
                                </div>
                                <c:choose>
						          <c:when test="${ not empty loginUser and loginUser.memNo ne pb.memNo }">
                                		<div class="Button cmgUBW">
                                
                                
						          
								       <button width="268px" height="55px" font-style="" type="button" class="Button iNZmaX" id="applyBtn">
								    		<a>동행 신청하기</a>
										</button>
										</div>
						            </c:when>
						            <c:otherwise>
						            <div class="Button cmgUBW">
						            	<button width="268px" height="55px" font-style="" type="button" class="Button iNZmaX" id="applyBtn">
								    		<a>동행 신청하기</a>
										</button>
										</div>
						            </c:otherwise>
						            
						          </c:choose>
                                
      
                                
                            </div>

                        </div>
                        
                        <c:if test="${not empty loginUser and loginUser.memNo eq pb.memNo}">
	                      <c:choose>
	                        	<c:when test="${not empty applyList }">
			                        
			                        <div class="Layout__LayoutEqualDistanceDiv-sc-1w3ggn5-1 hAClzB profile_section" style="margin-top: 20px;" >
			                            <p style="font-weight: 700; font-size: medium; margin-top: 10px; margin-bottom: 30px;">받은 신청 목록</p>
			                            
			                            
			                            <div style="display: flex; align-items: center; justify-content: flex-start; margin-top: 12px;">
			                                <span>수바니 · type · 여성 </span>
			                                <button value="memNo" id="go">수락</button>
			                                <button value="memNo" id="no">거절</button>
			                                
			                            </div>
			                        </div>
	                        
	                        	</c:when>
	                        	<c:otherwise>
	                        	<div class="Layout__LayoutEqualDistanceDiv-sc-1w3ggn5-1 hAClzB profile_section" style="margin-top: 20px;" >
			                            <p style="font-weight: 700; font-size: medium; margin-top: 10px; margin-bottom: 30px;">받은 신청 목록</p>
			                            
			                            
			                            <div style="display: flex; align-items: center; justify-content: flex-start; margin-top: 12px;">
			                               <span> 신청인이 없습니다 </span>
			                            </div>
			                            
			                        </div>
	                        		 
	                        	</c:otherwise>
	                        	
	                        </c:choose>
                        </c:if>
                    </div>
                </div>
            </main>


            <!-- 동행신청 모달창 -->
            <div id="ModalController" style="display: none;">
                <div>
                    <div class="ModalContainer dompyb">
                        <div width="375px" class="ModalContainer bgZZfo">
                            <div class="ModalConfirm bJjRJT">
                                <c:choose>
                                    <c:when test="${ empty loginUser }">
                                        <p class="ModalConfirm gpnsLj"> 로그인 회원만 이용하실 수 있는 페이지 입니다. <br> 로그인을 해주세요</p>
                                        <div class="ModalConfirm bcDKTX" >
                                            <button width="49%" height="100%"color="#fff" class="ButtonTemplate cMnydo">확인</button>
                                    </c:when>
                                    <c:otherwise>
                                    	<p class="ModalConfirm gpnsLj"> 동행을 신청하시겠습니까? <br> </p>
                                        <div class="ModalConfirm bcDKTX" >
                                            <button width="49%" height="100%"color="#fff" class="ButtonTemplate cMnydo">확인</button>
                                            <button width="49%" height="100%"color="#fff" class="ButtonTemplate cMnydo">취소</button>
                                    
                                    </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <script>
                const textarea = document.querySelector('#pnComment');

                function autoResizeTextArea() {
                    this.style.height = 'auto';
                    this.style.height = this.scrollHeight  + 'px';
                }
                textarea.addEventListener('input', autoResizeTextArea);
            </script>
            <script>
                // 동행신청하기 버튼 클릭 시 모달창 띄우기
                var applyBtn = document.querySelector('#applyBtn');
                applyBtn.addEventListener('click', function() {
                var modal = document.querySelector('#ModalController');
                modal.style.display = "block";
                });

                // 동행신청 버튼 클릭 시 신청 정보 전송
                var applyConfirmBtn = document.querySelector('.ButtonTemplate.cMnydo');
                applyConfirmBtn.addEventListener('click', function() {
                var modal = document.querySelector('#ModalController');
                modal.style.display = "none";
                });
            </script>
            
            
            <!-- 푸터바 포함 -->
			<jsp:include page="../common/footer.jsp"/>
</body>
</html>