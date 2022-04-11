<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h3>입력에 성공했습니다.</h3>
   <%
      request.setCharacterEncoding("utf-8");
   
      String id = request.getParameter("id");
      String password = request.getParameter("passwd");
      String password2 = request.getParameter("passwd2"); 
      String number1 = request.getParameter("number1");
      String number2 = request.getParameter("number2");
      String phone1 = request.getParameter("num1");
      String phone2 = request.getParameter("num2");
      String phone3 = request.getParameter("num3");
      String email = request.getParameter("email");
   %>
   
   <p>아이디 : <%=id %></p>
   <p>비밀번호 : <%=password %></p>
   <p>비밀번호 확인 : <%=password2 %></p>
   <p>주민번호 : <%=number1 %>-<%=number2 %>
   <p>연락처 : <%=phone1 %>-<%=phone2 %>-<%=phone3 %>
   <p>이메일 : <%=email %>
</body>
</html>