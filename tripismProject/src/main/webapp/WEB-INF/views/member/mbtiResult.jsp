<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  <!-- SITE TITTLE -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>Settings - Star Travel</title>

  <!-- Plugins css Style -->
  <link href='assets/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
  <link href='assets/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
  <link href="assets/plugins/animate/animate.css" rel="stylesheet">
  <link href="assets/plugins/menuzord/css/menuzord.css" rel="stylesheet">
  <link href="assets/plugins/menuzord/css/menuzord-animations.css" rel="stylesheet">

  
  <link href='assets/plugins/fancybox/jquery.fancybox.min.css' rel='stylesheet'>
  
  <!-- CUSTOM CSS -->
  <link href="assets/css/star.css" id="option_style" rel="stylesheet">


  <!-- FAVICON -->
  <link rel="shortcut icon" type="image/png" href="assets/img/favicon.png"/>
  
    <style>
        @font-face {
            font-family: 'omyu_pretty';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }
        * {
            box-sizing: border-box;
        }
        /*양식*/
        .question-main .title {
            font-weight: bold;
            text-align: center;
            font-size: 130px;
            line-height: 140px;
            margin-top: 5%;
            margin-bottom: 3%;
        }
        /*타이틀*/
        .question-main .title {
            color: #ffcb00;
            text-shadow: -2px -2px 0 #000, 2px -2px 0 #000, -2px 2px 0 #000, 2px 2px 0 #000;
            font-family: 'omyu_pretty';
        }
        .question-main * {
            position: relative;
            z-index: 5;
        }
        /*여행지*/
        .question-main .txt {
            font-size: 45px;
        }
        .question-main .txt {
            font-weight: bold;
            text-align: center;
            text-shadow: -2px -2px 0 #fff8d6, 2px -2px 0 #fff8d6, -2px 2px 0 #fff8d6, 2px 2px 0 #fff8d6;
            font-family: 'omyu_pretty';
        }
        /*버튼*/
        .question-main .btn {
            font-size: 20px;
            font-family: 'omyu_pretty';
        }
        .question-main .btn {
            border: 3px solid #000;
            border-radius: 10px;
            background: #fff;
            padding: 10px 20px;
            margin-left: 43%;
            margin-top: 5%;
            margin-bottom: 10%;
        }
        a:visited {
            text-decoration: none;
        }
        a {
            color: #000;
            cursor: pointer;
            outline: none;
            text-decoration: none;
        }
    </style>
</head>
    <body id="body" class="up-scroll">
        <!-- 헤더바 포함 -->    
        <jsp:include page="../common/header.jsp"/>

        <div class="container" style="max-width: 1500px;
            background: url('http://m.webtour.com/Gevent/mbti/img/bg_main2.png') no-repeat 100% 0, url('http://m.webtour.com/Gevent/mbti/img/bg_main1.png') no-repeat 0 0;
            margin-bottom: 5%;
            background-color: #f9f6e9; ">
            <div class="question-main">
                <div class="txt">나의 여행 MBTI는?</div>
                <div class="title">${mbti}</div>
                <a href="mbtiInsert.do?mbti=${mbti}" class="btn">결정하기</a>
                <a href="mbtiTest.do" class="btn">다시하기</a>
            </div>
        </div>

        <!-- 푸터바 포함 -->
        <jsp:include page="../common/footer.jsp"/>
    </body>
</html>