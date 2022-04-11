<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Enumeration"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		String name;
		String value;

		Enumeration en = session.getAttributeNames();
		
		while (en.hasMoreElements()) {
			name = en.nextElement().toString();
			value = session.getAttribute(name).toString();
			out.println("session name : " + name + "<br>");
			out.println("session value : " + value + "<br>");
		}
	%>
</body>
</html>