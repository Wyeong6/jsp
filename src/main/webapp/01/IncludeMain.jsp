<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="IncludeFile.jsp"%>
<html>
<head>
    <title>Include 지시어</title>
</head>
<body>
    <%
        out.println("오늘 날짜 : " + today + "</br>");
        out.println("내일 날짜 : " + tomorrow + "</br>");
        out.println("안녕하세요반갑습니다테스트세트스트");
    %>

</body>
</html>
