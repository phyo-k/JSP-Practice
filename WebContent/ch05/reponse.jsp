<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<html>
<head>
<title>Response</title>
</head>
<body>
	����ð��� <%=new java.util.Date() %></p>
	<%
	response.setIntHeader("Refresh", 5);
	%>
	<form action="response_data.jsp" method="POST">
	<input type="radio" name="homepage" value="google"> 
		 Googgle Ȩ�������� �̵��ϱ�<br>
	<input	type="radio" name="homepage" value="naver"> 
		 Naver Ȩ�������� �̵��ϱ�<br>
	<input type="submit" value="����">
	</form>
</body>
</html>