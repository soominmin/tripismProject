<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#btn_pwd{
		background-color: RGB(112, 217, 223);
		border: RGB(112, 217, 223);
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

               	<div class="mb-4" style="padding-top: 35px;">
             		<h3 class="text-uppercase mb-3" align="center">Tripism 비밀번호 재설정</h3>
           		</div>
               
           <form action="pwdUpdateMypage.do" method="post">
             <div class="form-group mb-4" style="width: 400px; margin: auto; padding-top: 40px;">
               <input type="password" name="memPwd" id="memPwd" class="form-control bg-smoke" required placeholder="새로운 비밀번호">
					<div style="float:left;"><p style="margin:0;" id="pwdCheck1">영문</p></div>
					<div style="float:left;"><p style="margin:0;" id="pwdCheck2">&nbsp; 숫자</p></div>
					<div style="float:left;"><p style="margin:0;" id="pwdCheck3">&nbsp; 특수문자 &nbsp;</p></div>
					<div style="float:left;"><p style="margin:0;" id="pwdCheck4">&nbsp;  2가지 이상,</p></div>
					<div style="float:left;"><p style="margin:0;" id="pwdCheck5">&nbsp; 8~16자</p></div>
					<div id="pwdResult" style="font-size:0.9em; padding-top:0px; float:left; padding-bottom:10px;"></div>
              </div>
             
		 <div class="form-group mb-4" style="width: 400px; padding-top:15px; margin: auto;">
		   <input type="password" name="pwdCheck" class="form-control bg-smoke" required placeholder="비밀번호 확인">
 			<div id="pwdCheckResult" style="font-size:0.9em; padding-top:0px; float:left;"></div>
         </div>
             
         <div class="pt-2" style="text-align: center;">
           	<input type="hidden" name="memId" value="${loginUser.memId }">
           	<input type="hidden" name="email" value="${loginUser.email }">
           	<input type="hidden" name="memName" value="${loginUser.memName }">
	        <button type="submit" class="btn btn-primary text-uppercase font-size-15 px-6 px-md-7" id="btn_pwd">확인</button>
	     </div>
	       </form>
	         </div>
	       <jsp:include page="../member/mypageSidebar.jsp"/>
	          </div>
	        </div>
			</section>
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

                              
<jsp:include page="../common/footer.jsp"/>
</body>
</html>