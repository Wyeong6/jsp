<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%!
        String str1 = "JSP";
        String str2 = "안녕하세요";
        String str3 = "테스트";
        String str4 = "반갑습니다";
    %>
</head>
<body>
    <h2>처음 만들어보는 JSP</h2>
    <p>
        <%
            out.println(str4 + str3);
            out.println(str2 + str1 + "입니다. 열심히 공부합시다.");
        %>
    </p>
</body>
</html>