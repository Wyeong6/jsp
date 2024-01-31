<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>내장객체 - request </title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String sex = request.getParameter("sex");
        String[] favo = request.getParameterValues("favo"); // favo는 여러개(복수선택) or 선택안함 이기때문에 values로 해서 값을여러개를 가져와 배열에 저장하는것이다
        String favoStr ="";
        if (favo != null){
            for(int i=0; i<favo.length; i++) { //그리고 선택한것들을 배열에담고 for문으로 배열의 i , i+ . .. 식으로 계속 출력하는것.
                favoStr += favo[i] + " ";
            }
         /*   for (String s : favo){
                favoStr += s + " ";
            }*/
        }

        String intro = request.getParameter("intro").replace("\r\n", "<br/>");
    %>

    <ul>
        <li>아이디 : <%=id%></li>
        <li>성별 : <%=sex%></li>
        <li>관심사 : <%=favoStr%></li>
        <li>자기소개 : <%=intro%></li>
    </ul>

</body>
</html>
