<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.lang.Math, java.util.Date" %>
<html>
<head>
<meta charset="utf-8">
<title>Directive Tag</title>
</head>
<body>
	<% Date date = new java.util.Date(); %>
	현재 날짜 : <%= date %><br>
	5의 제곱 : <%= Math.pow(5,2) %>
</body>
</html>