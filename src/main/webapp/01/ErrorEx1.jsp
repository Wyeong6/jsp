<%@ page contentType="text/html;charset=UTF-8" language="java"
errorPage="IsErrorPage.jsp" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>에러페이지</title>
</head>
<body>
<%
  int myAge = Integer.parseInt(request.getParameter("age")) + 10;
  out.println("10년후 당신의 나이는" + myAge + "입니다");
%>
</body>
</html>
