<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  #btn_pwd, #infoUpdate{
    background-color: RGB(112, 217, 223);
    border: none;
  }
  
  #infoUpdate{
  	width:100px;
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
                <h3 class="text-uppercase mb-3">비밀번호 변경</h3>
                <p>비밀번호를 재설정 합니다.</p>
              </div>
              
              <form action="pwdUpdate.do"  method="post">
              <div class="modal-body" style="width:405px; margin-left:20px;">
                  <div class="mb-3">
                    <input type="text" class="form-control bg-smoke" value="${pwdfind.memId }" name="memId" readonly>
                  </div>
                  
                  
                 <div class="mb-3" style="width: 373px; margin: auto;">
					<input type="password" name="memPwd" id="memPwd" class="form-control bg-smoke" required placeholder="새로운 비밀번호">
					<div style="float:left;"><p style="margin:0;" id="pwdCheck1">영문</p></div>
					<div style="float:left;"><p style="margin:0;" id="pwdCheck2">&nbsp; 숫자</p></div>
					<div style="float:left;"><p style="margin:0;" id="pwdCheck3">&nbsp; 특수문자 &nbsp;</p></div>
					<div style="float:left;"><p style="margin:0;" id="pwdCheck4">&nbsp;  2가지 이상,</p></div>
					<div style="float:left;"><p style="margin:0;" id="pwdCheck5">&nbsp; 8~16자</p></div>
					<div id="pwdResult" style="font-size:0.9em; padding-top:0px; float:left; padding-bottom:10px;"></div>
				</div>

				<div class="mb-3" style="width: 373px; margin: auto;">
					<input type="password" name="pwdCheck" class="form-control bg-smoke" required placeholder="비밀번호 확인">
				<div id="pwdCheckResult" style="font-size:0.9em; padding-top:0px; float:left;"></div>
				</div>

                  <div class="row" style="text-align: center;">
                    <div class="pt-3">
                    	<input type="hidden" value="${pwdfind.email }" name="email">
                    	<input type="hidden" value="${pwdfind.memName }" name="memName">
                    	<input type="hidden" value="${pwdfind.memNo }" name="memNo">
                      <button type="submit" class="btn btn-primary text-uppercase font-size-15 px-3 px-md-6" id="infoUpdate" >확인</button>
                    </div>
                </div>
            </div>
            </form>
        </div>
      </div>
    </div>
  </div>
  </div>
</div>

<script>
	const memPwd = document.querySelector('#memPwd');
	const pwdCheck1 = document.querySelector('#pwdCheck1');
	const pwdCheck2 = document.querySelector('#pwdCheck2');
	const pwdCheck3 = document.querySelector('#pwdCheck3');
	const pwdCheck4 = document.querySelector('#pwdCheck4');
	const pwdCheck5 = document.querySelector('#pwdCheck5');
	const pwdResult = document.querySelector('#pwdResult');
	
	memPwd.addEventListener('input', () => {
	    const password = memPwd.value;
	    let count = 0;
	
	    if (/^(.*[a-zA-Z]){2,}.*$/.test(password)) {
	        pwdCheck1.style.color = 'green';
	        count++;
	    } else {
	        pwdCheck1.style.color = '';
	    }
	
	    if (/[0-9]/.test(password)) {
	        pwdCheck2.style.color = 'green';
	        count++;
	    } else {
	        pwdCheck2.style.color = '';
	    }
	
	    if (/[\W_]/.test(password)) {
	        pwdCheck3.style.color = 'green';
	        count++;
	    } else {
	        pwdCheck3.style.color = '';
	    }
	
	    if (/^(?=.*[a-zA-Z].*[a-zA-Z])(?=.*\d.*\d)(?=.*[!@#$%^&*()_\-+=\[{\]}\|\\,.?/;:<>`~].*[!@#$%^&*()_\-+=\[{\]}\|\\,.?/;:<>`~])/.test(password)) {
	        pwdCheck4.style.color = 'green';
	    } else {
	        pwdCheck4.style.color = '';
	    }
	
	    if (password.length >= 8 && password.length <= 16) {
	        pwdCheck5.style.color = 'green';
	    } else {
	        pwdCheck5.style.color = '';
	    }
	
	    if (/^(?=.*\d.*\d)(?=.*[a-zA-Z].*[a-zA-Z])(?=.*[^a-zA-Z0-9].*[^a-zA-Z0-9]).{8,16}$/.test(password)) {
	        pwdResult.textContent = '사용 가능한 비밀번호입니다.';
	        pwdResult.style.color = 'green'
	    } else {
	        pwdResult.textContent = '';
	    }
	});
	
	const pwdCheck = document.getElementsByName('pwdCheck')[0];
	const pwdCheckResult = document.getElementById('pwdCheckResult');
	
	// 비밀번호 확인 시 이벤트 처리
	pwdCheck.addEventListener('input', () => {
	  if (memPwd.value === pwdCheck.value) {
	    pwdCheckResult.style.color = 'green';
	    pwdCheckResult.textContent = '비밀번호가 일치합니다.';
	  } else {
	    pwdCheckResult.style.color = 'red';
	    pwdCheckResult.textContent = '비밀번호가 일치하지 않습니다.';
	  }
	});
</script>
</section>


<jsp:include page="../common/footer.jsp"/>

</body>
</html>