<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
  #btn_pwd, #infoUpdate{
    background-color: RGB(112, 217, 223);
    border: none;
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
    background-color: RGB(112, 217, 223);
    color: #ffffff;
    border: 1px solid #dfdfdf;
  }

  </style>

</head>
<body id="body" class="up-scroll">

<jsp:include page="../common/header.jsp"/>

<section class="py-9">
  <div class="container">
    <div class="bg-smoke p-2 p-md-6 pb-6 pb-md-8 mb-9 rounded">
      <div class="row">
        <div class="col-12">
          <div class="row">
            <div class="col-lg-6" style="margin: auto;">
              <div class="mb-4">
                <h2 class="text-uppercase mb-3">나의 여행 MBTI는?</h2>
              </div>

              <hr>

            <form action="">

              <div id="question1">

                <h3 class="question-p">1. 친구랑 둘이 여행가기로 했는데 갑자기 친구가 못간다고 한다. 그럴때 나는?</h3>
                <br>

                <label class="test_obj">
                    <input type="radio" name="question1" value="P">
                    <span>어쩔수 없지, 그냥 혼자 간다.</span>
                </label>
                <br>
                <label class="test_obj">
                    <input type="radio" name="question1" value="J">
                    <span>무조건 취소하고 다음에 계획하고 다시간다.</span>
                </label>
                <br><br><br><br>
              </div>
              

              <div id="question2" style="display: none;">

                <h3 class="question-p">2. 게스트하우스에 가서 다같이 저녁을 먹는 자리가 생겼다. 그럴때 나는?</h3>
                <br>

                <label class="test_obj">
                    <input type="radio" name="question2" value="E">
                    <span>새로운 사람을 만나고 이야기할 생각에 설렌다.</span>
                </label>
                <br>
                <label class="test_obj">
                    <input type="radio" name="question2" value="I">
                    <span>그냥 혼자있고 싶다. 거절한다.</span>
                </label>
                <br><br><br><br>
              </div>
              

              <div id="question3" style="display: none;">

                <h3 class="question-p">3. </h3>
                <br>

                <label class="test_obj">
                    <input type="radio" name="question3" value="P">
                    <span>어쩔수 없지, 그냥 혼자 간다.</span>
                </label>
                <br>
                <label class="test_obj">
                    <input type="radio" name="question3" value="J">
                    <span>무조건 취소하고 다음에 계획하고 다시간다.</span>
                </label>
                <br><br><br><br>
              </div>
              

              <div id="question4" style="display: none;">

                <h3 class="question-p">4. 친구랑 둘이 여행가기로 했는데 갑자기 친구가 못간다고 한다. 그럴때 나의 선택은?</h3>
                <br>

                <label class="test_obj">
                    <input type="radio" name="question4" value="P">
                    <span>어쩔수 없지, 그냥 혼자 간다.</span>
                </label>
                <br>
                <label class="test_obj">
                    <input type="radio" name="question4" value="J">
                    <span>무조건 취소하고 다음에 계획하고 다시간다.</span>
                </label>
                <br><br><br><br>
              </div>
              

              <div id="question5" style="display: none;">

                <h3 class="question-p">5. 친구랑 둘이 여행가기로 했는데 갑자기 친구가 못간다고 한다. 그럴때 나의 선택은?</h3>
                <br>

                <label class="test_obj">
                    <input type="radio" name="question5" value="P">
                    <span>어쩔수 없지, 그냥 혼자 간다.</span>
                </label>
                <br>
                <label class="test_obj">
                    <input type="radio" name="question5" value="J">
                    <span>무조건 취소하고 다음에 계획하고 다시간다.</span>
                </label>
                <br><br><br><br>
              </div>
              

              <div id="question6" style="display: none;">

                <h3 class="question-p">6. 친구랑 둘이 여행가기로 했는데 갑자기 친구가 못간다고 한다. 그럴때 나의 선택은?</h3>
                <br>

                <label class="test_obj">
                    <input type="radio" name="question6" value="P">
                    <span>어쩔수 없지, 그냥 혼자 간다.</span>
                </label>
                <br>
                <label class="test_obj">
                    <input type="radio" name="question6" value="J">
                    <span>무조건 취소하고 다음에 계획하고 다시간다.</span>
                </label>
                <br><br><br><br>
              </div>
              

              <div id="question7" style="display: none;">

                <h3 class="question-p">7. 친구랑 둘이 여행가기로 했는데 갑자기 친구가 못간다고 한다. 그럴때 나의 선택은?</h3>
                <br>

                <label class="test_obj">
                    <input type="radio" name="question7" value="P">
                    <span>어쩔수 없지, 그냥 혼자 간다.</span>
                </label>
                <br>
                <label class="test_obj">
                    <input type="radio" name="question7" value="J">
                    <span>무조건 취소하고 다음에 계획하고 다시간다.</span>
                </label>
                <br><br><br><br>
              </div>

              <div id="question8" style="display: none;">

                <h3 class="question-p">8. 친구랑 둘이 여행가기로 했는데 갑자기 친구가 못간다고 한다. 그럴때 나의 선택은?</h3>
                <br>

                <label class="test_obj">
                    <input type="radio" name="question8" value="P">
                    <span>어쩔수 없지, 그냥 혼자 간다.</span>
                </label>
                <br>
                <label class="test_obj">
                    <input type="radio" name="question8" value="J">
                    <span>무조건 취소하고 다음에 계획하고 다시간다.</span>
                </label>
                <br><br><br><br>
              </div>

              <div id="question9" style="display: none;">

                <h3 class="question-p">9. 친구랑 둘이 여행가기로 했는데 갑자기 친구가 못간다고 한다. 그럴때 나의 선택은?</h3>
                <br>

                <label class="test_obj">
                    <input type="radio" name="question9" value="P">
                    <span>어쩔수 없지, 그냥 혼자 간다.</span>
                </label>
                <br>
                <label class="test_obj">
                    <input type="radio" name="question9" value="J">
                    <span>무조건 취소하고 다음에 계획하고 다시간다.</span>
                </label>
                <br><br><br><br>
              </div>

              <div id="question10" style="display: none;">

                <h3 class="question-p">10. 친구랑 둘이 여행가기로 했는데 갑자기 친구가 못간다고 한다. 그럴때 나의 선택은?</h3>
                <br>

                <label class="test_obj">
                    <input type="radio" name="question10" value="P">
                    <span>어쩔수 없지, 그냥 혼자 간다.</span>
                </label>
                <br>
                <label class="test_obj">
                    <input type="radio" name="question10" value="J">
                    <span>무조건 취소하고 다음에 계획하고 다시간다.</span>
                </label>
                <br><br><br><br>
              </div>

              <div id="question11" style="display: none;">

                <h3 class="question-p">11. 친구랑 둘이 여행가기로 했는데 갑자기 친구가 못간다고 한다. 그럴때 나의 선택은?</h3>
                <br>

                <label class="test_obj">
                    <input type="radio" name="question11" value="P">
                    <span>어쩔수 없지, 그냥 혼자 간다.</span>
                </label>
                <br>
                <label class="test_obj">
                    <input type="radio" name="question11" value="J">
                    <span>무조건 취소하고 다음에 계획하고 다시간다.</span>
                </label>
                <br><br><br><br>
              </div>

              <div id="question12" style="display: none;">

                <h3 class="question-p">12. 친구랑 둘이 여행가기로 했는데 갑자기 친구가 못간다고 한다. 그럴때 나의 선택은?</h3>
                <br>

                <label class="test_obj">
                    <input type="radio" name="question12" value="P">
                    <span>어쩔수 없지, 그냥 혼자 간다.</span>
                </label>
                <br>
                <label class="test_obj">
                    <input type="radio" name="question12" value="J">
                    <span>무조건 취소하고 다음에 계획하고 다시간다.</span>
                </label>
                <br><br><br><br>
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
                <div class="question-count">1 / 12</div>
              </div>

              <br>

              <div style="width: 100%;">
              <button type="submit" class="test_btn" style="width: 100%; display: none;">내 여행MBTI 확인하러 가기</button>
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
</section>

</body>
</html>