<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%
	Cookie[] cookies = request.getCookies();
	out.println("현재 설정된 쿠키의 개수 => " + cookies.length + "<br>");
	out.println("==========================<br>");
	for (int i = 0; i < cookies.length; i++) {
		out.println("설정된 쿠키의 속성 이름 [ " + i + " ] : " + cookies[i].getName() + "<br>");
		out.println("---------------------------------------------<br>");
	}
	%>
	<p><a href="cookie.jsp">처음 쿠키 페이지로 이동</a>
</body>
</html>