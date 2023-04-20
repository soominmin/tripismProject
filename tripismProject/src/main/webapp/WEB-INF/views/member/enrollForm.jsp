<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="body" class="up-scroll">
  
 <!-- Signup Modal -->
 <div id="signup" tabindex="-1" role="dialog" aria-label="signupModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header rounded" id="modalTop">
          <h3 class="modal-title text-uppercase font-weight-bold">Tripism 회원가입</h3>
        </div>

        <div class="modal-body">
          <form class="" action="index.html" method="post">
            <div class="mb-3">
              아이디⭐ <br>
              <input type="text" class="form-control bg-smoke" required placeholder="아이디를 입력해주세요.">
            </div>

            <div class="mb-3">
              이름⭐<br>
              <input type="text" class="form-control bg-smoke" required placeholder="이름">
            </div>
  
            <div class="mb-3">
              비밀번호⭐<br>
              <input type="password" class="form-control bg-smoke" required placeholder="비밀번호">
            </div>

            <div class="mb-3">
              비밀번호 확인⭐<br>
                <input type="password" class="form-control bg-smoke" required placeholder="비밀번호 확인">
                <p>(영문 대소문자/숫자/특수문자중 2가지 이상 조합, 8자~16자)</p>
              </div>

            <div class="mb-3">
              이메일⭐<br>
                <input type="email" class="form-control bg-smoke" required placeholder="이메일을 입력해주세요.">
            </div>

            <div class="mb-3">
               닉네임 <br>
                <input type="text" class="form-control bg-smoke" required placeholder="닉네임을 입력해주세요.">
            </div>

            <div class="mb-3" style="padding-bottom: 15px;">
                성별 <br>
                <input type="radio" name="gender" id="m" value="M">
                <label for="m">남자</label>
                <input type="radio" name="gender" id="f" value="F">
                <label for="f">여자</label>
            </div>

            <div class="mb-3">
              <h5>이용약관 동의</h5>
                <input type="checkbox" name="agreeAll" id="agreeAll"" />
                <label for="agreeAll">약관 전체 동의</label><br />
                <input type="checkbox" name="agree" id="agreeAge" />
                <label for="agreeAge">[필수] 만14세 이상</label><br />
                <input type="checkbox" name="agree" id="agreeTerms" />
                <label for="agreeTerms">[필수] 이용약관 동의</label><br />
                <input type="checkbox" name="agree" id="agreePrivacy"  />
                <label for="agreePrivacy">[필수] 개인정보 수집 및 이용 동의</label><br />
                <input type="checkbox" name="agree" id="agreeMarketing" />
                <label for="agreeMarketing">[선택] 광고성 정보 수신 및 마케팅 활용 동의</label><br />
              </div>

              <script>
                $(document).ready(function() {
                  $("#agreeAll").click(function() {
                    if($("#agreeAll").is(":checked")) $("input[name=agree]").prop("checked", true);
                      else $("input[name=agree]").prop("checked", false);
                  });

                  $("input[name=agree]").click(function() {
                    var total = $("input[name=agree]").length;
                    var checked = $("input[name=agree]:checked").length;

                    if(total != checked) $("#agreeAll").prop("checked", false);
                    else $("#agreeAll").prop("checked", true); 
                  });
                });
              </script>

            <div class="d-grid" style="padding-bottom: 15px ;">
              <button type="submit" class="btn btn-primary btn-block text-uppercase" disabled id="enrollBtn">가입하기</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

</body>
</html>