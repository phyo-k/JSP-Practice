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

		String depart = request.getParameter("depart");
	
		ResultSet rs = null;
		Statement pstmt = null;
		
		try {
			String sql = "select depart from student where depart = '" + depart+"'";
			pstmt = conn.createStatement();
			rs = pstmt.executeQuery(sql);

			if (rs.next()) {
				String depart2 = rs.getString("depart");
				
				if (depart.equals(depart2)) {
					sql = "delete from student where depart = '" + depart+"'";
					pstmt = conn.createStatement();				
					pstmt.executeUpdate(sql);
					out.println("Student 테이블을 삭제했습니다.");
				} else
					out.println("Student 테이블을 삭제하지 못했습니다.");
			} else
				out.println("Student 테이블에 일치하는 학과가 없습니다.");
		} catch (SQLException ex) {
			out.println("SQLException: " + ex.getMessage());
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)

				conn.close();

		}
	%>
	<h2><a href="welcome.jsp">메인으로 돌아가기</a></h2>
</body>
</html>