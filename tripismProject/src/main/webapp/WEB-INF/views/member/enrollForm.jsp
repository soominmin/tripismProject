<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	#enroll{
	    background-color:  RGB(112, 217, 223);
	    border:none;
	    font-size: 16px;
	}
	
	#enrollBtn{
	  background-color: RGB(112, 217, 223);
	  border: none;
	  width: 400px;
	}
	
	
	#modal-body{
	    padding: 25px 25px;
	}
	
	#modalTop{
	  border-top: 6px solid RGB(112, 217, 223);
	}


		
</style>
</head>
<jsp:include page = "../common/header.jsp"/>

<body id="body" class="up-scroll">
	<section class="py-9">
		<div class="container">
		<div class="bg-smoke p-2 p-md-6 pb-6 pb-md-8 mb-9 rounded">
			<div class="row">
				<div class="col-12">
				  <div class="row">
					<div class="col-lg-6" style="margin: auto;">
					  <div class="mb-4" style="padding-top:40px;"  align="center" >
						<h3 class="text-uppercase mb-3">회원가입</h3>
						<p>회원가입을 통해 해당 홈페이지를 이용하실 수 있습니다.</p>
					  </div>

		<form action="insert.do" method="post" id="enrollForm">
		<div class="mb-3"  style="width: 400px; margin: auto;">
			아이디⭐ <br>
			<input type="text" name="memId" id="memId" class="form-control bg-smoke" required placeholder="아이디를 입력해주세요.">
		<div id="checkResult" style="font-size:1em"></div>
                    
        <div id="checkResult" style="font-size:1em; display:none"></div>
		</div>

		<div class="mb-3" style="width: 400px; margin: auto;">
			이름⭐<br>
			<input type="text" name="memName" class="form-control bg-smoke" required placeholder="이름">
		</div>

		<div class="mb-3" style="width: 400px; margin: auto;">
			비밀번호⭐<br>
			<input type="password" name="memPwd" id="memPwd" class="form-control bg-smoke" required placeholder="비밀번호">

			<div style="float:left;"><p style="margin:0;" id="pwdCheck1">영문</p></div>
			<div style="float:left;"><p style="margin:0;" id="pwdCheck2">&nbsp; 숫자</p></div>
			<div style="float:left;"><p style="margin:0;" id="pwdCheck3">&nbsp; 특수문자 &nbsp;</p></div>
			<div style="float:left;"><p style="margin:0;" id="pwdCheck4">&nbsp;  2가지 이상,</p></div>
			<div style="padding:0px;"><p style="margin:0;" id="pwdCheck5">&nbsp; &nbsp;  8~16자</p></div>
			<div id="pwdResult" style="font-size:0.9em; padding-top:0px;"></div>

			
		</div>

		<div class="mb-3" style="width: 400px; margin: auto;">
			비밀번호 확인<br>
			<input type="password" name="pwdCheck" class="form-control bg-smoke" required placeholder="비밀번호 확인">
		<div id="pwdCheckResult" style="font-size:0.9em; padding-top:0px;"></div>
		</div>

		<div class="mb-3" style="width: 400px; margin: auto;">
			이메일⭐<br>
			<input type="email" name="email"class="form-control bg-smoke" required placeholder="이메일을 입력해주세요.">
		</div>

		<div class="mb-3" style="width: 400px; margin: auto;">
			닉네임⭐ <br>
			<input type="text" name="memNickname" class="form-control bg-smoke" required placeholder="닉네임을 입력해주세요.">
				<div id="nicknameResult" style="font-size:1em"></div>
                    
        		<div id="nicknameResult" style="font-size:1em; display:none"></div>
		</div>

		<div class="mb-3" style="padding-bottom: 15px; width: 400px; margin: auto;">
			성별 <br>
			<input type="radio" name="gender" id="m" value="M" >
			<label for="m">남자</label>
			<input type="radio" name="gender" id="f" value="F">
			<label for="f">여자</label>
		</div>

		<div class="mb-3" style="width: 400px; margin: auto;" >
			<h5>이용약관 동의</h5>
			<input type="checkbox" name="agreeAll" id="agreeAll" />
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

			

	<div class="d-grid" style="padding-bottom: 40px; width: 400px; margin: auto;">
		<button type="submit" class="btn btn-primary btn-block text-uppercase" id="enrollBtn">가입하기</button>
	</div>
	</form>
	
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
			
			
			$(function(){
				
				const $idInput = $("#enrollForm input[name=memId]");
				
				$idInput.keyup(function(){
					console.log($idInput.val());
					
					if($idInput.val().length >= 5) {
						
						$.ajax({
	    					url:"idCheck.do",
	    					data:{checkId:$idInput.val()},
	    					success:function(count){
	    						
	    						if(count == "NNNNN") { // 사용불가능
	    							
	    							// => 빨간색 메시지 (사용불가능)
	    							$("#checkResult").show();
	    							$("#checkResult").css("color", "red").text("중복되었거나 탈퇴된 아이디입니다.");
	    							
	    						} else {	// 사용가능
	    							
	    							// => 초록색 메시지(사용가능) 출력
	    							$("#checkResult").show();
	    							$("#checkResult").css("color", "green").text("멋진 아이디네요!");
	    							
	    						}
							}, error : function(){	
										console.log("ajax 통신 실패");
							}
						});
					}else {
							$("#checkResult").hide();
							$("#enrollForm :submit").attr("disabled", true);
						}
					})
			})
			
			
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
		    
		    
			$(function(){
							
				const $nicknameInput = $("#enrollForm input[name=memNickname]");
				
				$nicknameInput.keyup(function(){
					console.log($nicknameInput.val());
					
					if($nicknameInput.val().length >= 1) {
						
						$.ajax({
	    					url:"nicknameCheck.do",
	    					data:{checkNickname:$nicknameInput.val()},
	    					success:function(count){
	    						
	    						if(count == "NNNNN") { // 사용불가능
	    							
	    							// => 빨간색 메시지 (사용불가능)
	    							$("#nicknameResult").show();
	    							$("#nicknameResult").css("color", "red").text("중복된 닉네임입니다.");
	    							
	    							
	    						} else {	// 사용가능
	    							
	    							// => 초록색 메시지(사용가능) 출력
	    							$("#nicknameResult").show();
	    							$("#nicknameResult").css("color", "green").text("사용가능한 닉네임입니다.");
	    							
	    						}
							}, error : function(){	
										console.log("ajax 통신 실패");
							}
						});
					}
					})
			})
			
			</script>
	</div>
	</div>
	</div>
	</div>
	</div>
	
	</div>
</section>
	  
<jsp:include page = "../common/footer.jsp"/>
</body>
</html>