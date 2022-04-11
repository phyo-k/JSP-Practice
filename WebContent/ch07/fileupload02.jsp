<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<form action="fileupload02_process.jsp" enctype="multipart/form-data" method="post">
		<p>이름 : <input type="text" name="name">
		<p>주소 : <input type="text" name="address">
		<p>파일 : <input type="file" name="file1">
		<p>설명 : <textarea name="comment" cols="10" rows="10"></textarea>
		<p><input type="submit" value="파일 올리기">
	</form>
</body>
</html>