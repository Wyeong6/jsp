package com.filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;

import java.io.IOException;

@WebFilter(filterName = "AnnoFilter",urlPatterns = "/15/AnnoFilter.jsp")
public class AnnoFilter implements Filter {

    FilterConfig config;


    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        config = filterConfig;
        String filterName = filterConfig.getFilterName();
        System.out.println("BasicFilter -> init() 호출 됨 : " + filterName);

    }
    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain filterChain) throws IOException, ServletException {
        String searchFiled = req.getParameter("searchFiled");
        String searchWord = req.getParameter("searchWord");

        System.out.println("검색 필드 : " + searchFiled);
        System.out.println("검색어 : " + searchWord);
        filterChain.doFilter(req,resp);
    }

    @Override
    public void destroy() {
        System.out.println("BasicFilter -> destroy()호출됨");    }
}
