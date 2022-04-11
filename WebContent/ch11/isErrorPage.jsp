<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isErrorPage="true"%>

<html>
<head>
<title>Exception</title>
</head>
<body>
	  <h4>오류 발생</h4>
      <table  border = "1">
         <tr>
            <td width = "20%"><b>Error:</b></td>
            <td>${pageContext.exception}</td>
         </tr>            
         <tr >
            <td><b>URI:</b></td>
            <td>${pageContext.errorData.requestURI}</td>
         </tr>            
         <tr >
            <td><b>Status code:</b></td>
            <td>${pageContext.errorData.statusCode}</td>
         </tr>  
         <tr >
            <td><b>to String</b></td>
            <td><%= exception.toString()%></td>
         </tr>
         <tr >
            <td><b>get Message</b></td>
            <td><%= exception.getMessage()%></td>
         </tr>
      </table>
</body>
</html>