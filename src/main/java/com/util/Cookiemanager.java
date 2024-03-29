package com.util;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Cookiemanager {

    //1. 쿠키생성
    //이름, 값, 유지기간 파라메터를 받아와서 새로운 쿠키 생성
    /**
     * @param  cName 쿠키 이름
     * @param  cValue 쿠키 값
     * @param  cTime 쿠키 유지기간(max age)
     * @throws 예외처리 하는 방식
    */


    public static void makeCookie(HttpServletResponse response, String cName,
                                  String cValue, int cTime){

        //쿠키생성
        Cookie cookie = new Cookie(cName,cValue);
        cookie.setPath("/"); //경로설정
        cookie.setMaxAge(cTime);//유지기간설정
        response.addCookie(cookie);// 응답 객체에 추가
    }


    //2. 쿠키 읽기
    public static String readCookie(HttpServletRequest request, String cName){
        String cookieValue = ""; // 반환값 선언
        Cookie[] cookies = request.getCookies();
        if(cookies != null){
            for(Cookie c : cookies){
                String cookieName = c.getName();
                if(cookieName.equals(cName)){
                    cookieValue = c.getValue(); // 반환값을 담아줌
                }
            }
        }
        return cookieValue;
    }

    //3. 쿠키 삭제
    public static void deleteCookie(HttpServletResponse response, String cName){
        makeCookie(response, cName,"",0);
    }
}
