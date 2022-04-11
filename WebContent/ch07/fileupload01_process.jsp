<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<%
		MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5 * 1024 * 1024, "utf-8", 	new DefaultFileRenamePolicy());

		String name = multi.getParameter("name");		
		String address = multi.getParameter("address");
		String comment = multi.getParameter("comment");
		
		Enumeration files = multi.getFileNames();

		String file = (String) files.nextElement();
		String filename = multi.getFilesystemName(file);
		String original = multi.getOriginalFileName(file);
		String filename1 = multi.getFilesystemName(file);
		File ffile = multi.getFile(file);
	%>
	<table border="1">
		<tr>
			<th width="100">이름</th>
			<th width="100">값</th>
		</tr>
		<%
			out.print("<tr><td>" + "이름" + "</td>\n");
			out.print("<td>" + name + "</td></tr>\n");

			out.print("<tr><td>" + "주소" + "</td>\n");
			out.print("<td>" + address + "</td></tr>\n");
		
			out.print("<tr><td>" + "설명" + "</td>\n");
			out.print("<td>" + comment + "</td></tr>\n");

			out.print("<tr><td>" + "파일이름" + "</td>\n");
			out.print("<td>" + filename + "</td></tr>\n");			
		
			out.print("<tr><td>" + "요청파라미터 이름" + "</td>\n");
			out.print("<td>" + file + "</td></tr>\n");
		
			out.print("<tr><td>" + "실제 파일 이름" + "</td>\n");
			out.print("<td>" + original + "</td></tr>\n");
		
			out.print("<tr><td>" + "저장 파일 이름" + "</td>\n");
			out.print("<td>" + filename1 + "</td></tr>\n");
		
			if (ffile != null){
				out.print("<tr><td>" + "파일 크기" + "</td>\n");
				out.print("<td>" + ffile.length() + "</td></tr>\n");
			}
		%>
	</table>
</body>
</html>