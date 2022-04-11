<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<script type="text/javascript">
function check(){
	var regExpId = /^[a-z]*$/;
	var regExpPasswd = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
	var regExpNumber = /^\d{6}-\d{7}$/;
	var regExpPhone = /^\d{3}-\d{2,3}-\d{4}$/;
	var regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

	var form = document.Member;

	var id = form.id.value;
	var passwd = form.passwd.value;
	var passwd2 = form.passwd2.value;
	var number = form.number1.value+"-"+form.number2.value;
	var phone = form.num1.value + "-" + form.num2.value + "-" + form.num3.value;
	var email = form.email.value;		

	if (!regExpId.test(id)) {
		alert("아이디는 영소문자로 입력하세요!");
		form.id.select();
		return;
	}
	
	const passWD = String(passwd); 
	for (i = 0; i < passWD.length -2; i++) { 
		if(passWD[i] == passWD[i+1] && passWD[i+1] == passWD[i+2]) {
			alert("영문, 숫자는 3자 이상 연속 입력할 수 없습니다."); 
			form.passwd.select(); 
			return; 
		} 
	}
	
	if(!regExpPasswd.test(passwd)) { 
		alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다."); 
		form.passwd.select(); 
		return; 
	}

	if (passwd != passwd2) { 
		alert("비밀번호와 비밀번호 확인을 다르게 입력하였습니다"); 
		form.passwd.select(); 
		return; 
	}
	
	if (!regExpNumber.test(number)) {
		alert("주민번호 입력은 6자리 - 7자리입니다.");
		return;
	}

	if (!regExpPhone.test(phone)) {
		alert("연락처 입력은 3자리-2~3자리-4자리입니다.");
		return;
	}
	if (!regExpEmail.test(email)) {
		alert("이메일 입력을 확인해 주세요.");
		return;
	}
	
	form.submit(); 
}
</script>
<body>

<form action="validation02_process.jsp" name="Member" method="post">
<p> 아이디 : <input type="text" name="id">
<p> 비밀번호 : <input type="text" name="passwd">
<p> 비밀번호 확인 : <input type="text" name="passwd2">
<p> 주민번호 : <input type="text" name="number1" maxlength="6" size="6"> - <input type="text" name="number2" maxlength="7" size="7">
<p> 연락처 : <input type="text" name="num1" maxlength="4" size="4"> - <input type="text" name="num2" maxlength="4" size="4"> - <input type="text" name="num3" maxlength="4" size="4">
<p> 이메일 : <input type="text" name="email">
<p> <input type="button" value="전송" onclick="check();">
</form>
</body>
</html>