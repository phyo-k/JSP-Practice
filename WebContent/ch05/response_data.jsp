<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
	
<%	
    request.setCharacterEncoding("EUC-KR");
    String hpg = request.getParameter("homepage");
    	
    if(hpg.equals("google")){
    	response.sendRedirect("http://www.google.com");
    }
    else  {
    	response.sendRedirect("http://www.naver.com");   
    }
%>