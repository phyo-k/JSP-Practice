<%@ page contentType="text/html; charset=utf-8" import="java.util.Date" import="java.text.SimpleDateFormat"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");

		Date time = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("오늘은 yyyy-MM-dd일 입니다.");
		SimpleDateFormat sf1 = new SimpleDateFormat("현재시각은 h시 m분 입니다.");
	%>
	
	<p><%=sf.format(time) %>
	<p><%=sf1.format(time) %>
	<p>

	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");

		if (user_id.equals("admin") && user_pw.equals("admin1234")) {
			Cookie cookie_id = new Cookie("userID", user_id);
			Cookie cookie_pw = new Cookie("userPW", user_pw);
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			out.println(user_id + "님 쿠기 설정이 성공했습니다<br>");
		} else {
			out.println("쿠키 생성이 실패했습니다");
		}
	%>
		<p><a href="welcome.jsp">다음 페이지로 이동</a>
</body>
</html>