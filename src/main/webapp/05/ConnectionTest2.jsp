<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>연결테스트</title>
</head>
<body>
    <h2>연결 테스트</h2>
    <%
        String url = "jdbc:oracle:thin:@localhost:1521:XE";
        String id = "system";
        String pw = "oracle";
        String driver = "oracle.jdbc.OracleDriver";

        try{
            Class.forName(driver);
            Connection connection = DriverManager.getConnection(url,id,pw);
            System.out.println("오라클 연결 성공!");
        }catch (Exception e) {
            out.println("연결 오류입니다.");
    }
    %>

</body>
</html>
