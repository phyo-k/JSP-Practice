<%@ page contentType="text/html; charset=utf-8"%>
<%@ page errorPage="isErrorPage.jsp"%>
<html>
<head>
<title>Exception</title>
</head>
<body>
      <%
         
		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id").toLowerCase();
		String passwd = request.getParameter("passwd");

		out.println("아이디 : " + id + "<br>");
		out.println("비밀번호 : " + passwd + "<br>");
         
       
         if(id.equals("") || passwd.equals("")){
        	 throw new RuntimeException("오류 발생!!!");
         }
        
      %>

</body>
</html>