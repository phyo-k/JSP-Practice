<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
<table border="1">
	<tr>
	<th>이름</th>
	<th>값</th>
	</tr>
	<%
		request.setCharacterEncoding("UTF-8");
	
		StringBuffer name = new StringBuffer(request.getParameter("name"));
		StringBuffer address = new StringBuffer(request.getParameter("address"));
		StringBuffer email = new StringBuffer(request.getParameter("email"));
		StringBuffer sex = new StringBuffer(request.getParameter("sex"));
	
	out.print("<tr><td>" + "제목" + "</td>\n");
	out.print("<td>" + "값" + "</td></tr>\n");
	
	out.print("<tr><td>" + "이름" + "</td>\n");
	out.print("<td>" + name + "</td></tr>\n");
	
	out.print("<tr><td>" + "주소" + "</td>\n");
	out.print("<td>" + address + "</td></tr>\n");
	
	out.print("<tr><td>" + "이메일" + "</td>\n");
	out.print("<td>" + email + "</td></tr>\n");
	
	out.print("<tr><td>" + "성별" + "</td>\n");
	out.print("<td>" + sex + "</td></tr>\n");
	%>
	
	</table>
	</body>
	</html>