<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>세션사용예제(세션설정)</title>
</head>
<body>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");

		if (user_id.equals("rorod") && user_pw.equals("1234")) {
			session.setAttribute("idKey", user_id);
			session.setAttribute("pwdKey", user_pw);
			out.println("세션 설정이 성공했습니다<br>");
		} else {
			out.println("세션 설정이 실패했습니다");
		}
	%>
	<a href="viewSessionInfo.jsp">세션정보를 확인하는 페이지로 이동</a>
</body>
</html>