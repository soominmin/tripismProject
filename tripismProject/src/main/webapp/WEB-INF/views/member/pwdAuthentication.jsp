<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  #infoUpdate{
    background-color: RGB(112, 217, 223);
    border: none;
    width: 100px;
  }

  #Authentication{
    background-color: rgba(240, 248, 255, 0.199);
    border: 1px solid black;
    border-radius: 7px 7px 7px 7px;
    width: 130px;
    height: 40px;
  }
  
  #Authentication:hover{
  	background-color:RGB(112, 217, 223);
  	color:white;
  	border:RGB(112, 217, 223);
  }
  
  #authCheck{
  	background-color:RGB(112, 217, 223);
  	border:RGB(112, 217, 223);
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
            <div class="col-lg-6" style="margin: auto;" align="center">
              <div class="mb-4" style="padding-top:20px;">
                <h3 class="text-uppercase mb-3">본인확인 인증</h3>
                <p>이메일로 본인인증을 할 수 있습니다.</p>
              </div>
              
              <div class="modal-body" style="padding-top:0;">
	                  <div class="mb-3" style="width:450px;">
	                    <input type="text" name="email" id="email" class="form-control bg-smoke" value="${pwdfind.email }" style="width: 300px; float: left; font-weight: bold;" readonly>
	                    <div><button type="submit" id="Authentication" name="Authentication">인증번호 받기</button></div>
	                  </div>
    
                  <div class="mb-3">
                    <input type="text" class="form-control bg-smoke" id="pwdAuthNum" name="pwdAuthNum" placeholder="인증번호 6자리를 입력해주세요." style="width:448px" maxlength="6" required>
                  </div>
					<span id="resultMsg"></span>
                  <div class="row" style="text-align: center;">
                    <div class="pt-3">
                      <input type="hidden" name="memPwd" id="memPwd" value="${pwdfind.memPwd }">
                      <input type="hidden" name="memid" id="memId" value="${pwdfind.memId }">
                      <input type="hidden" name="memName" id="memName" value="${pwdfind.memName }">
                      <button type="submit" onclick="location.href='pwdUpdateForm.do'" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6" id="authCheck" disabled>확인</button>
                    </div>
                </div>
            </div>


         
        </div>
      </div>
    </div>
  </div>
  </div>
</div>
</section>

<script>
	// 인증번호 발송
	$('#Authentication').click(function() {
		const email = $('#email').val(); // 이메일 주소값 얻어오기!
		console.log('완성된 이메일 : ' + email); // 이메일 오는지 확인
		const checkInput = $('#pwdAuthNum') // 인증번호 입력하는곳 
		
		$.ajax({
			type : 'get',
			url : "pwdAuth.do?email=" + email, // GET방식이라 Url 뒤에 email을 묻힐수있다.
			success : function (data) {
				code =data;
				alert('인증번호가 전송되었습니다.')
			}			
		}); // end ajax
	}); // end send eamil
	
	// 인증번호 비교하기
	// blur -> focus가 벗어나는 경우 발생
	$('#pwdAuthNum').blur(function(){
		const inputCode = $(this).val();
		console.log(inputCode);
		const $resultMsg = $('#pwdAuthNum');
		
		if(inputCode == code){
			$('#resultMsg').html('인증번호가 일치합니다.');
			$('#resultMsg').css('color','green');
			$('#authCheck').attr('disabled', false);
		}else{
			$('#resultMsg').html('인증번호가 불일치 합니다. 다시 확인해주세요!.');
			$('#resultMsg').css('color','red');
		}
	});
	
</script>


<jsp:include page="../common/footer.jsp"/>
</body>
</html>