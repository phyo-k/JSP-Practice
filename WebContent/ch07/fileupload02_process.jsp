<%@page contentType="text/html; charset=utf-8"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<%
		String path = "C:\\upload";

		DiskFileUpload upload = new DiskFileUpload();

		upload.setSizeMax(1000000);
		upload.setSizeThreshold(4096);
		upload.setRepositoryPath(path);

		List items = upload.parseRequest(request);
		Iterator params = items.iterator();
	 %>
		<table border="1">
		<tr>
			<th width="100">이름</th>
			<th width="100">값</th>
		</tr>
	 <%
		while (params.hasNext()) {
			FileItem item = (FileItem) params.next();

			if (item.isFormField()) {
				String name = item.getFieldName();
				String value = item.getString("utf-8");
				out.print("<tr><td>" + name + "</td>\n");
				out.print("<td>" + value + "</td></tr>\n");
			} else {
				String fileFieldName  = item.getFieldName();				
				String fileName = item.getName();
				String contentType = item.getContentType();

				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
				long fileSize = item.getSize();

				File file = new File(path + "/" + fileName);
				item.write(file);

				out.print("<tr><td>" + "요청 파라미터 이름" + "</td>\n");
				out.print("<td>" + fileFieldName + "</td></tr>\n");
				
				out.print("<tr><td>" + "저장 파일 이름" + "</td>\n");
				out.print("<td>" + fileName + "</td></tr>\n");
				
				out.print("<tr><td>" + "파일 콘텐츠 유형" + "</td>\n");
				out.print("<td>" + contentType + "</td></tr>\n");
				
				out.print("<tr><td>" + "파일 크기" + "</td>\n");
				out.print("<td>" + fileSize + "</td></tr>\n");

			}
		}
	%>
	</table>
</body>
</html>