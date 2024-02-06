<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
  <h2>로그인 페이지2</h2>
  <span style="color:red; font-size:1.2em;">
    <%=request.getAttribute("LoginErrMsg2") == null ? "" : request.getAttribute("LoginErrMsg2")%>
  </span>
  <%
  if(session.getAttribute("UserId") == null){
    %>
  <script>
    function validateForm(from) {
      if (!form.user_id.value) {
        alert("아이디를 입력하세요.")
        return false;
      }
      if (form.user_pw.value == "") {
        alert("패스워드를 입력하세요.");
        return false;
      }
    }
  </script>
<form action=""
</body>
</html>
