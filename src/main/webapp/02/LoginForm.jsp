<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
</head>
<body>
    <h1>로그인</h1>
    <%
        String loginErr = request.getParameter("loginErr");
        if(loginErr != null) {
            out.println("로그인에 실패하였습니다");
        }
    %>

<form action="ResponseLoginEX.jsp" method="post">
    아이디 : <input type="text" name="id"><br>
    패스워드 : <input type="text" name="pwd"><br>
    <input type="submit" value="로그인">
</form>
</body>
</html>
