<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<h3>회원가입</h3>
	<form action="form02_process.jsp" name="member" method="post">
		<p>	이름 : <input type="text" name="name">
		<p> 주소 : <input type="text" name="adress">
		<p> 이메일 : <input type="text" name="email">
		<p>	성별 : <input type="radio" name="sex" value="남성" checked>남성 
				<input	type="radio" name="sex" value="여성" >여성
		<p>	<input type="submit" value="가입하기"> 
	</form>
</body>
<html>