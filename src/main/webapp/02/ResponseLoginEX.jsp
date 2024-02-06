<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Title</title>
</head>
<body>
<%
  String id = request.getParameter("id");
  String pwd = request.getParameter("pwd");

  if(id.equals("must") && pwd.equals("222")){
    response.sendRedirect("Welcome.jsp");
  }else {
    request.getRequestDispatcher("LoginForm.jsp?loginErr=1")
            .forward(request,response);
  }
%>
</body>
</html>
