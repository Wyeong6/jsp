<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Collection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <%
        //응답헤더 정보 추가용 메소드
        // add : 새로 추가할 때 set : 기존값 수정할 때
        //응답헤더에 추가할 값 준비


        SimpleDateFormat sd = new SimpleDateFormat("YYYY-MM-dd HH:mm");
        long add_date = sd.parse(request.getParameter("add_date")).getTime();
        int add_int = Integer.parseInt(request.getParameter("add_int"));
        String add_str = request.getParameter("add_str");

        //응답 헤더에 값 추가
        response.addDateHeader("today", add_date);
        response.addIntHeader("myNum", add_int);
        response.addIntHeader("myNum", 1000); //추가
        response.addHeader("myName", add_str);
        response.setHeader("myName", "안중근"); //수정
    %>
<head>
    <title>내장 객체 - response</title>
</head>
<body>
    <h2>응답 헤더 출력하기</h2>

    <%
        Collection<String> headerNames = response.getHeaderNames(); // getHeaderNames = 헤더네임을 모두 가져온다
        //콜렉션<스트링> 스트링타입의 배열 이름 headerNames로 생성하고 리스폰.겟헤더네임 = 응답받은 헤더네임을 모두 가져온다
        for(String hName : headerNames) {
            String hValue = response.getHeader(hName); //!! 중요 getHeader에 이름(name)을 넣으면 값(value)를 뱉어준다!!! 이게매우중요하다!!
        %>
          <li><%=hName%> : <%=hValue%> </li>
        <%
        }
        %>

        <h2>myNum 만 출력하기</h2>
        <%
            Collection<String> myNum = response.getHeader("myNum");
            //!! 중요 getHeader's' 다 겟헤더 가아니라 겟헤더즈다! 겟헤더즈(네임) = 그 네임의 모든 밸류를 가져온다!왜? s(복수형)니까
            for(String num : myNum) {
        %>
                <li>myNum : <%=num%></li>

        <%
            }
        %>
</body>
</html>
