<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Directives Tag</title>
</head>
<body>
	<%@ include file = "header.jsp" %>
	���� �ð�: <%= java.util.Calendar.getInstance().getTime() %>
</body>
</html>