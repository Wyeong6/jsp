<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("테스트","테스트의값");
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <%
        String name = (String) pageContext.getAttribute("테스트");
        out.println(name);
        name = "바보";
        out.println(name);
    %>
</body>
</html>
