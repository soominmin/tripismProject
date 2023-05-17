<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <style > 
            body {
                font-weight: 400;
                font-size: 14px;
            }
            span {
                margin: 0px;
                padding: 0px;
                border: 0px;
                font-style: normal;
            }
            p {
                margin: 0px;
                padding: 0px;
                border: 0px;
                font-style: normal;
            }
            .jkTMmI ::-webkit-scrollbar {
                display: none;
            }
            .jkTMmI ::-webkit-scrollbar-thumb {
                display: none;
            }
            .jkTMmI ::-webkit-scrollbar-track {
                display: none;
            }
            body {
                font-weight: 400;
                font-size: 14px;
            }
            img {
                user-select: none;
                -webkit-user-drag: none;
                vertical-align: top;
                object-fit: cover;
                overflow: clip;
            }
            div {
                margin: 0;
                padding: 0;
                border: 0;
                font-style: normal;
            }
            svg:not(:root) {
                overflow: initial;
            }

            /*전체창*/
            .jkTMmI {
                transition: all 500ms ease 0s;
                z-index: 9999;
                position: fixed;
                bottom: 80px;
                right: 90px;
                box-sizing: border-box;
                height: 0;
                width: 0;
                overflow: hidden;
                background-color: rgb(255, 255, 255);
                border-radius: 10px;
                box-shadow: rgba(0, 0, 0, 0.25) 0 4px 12px;
            }
            .jkTMmI * {
                box-sizing: inherit;
            }
            html {
                font-size: 1px;
                text-size-adjust: 100%;
                line-height: 1.15;
            }
            .ksFACn {
                padding: 0 18px;
                display: flex;
                -webkit-box-pack: justify;
                justify-content: space-between;
            }
            /*모든대화방*/
            .fnLJkw {
                user-select: none;
                -webkit-user-drag: none;
                font-size: 13px;
                text-align: center;
                text-overflow: ellipsis;
                overflow: hidden;
                display: -webkit-box;
                -webkit-line-clamp: 2;
                -webkit-box-orient: vertical;
                color: rgb(154, 154, 154);
            }
            /*이미지정리*/
            .eJFHFc {
                padding: 0 5px;
                display: flex;
                -webkit-box-pack: start;
                justify-content: flex-start;
                -webkit-box-align: center;
                align-items: center;
                width: 100%;
                height: 100%;
                overflow: scroll hidden;
                gap: 5px;
            }
            /*이미지*/
            .fflKHI {
                cursor: pointer;
                display: flex;
                flex-direction: column;
                -webkit-box-pack: center;
                justify-content: center;
                -webkit-box-align: center;
                align-items: center;
            }
            .jxPOyi {
                cursor: pointer;
                width: 100%;
                height: 100%;
                border-radius: 50%;
                border: 0;
            }
            .iCTgJa {
                position: relative;
                width: 42px;
                height: 42px;
            }
            /*채팅창*/
            .eIBKpS {
                padding-top: 16px;
                display: flex;
                flex-direction: column;
                -webkit-box-align: center;
                align-items: center;
                width: 100%;
                height: calc(100% - 121px + var(--app-padding-bottom));
                box-shadow: rgba(0, 0, 0, 0.02) 0px -4px 2px;
                border-radius: 24px 24px 0px 0px;
            }
            /*대화카테고리*/
            .bbIQog {
                margin-bottom: 14px;
                position: relative;
                display: flex;
                width: 333px;
                height: 40px;
                background: rgb(249, 249, 249);
            }
            /*카테고리버튼*/
            button {
                line-height: 1.15;
                margin: 0px;
                text-transform: none;
                user-select: none;
                -webkit-user-drag: none;
                font-weight: 400;
                border: none;
                border-radius: 6px;
            }
            /*카테고리버튼선택시*/
            .kphGtz {
                position: relative;
                z-index: 2;
                transition: all 300ms ease 0s;
                width: 50%;
                height: 100%;
                display: flex;
                -webkit-box-pack: center;
                justify-content: center;
                -webkit-box-align: center;
                align-items: center;
                gap: 4px;
                font-size: 15px;
                color: rgb(232, 232, 232);
                background-color: black;
            }
            .kheUIe {
                position: relative;
                z-index: 2;
                transition: all 300ms ease 0s;
                width: 50%;
                height: 100%;
                display: flex;
                -webkit-box-pack: center;
                justify-content: center;
                -webkit-box-align: center;
                align-items: center;
                gap: 4px;
                font-size: 15px;
            }
            /*선택된 버틍*/
            .boNAgO {
                z-index: 1;
                transition: all 300ms ease 0s;
                position: absolute;
                top: 0px;
                width: calc(33.3333%);
                height: 100%;
                border-radius: 6px;
                background: rgb(37, 37, 37);
                left: 0%;
            }

            /*채팅 목록*/
            .eqxbAv {
                width: 100%;
                overflow-y: scroll;
                height: 100%;
            }
            ul {
                list-style: none;
                margin: 0px;
                padding: 0px;
                border: 0px;
                font-style: normal;

            }
            /*글 목록 정리*/
            .duxSFr {
                cursor: pointer;
                transition: all 180ms ease 0s;
                cursor: pointer;
                padding: 16px 18px;
                display: flex;
                -webkit-box-pack: justify;
                justify-content: space-between;
                width: 100%;
                height: 97px;
                background: rgb(255, 255, 255);
            }
            /*글 목록*/
            .jRuymm {
                margin-left: 16px;
                width: calc(100% - 66px);
                height: 100%;
            }
            /*글목록 제목*/
            .dMfoDF {
                display: flex;
                -webkit-box-pack: justify;
                justify-content: space-between;
                -webkit-box-align: center;
                align-items: center;
                height: 18px;
            }
            .fxllNx {
                display: flex;
                width: 100%;
            }
            .gFbPQg {
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis;
                font-size: 13px;
                line-height: 19px;
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis;
                color: rgb(154, 154, 154);
            }

            /*인원수*/
            .LSLIK {
                font-size: 12px;
                color: rgb(154, 154, 154);
            }
            /*이게뭐지*/
            .eOtkJC {
                display: none;
                -webkit-box-pack: center;
                -webkit-box-align: center;
                width: 18px;
                height: 18px;
                line-height: 18px;
                background: rgb(0, 206, 124);
                font-size: 12px;
                color: rgb(255, 255, 255);
                border-radius: 50%;
            }
            #messages *{
                font-size: 17px;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <svg cursor="pointer" width="85" height="85" viewbox="0 0 140 140" fill="none" xmlns="http://www.w3.org/2000/svg" style="cursor: pointer; z-index: 100000; position: fixed; bottom: 40px; right: 40px;">
            <g filter="url(#filter0_d_724_27372)">
                <circle cx="70" cy="70" r="50" fill="white"></circle>
                <circle cx="70" cy="70" r="49" stroke="#F5F5F5" stroke-width="2"></circle>
            </g>
            <path d="M44 70C44 55.6406 55.6406 44 70 44C84.3594 44 96 55.6406 96 70C96 84.3594 84.3594 96 70 96H48.7273C46.1165 96 44 93.8835 44 91.2727V70Z" fill="rgb(112, 217, 223)"></path>
            <circle cx="58" cy="70" r="3" fill="white"></circle>
            <circle cx="70" cy="70" r="3" fill="white"></circle>
            <ellipse cx="82" cy="70" rx="3" ry="3" fill="white"></ellipse>
            <defs>
                <filter id="filter0_d_724_27372" x="0" y="0" width="140" height="140" filterunits="userSpaceOnUse" color-interpolation-filters="sRGB">
                    <feflood flood-opacity="0" result="BackgroundImageFix"></feflood>
                    <fecolormatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"></fecolormatrix>
                    <feoffset></feoffset>
                    <fegaussianblur stddeviation="10"></fegaussianblur>
                    <fecomposite in2="hardAlpha" operator="out"></fecomposite>
                    <fecolormatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.1 0"></fecolormatrix>
                    <feblend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_724_27372"></feblend>
                    <feblend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_724_27372" result="shape"></feblend>
                </filter>
            </defs>
        </svg>

        <div class="sc-e355bb8d-0 jkTMmI" style="height: 680px; width: 403px; display: none;">

            <div class="sc-7888b13b-3 eIBKpS" style="width: 100%; height: 100%;">

                <div class="sc-7888b13b-4 bbIQog">
                    <button class="sc-7888b13b-5 kheUIe" onclick="back();">뒤로가기</button>
                    <button class="sc-7888b13b-5 kphGtz">그룹대화</button>
                    <button class="sc-7888b13b-5 kheUIe">1:1 대화</button>
                </div>
				
                <div id="chatRoomList" class="sc-7888b13b-7 eqxbAv">
                </div>

                       
                <div id="chatting" style="display: none; width: 100%; height: 100%;">
                    <div id="messages" style="height:80%; overflow: auto;">
                                
                    </div>
                    <div style="height:20%">
                        <input type="text" id="sendMessage"/>
                        <button type="button" id="send">전송</button>
                    </div>
                        

                </div>

            </div>
                <script>
                    let currentchatRoom = 0;
                    const svgElement = document.querySelector('svg[cursor="pointer"]');
                    const targetElement = document.querySelector('.sc-e355bb8d-0.jkTMmI');
                    let isOpen = false;
                  
                    svgElement.addEventListener('click', () => {
                    
                      if (isOpen) {
                        targetElement.style.display = 'none';
                        isOpen = false;
                      } else {
                        $.ajax({
                            url : 'chatList.ch',
                            success : (chatRooms)=>{
                                console.log(chatRooms);
                                let value="";
                                if(chatRooms=='noLogin'){
                                    value+='<div class="sc-2b24a48b-0 duxSFr">'
                                                +'<div class="sc-be1fc4d6-0 iCTgJa">'
                                                    +'<img alt="프로필" src="https://tripsoda.s3.ap-northeast-2.amazonaws.com/prod/member/1683006319089-1" class="sc-be1fc4d6-1 jxPOyi"></div>'
                                                    +'<div class="sc-2b24a48b-1 jRuymm" id="chatRoom1">'
                                                        +'<div class="sc-2b24a48b-2 dMfoDF" style="width: 100%;">'
                                                        + '<div class="sc-2b24a48b-3 fxllNx" style="max-width: 90%;">'
                                                                +'<p class="sc-2b24a48b-4 gFbPQg" style="line-height: 22px; max-width: 80%; font-size: 15px; font-weight: 500; color: black;">채팅은 로그인 후 이용가능 합니다</p>'
                                                                +'<span class="sc-2b24a48b-5 LSLIK"  style="margin-left: 4px; font-size: 14px; font-weight: 500;">3</span>'
                                                            +'</div>'
                                                            +'<div class="sc-2b24a48b-6 eOtkJC">0</div>'
                                                    + '</div>'
                                                        
                                                        +'<div class="sc-2b24a48b-2 dMfoDF">'
                                                            
                                                            +'<span class="sc-2b24a48b-5 LSLIK">4시간전</span>'
                                                    +'</div>'
                                                +'</div>'
                                            +'</div>'
                                }else{
                                    for(let i=0;i<chatRooms.length;i++){
                                        value+='<div class="sc-2b24a48b-0 duxSFr chatRoom">'
                                                +'<div class="sc-be1fc4d6-0 iCTgJa">'
                                                    +'<img alt="프로필" src="https://tripsoda.s3.ap-northeast-2.amazonaws.com/prod/member/1683006319089-1" class="sc-be1fc4d6-1 jxPOyi"></div>'
                                                    +'<div class="sc-2b24a48b-1 jRuymm" id="chatRoom1">'
                                                        +'<div class="sc-2b24a48b-2 dMfoDF" style="width: 100%;">'
                                                        + '<div class="sc-2b24a48b-3 fxllNx" style="max-width: 90%;">'
                                                                +'<p class="sc-2b24a48b-4 gFbPQg" style="line-height: 22px; max-width: 80%; font-size: 15px; font-weight: 500; color: black;">'+chatRooms[i].chatRoomName+'</p>'
                                                                +'<span class="sc-2b24a48b-5 LSLIK"  style="margin-left: 4px; font-size: 14px; font-weight: 500;">3</span>'
                                                            +'</div>'
                                                            +'<div class="sc-2b24a48b-6 eOtkJC">0</div>'
                                                    + '</div>'
                                                        
                                                        +'<div class="sc-2b24a48b-2 dMfoDF">'
                                                            
                                                            +'<span class="sc-2b24a48b-5 LSLIK">4시간전</span>'
                                                    +'</div>'
                                                +'</div>'
                                            +'</div>'
                                    }
                                }

                                let chatList=document.getElementById('chatRoomList');
                                chatList.innerHTML=value;
                                
                                let chatRoom = document.getElementsByClassName('chatRoom');

                                for(let j=0; j<chatRoom.length;j++){
                                    chatRoom[j].addEventListener('click',()=>{
                                        chatList.style.display="none";
                                        document.getElementById('chatting').style.display="block";
                                        console.log(chatRooms[j].chatRoomNo);
                                        $.ajax({
                                            url:"messageList.ch",
                                            data:{chatRoomNo : chatRooms[j].chatRoomNo},
                                            success:(messages)=>{
                                                console.log(messages)
                                                let value = "";

                                                for(let i=0;i<messages.length;i++){

                                                    if("${loginUser.memNickname}"==messages[i].memNickname){
                                                        value+='<div style="height: 30px;">'
                                                             +  '<div style="float: right; background-color:rgb(112, 217, 223) ;">'+messages[i].messageText+'</div>'
                                                           + '</div>'
                                                    }else{
                                                        value+='<div style="height: 30px;">'
                                                             +  '<div>'+messages[i].memNickname+' : '+messages[i].messageText+'</div>'
                                                           + '</div>'
                                                    }
                                                   
                                                }
                                                document.getElementById('messages').innerHTML=value;

                                            },
                                            error:()=>{

                                            }

                                        })
                                        

                                    })

                                }

                            },
                            error : () =>{
                                console.log("통신실패")  

                            }


                        })
                        targetElement.style.display = 'block';
                        isOpen = true;
                      }
                    });
                  </script>
                  
                  <script>
                    

                    function createWebSocket(){
                        
                        const webSocket = new WebSocket('ws://localhost:8007/tripism/ws/chat');
                        
                        webSocket.onopen = function(event){
                            
                        }

                        const sendBtn = document.getElementById('send');
                        const message = document.getElementById('sendMessage');
                        sendBtn.addEventListener('click',event=>{
                        
                            if(message.value==""){
                                message.placeholder = "메세지를 입력해주세요";
                            }else{
                                let messageInfo ={
                                    messageNo : '0',
                                    chatroomNo :"1",
                                    messageText:message.value,
                                    memNo:'${loginUser.memNo}',
                                    messageDate:'sysdate'

                                }
                                console.log(message.value);
                                webSocket.send(JSON.stringify(messageInfo));
                            }
                        })

                        webSocket.onmessage = function(msg){
                            console.log(msg);
                        }
                        function closeSocket(){
                            webSocket.onclose() = function(){

                            }
                        }
                    }
                    
                    



                    function back(){
                        document.getElementById('chatting').style.display="none";
                        document.getElementById('chatRoomList').style.display="block";
                        document.getElementById('messages').innerHTML="";
                    }
                    
                  
                  </script>
              

                    
            </body>

</html>
            
