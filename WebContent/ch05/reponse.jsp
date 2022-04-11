<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<html>
<head>
<title>Response</title>
</head>
<body>
	현재시간은 <%=new java.util.Date() %></p>
	<%
	response.setIntHeader("Refresh", 5);
	%>
	<form action="response_data.jsp" method="POST">
	<input type="radio" name="homepage" value="google"> 
		 Googgle 홈페이지로 이동하기<br>
	<input	type="radio" name="homepage" value="naver"> 
		 Naver 홈페이지로 이동하기<br>
	<input type="submit" value="전송">
	</form>
</body>
</html>