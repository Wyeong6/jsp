<%@ page import="com.util.JSFunction" %>
<%@ page import="com.util.Cookiemanager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String user_id = request.getParameter("user_id");
  String user_pw = request.getParameter("user_pw");
  String save_check = request.getParameter("save_check");

  System.out.println(user_id + ":: " + user_pw);

  if("must".equals(user_id) && "1234".equals(user_pw)){
    //로그인 성공
    if(save_check != null && save_check.equals("Y")){
      Cookiemanager.makeCookie(response,"loginId",user_id,86400);
    }else {
      Cookiemanager.deleteCookie(response,"loginId");
    }
    JSFunction.alertLocation("로그인에 성공했습니다.","IdSaveMain.jsp",out);

  } else {
    //로그인 실패
    JSFunction.alertBack("로그인에 실패했습니다.",out);
  }
%>