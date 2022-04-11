<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>Database SQL</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

	String num = request.getParameter("num");
	String passwd = request.getParameter("passwd");
	String depart = request.getParameter("depart");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	
	PreparedStatement pstmt = null;

	try {
		String sql = "insert into student(num, passwd, depart, name, address, phone, email) values(?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, Integer.valueOf(num));
		pstmt.setString(2, passwd);
		pstmt.setString(3, depart);
		pstmt.setString(4, name);
		pstmt.setString(5, address);
		pstmt.setString(6, phone);
		pstmt.setString(7, email);
		pstmt.executeUpdate();
		out.println("Student 테이블  삽입이 성공했습니다.");
	} catch (SQLException ex) {
		out.println("Student 테이블 삽입이 실패했습니다.<br>");
		out.println("SQLException: " + ex.getMessage());
	} finally {
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}
%>
<h2><a href="welcome.jsp">메인으로 돌아가기</a></h2>
</body>
</html>
