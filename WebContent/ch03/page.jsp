<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.lang.Math, java.util.Date" %>
<html>
<head>
<meta charset="utf-8">
<title>Directive Tag</title>
</head>
<body>
	<% Date date = new java.util.Date(); %>
	���� ��¥ : <%= date %><br>
	5�� ���� : <%= Math.pow(5,2) %>
</body>
</html>