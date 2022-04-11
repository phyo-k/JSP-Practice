<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String password[] = request.getParameterValues("passwd");
	%>
	<p>	아이디 : <%=id%>
	<p>	비밀번호 : <%=password%>
	<p>	이름 : <%=request.getParameterNames()%>
	<p>	학번 : <%=request.getParameterMap()%>
</body>
</html>