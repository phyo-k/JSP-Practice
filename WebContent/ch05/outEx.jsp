<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<%@ page buffer="5kb" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Out Example</title>
</head>
<body>
<%
int total = out.getBufferSize();
int remain = out.getRemaining();
int used = total - remain;
%>
	<h1>Out Example1</h1>
	<b>현재 페이지의 Buffer 상태</b><p/>
        출력Buffer의 전체 크기 : <%= total %>byte
	남은 Buffer의 크기 : <%= remain %>byte
	현재 Buffer의 사용량 : <%= used %>byte
 

</body>

</html>
