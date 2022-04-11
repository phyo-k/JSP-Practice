<%@ page contentType="text/html; charset=EUC-KR"%>
	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	%>
	<h1>Forward Tag Example1</h1>
	당신의 아이디는 <b><%= id %>이고</b><p/>
	패스워드는 <b><%= pw %>입니다.