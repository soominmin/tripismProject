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
        a:visited {
            text-decoration: none;
        }
        a {
            color: #000;
            cursor: pointer;
            outline: none;
            text-decoration: none;
        }

  /*질문지 리스트*/
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
    width: 500px;
    margin-left: 80px;
  }

  .test_obj input[type="radio"]:checked + span {
    background-color: rgb(112, 217, 223);
    color: #ffffff;
    font-family: 'omyu_pretty';
  }

  .test_btn {
    display: inline-block;
    padding: 15px 10px;
    background-color: rgb(112, 217, 223);
    color: #ffffff;
    border: 1px solid #dfdfdf;
    border-radius: 10px;
    margin-left: 200px;
    margin-bottom: 50px;
    width: 300px;
    height: 65px;
    font-size: 20px;
  }

  .question-p {
    margin-bottom: 30px;
  }

  /*숫자 폰트*/
  .num {
    margin-bottom: 16px;
    font-size: 60px;
    display: block;
    font-weight: bold;
    text-align: center;
    color: #ffcb00;
    text-shadow: -2px -2px 0 #000, 2px -2px 0 #000, -2px 2px 0 #000, 2px 2px 0 #000;
    margin-top: 80px;
}
.name {
    margin-bottom: 26px;
    font-size: 33px;
    padding: 0 20px;
    font-weight: bold;
    text-align: center;
    text-shadow: -1px -1px 0 #fff8d6, 1px -1px 0 #fff8d6, -1px 1px 0 #fff8d6, 1px 1px 0 #fff8d6;
}
.label_que1 {
    width: 400px;
    cursor: pointer;
    display: block;
    width: 70%;
    margin: 0 auto 10px auto;
}
input[type=radio] {
    display: none;
    outline: none;
    vertical-align: middle;
    border: 0;
}
#mbti {
    display: block;
    padding: 10px;
    border: 3px solid #000;
    border-radius: 10px;
    background: #fff;
    transition: all .3s ease;
    font-family: 'omyu_pretty';
    font-size: 32px;
    width: 400px;
    cursor: pointer;
    display: flex;
    justify-content: space-around;
    margin-left: 150px;
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
                <div class="title"></div>
                
                
    <div class="p-2 p-md-6 pb-6 pb-md-8 mb-9 rounded">
        <div class="row">
          <div class="col-12">
            <div class="row">
              <div class="col-lg-6" style="margin: auto;">
                <div class="mb-4"> <br><br>
                  <h2 class="text-uppercase mb-3">나의 여행 MBTI는?</h2>
                </div>
  
                <hr>
  
              <form action="">
  
                <div class="in" id="question1">
                  <span class="num">Q 01.</span>
                  <div class="name">여행을 떠날 때 계획은</div>
                  <label>
                    <input type="radio" name="que1" value="P" class="label_que1">
                    <b id="mbti">내가 걷는 길이 곧 여행코스</b>
                  </label>
                  <label>
                    <input type="radio" name="que1" value="J" class="label_que1">
                    <b id="mbti">계획은 필수</b>
                  </label>
                </div>
                
  
                <div id="question2" style="display: none;">
                  <span class="num">Q 02.</span>
                  <div class="name">여행을 떠날 때 계획은</div>
                  <label>
                    <input type="radio" name="question3" value="P" class="label_que">
                    <b id="mbti">내가 걷는 길이 곧 여행코스</b>
                  </label>
                  <label>
                    <input type="radio" name="question3" value="J" class="label_que">
                    <b id="mbti">계획은 필수</b>
                  </label>
                </div>
                
  

                <div id="question3" style="display: none;">
                  <span class="num">Q 03.</span>
                  <div class="name">여행을 떠날 때 계획은</div>
                  <label>
                    <input type="radio" name="question3" value="P" class="label_que">
                    <b id="mbti">내가 걷는 길이 곧 여행코스</b>
                  </label>
                  <label>
                    <input type="radio" name="question3" value="J" class="label_que">
                    <b id="mbti">계획은 필수</b>
                  </label>
                </div>
                
  
                <div id="question4" style="display: none;">
                  <span class="num">Q 04.</span>
                  <div class="name">여행을 떠날 때 계획은</div>
                  <label>
                    <input type="radio" name="question3" value="P" class="label_que">
                    <b id="mbti">내가 걷는 길이 곧 여행코스</b>
                  </label>
                  <label>
                    <input type="radio" name="question3" value="J" class="label_que">
                    <b id="mbti">계획은 필수</b>
                  </label>
                </div>
                
  
                <div id="question5" style="display: none;">
                  <span class="num">Q 05.</span>
                  <div class="name">여행을 떠날 때 계획은</div>
                  <label>
                    <input type="radio" name="question3" value="P" class="label_que">
                    <b id="mbti">내가 걷는 길이 곧 여행코스</b>
                  </label>
                  <label>
                    <input type="radio" name="question3" value="J" class="label_que">
                    <b id="mbti">계획은 필수</b>
                  </label>
                </div>
                



                <div id="question6" style="display: none;">
                  <span class="num">Q 06.</span>
                  <div class="name">여행을 떠날 때 계획은</div>
                  <label>
                    <input type="radio" name="question3" value="P" class="label_que">
                    <b id="mbti">내가 걷는 길이 곧 여행코스</b>
                  </label>
                  <label>
                    <input type="radio" name="question3" value="J" class="label_que">
                    <b id="mbti">계획은 필수</b>
                  </label>
                </div>
                
  
                <div id="question7" style="display: none;">
                  <span class="num">Q 07.</span>
                  <div class="name">여행을 떠날 때 계획은</div>
                  <label>
                    <input type="radio" name="question3" value="P" class="label_que">
                    <b id="mbti">내가 걷는 길이 곧 여행코스</b>
                  </label>
                  <label>
                    <input type="radio" name="question3" value="J" class="label_que">
                    <b id="mbti">계획은 필수</b>
                  </label>
                </div>



  
                <div id="question8" style="display: none;">
                  <span class="num">Q 08.</span>
                  <div class="name">여행을 떠날 때 계획은</div>
                  <label>
                    <input type="radio" name="question3" value="P" class="label_que">
                    <b id="mbti">내가 걷는 길이 곧 여행코스</b>
                  </label>
                  <label>
                    <input type="radio" name="question3" value="J" class="label_que">
                    <b id="mbti">계획은 필수</b>
                  </label>
                </div>



  
                <div id="question9" style="display: none;">
                  <span class="num">Q 09.</span>
                  <div class="name">여행을 떠날 때 계획은</div>
                  <label>
                    <input type="radio" name="question3" value="P" class="label_que">
                    <b id="mbti">내가 걷는 길이 곧 여행코스</b>
                  </label>
                  <label>
                    <input type="radio" name="question3" value="J" class="label_que">
                    <b id="mbti">계획은 필수</b>
                  </label>
                </div>



  
                <div id="question10" style="display: none;">
                  <span class="num">Q 10.</span>
                  <div class="name">여행을 떠날 때 계획은</div>
                  <label>
                    <input type="radio" name="question3" value="P" class="label_que">
                    <b id="mbti">내가 걷는 길이 곧 여행코스</b>
                  </label>
                  <label>
                    <input type="radio" name="question3" value="J" class="label_que">
                    <b id="mbti">계획은 필수</b>
                  </label>
                </div>



  
                <div id="question11" style="display: none;">
                  <span class="num">Q 11.</span>
                  <div class="name">여행을 떠날 때 계획은</div>
                  <label>
                    <input type="radio" name="question3" value="P" class="label_que">
                    <b id="mbti">내가 걷는 길이 곧 여행코스</b>
                  </label>
                  <label>
                    <input type="radio" name="question3" value="J" class="label_que">
                    <b id="mbti">계획은 필수</b>
                  </label>
                </div>



  
                <div id="question12" style="display: none;">
                  <span class="num">Q 12.</span>
                  <div class="name">여행을 떠날 때 계획은</div>
                  <label>
                    <input type="radio" name="question3" value="P" class="label_que">
                    <b id="mbti">내가 걷는 길이 곧 여행코스</b>
                  </label>
                  <label>
                    <input type="radio" name="question3" value="J" class="label_que">
                    <b id="mbti">계획은 필수</b>
                  </label>
                </div>


  
                
                <br>
                <div class="question-progress">
                  <div class="progress-bar-mbti">
                    <div style="display: initial; align-items: initial;">
                      <div style="height: 10px; background-color: rgb(251, 247, 242); border-radius: 50px; width: 100%;">
                        <div class="prog-bar" style="height: 10px; width: 5%; background-color: rgb(112, 217, 223); transition: width 0.3s ease-in-out 0s; border-radius: inherit; display: flex; align-items: center; justify-content: flex-end;">
                          <span style="padding: 5px; color: rgb(255, 255, 255); font-weight: bold; font-size: 15px; display: none;">5%</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="question-count">1 / 12</div> <br><br>
                </div>
  
                <br>
  
                <div style="width: 100%;">
                <button type="submit" class="test_btn" 
                style="width: 100%; display: none; ">내 여행MBTI 확인하러 가기</button>
                </div>
  
  
              </form>
                
                <script>
                  let count = 0;
                  
                  $('#question1').click(function() {
                    $('#question2').attr('style', 'display');
                    $(".question-count").text("2 / 12");
                    $(".prog-bar").css("width", '17%');
                  });
  
                  $('#question2').click(function() {
                    $('#question3').attr('style', 'display');
                    $(".question-count").text("3 / 12");
                    $(".prog-bar").css("width", '25%');
                  });
  
                  $('#question3').click(function() {
                    $('#question4').attr('style', 'display');
                    $(".question-count").text("4 / 12");
                    $(".prog-bar").css("width", '33%');
                  });
  
                  $('#question4').click(function() {
                    $('#question5').attr('style', 'display');
                    $(".question-count").text("5 / 12");
                    $(".prog-bar").css("width", '42%');
                  });
  
                  $('#question5').click(function() {
                    $('#question6').attr('style', 'display');
                    $(".question-count").text("6 / 12");
                    $(".prog-bar").css("width", '50%');
                  });
  
                  $('#question6').click(function() {
                    $('#question7').attr('style', 'display');
                    $(".question-count").text("7 / 12");
                    $(".prog-bar").css("width", '58%');
                  });
  
                  $('#question7').click(function() {
                    $('#question8').attr('style', 'display');
                    $(".question-count").text("8 / 12");
                    $(".prog-bar").css("width", '66%');
                  });
  
                  $('#question8').click(function() {
                    $('#question9').attr('style', 'display');
                    $(".question-count").text("9 / 12");
                    $(".prog-bar").css("width", '74%');
                  });
  
                  $('#question9').click(function() {
                    $('#question10').attr('style', 'display');
                    $(".question-count").text("10 / 12");
                    $(".prog-bar").css("width", '83%');
                  });
  
                  $('#question10').click(function() {
                    $('#question11').attr('style', 'display');
                    $(".question-count").text("11 / 12");
                    $(".prog-bar").css("width", '91%');
                  });
  
                  $('#question11').click(function() {
                    $('#question12').attr('style', 'display');
                    $(".question-count").text("12 / 12");
                    $(".prog-bar").css("width", '100%');
                  });
  
                  $('#question12').click(function() {
                      $('.test_btn').attr('style', 'display');
                  });
  
  
                </script>
                
  
  
  
                
              </div>
      </div>
    </div>
    </div>
  </div>


            </div>
        </div>

        <!-- 푸터바 포함 -->
        <jsp:include page="../common/footer.jsp"/>
    </body>
</html>