<%@ page contentType="text/html; charset=utf-8" import="java.util.Date" import="java.text.SimpleDateFormat"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");

		Date time = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분 ss초");
	%>
	
	<p><%=sf.format(time) %>
	<p>
	
	<%

		if(id.equals("admin")&&passwd.equals("admin1234")){
			session.setAttribute("userID", id);
			session.setAttribute("userPWD", passwd);
			out.println("Admin님 세션 설정이 성공했습니다.");
		}
		else{
			out.println("세션 연결에 실패하였습니다.");
		}
	%>
	<p><a href="welcome.jsp">다음 페이지로 이동</a>
</body>
</html>