<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Request Example1</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String sex = request.getParameter("sex");
		String department = request.getParameter("department");
	%>
	<p>	성명 : <%=name%>
	<p>	학번 : <%=id%>
	<p> 성별 : <%=sex%>
	<p> 전공 : <%=department%>
</body>
</html>