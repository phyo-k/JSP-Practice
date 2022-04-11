<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Request Example1</title>
</head>
<body>
	<h3>회원가입</h3>
	<form action="request1_1.jsp" name="member" method="post">
		<p>	이름 : <input type="text" name="name">
		<p>	학번 : <input type="text" name="id">
		<p>	성별 : <input type="radio" name="sex" value="남자" checked>남자 
				<input	type="radio" name="sex" value="여자">여자
		<p>	전공 : <select name="department">
				<option value="건축공학과">건축공학과</option>
				<option value="컴퓨터공학과">컴퓨터공학과</option>
				<option value="신소재공학과">신소재공학과</option>
				<option value="전자공학과">전자공학과</option>
				<option value="화학공학과">화학공학과</option>
			</select><br/>
		<p>	<input type="submit" value="보내기"> 
	</form>
</body>
<html>