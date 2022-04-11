<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
   <script type="text/javascript">
      function formCheck() {
         var form = document.loginForm;
         for (i = 0; i < form.id.value.length; i++) {
            var ch = form.id.value.charAt(i);

            if ((ch < 'a' || ch > 'z') && (ch > 'A' || ch < 'Z') && (ch > '0' || ch < '9')) {
               alert("아이디는 영문만 입력 가능 합니다!");
               form.id.select();
               return;
            }
         }

         if (form.id.value.length < 5) {
            alert("아이디는5자 이상 입력 가능합니다!");
            form.id.select();
            return;
         }

         
         if ((form.password.value).search(form.id.value) > -1) {
            alert("비밀번호는 ID를 포함할 수 없습니다.");
            return false;
         }
         
         if (form.title.value == "") {
            alert("제목은 공백으로 둘 수 없습니다 제목을  입력해주세요..!");
            form.title.focus();
            return;
         }

         if (!isNaN(form.title.value.substr(0, 1))) {
            alert("제목은 숫자로 시작할 수 없습니다.");
            form.title.focus();
            return;
         }

         form.submit();

      }
   </script>

<body>
   
   <form action="validation01_process.jsp" method="post" name="loginForm">
      <p>아이디 : <input type="text" name="id"></p>
      <p>비밀번호 : <input type="text" name="password"></p>
      <p>제목 : <input type="text" name="title"></p>
      <input type="button" value="전송" onclick="formCheck()">
   </form>
</html>