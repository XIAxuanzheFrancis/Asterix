package com.xuanzhe.Config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.HandlerInterceptor;

public class LoginInterceptor implements HandlerInterceptor {

  @Override
  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
      throws Exception {
    if(request.getRequestURI().contains("processLogin")){
      return true;
    }
    if(request.getSession().getAttribute("motDePasse")!=null){
      return true;
    }
    request.getRequestDispatcher("/WEB-INF/jsp/pagePersonnel.jsp").forward(request,response);
    request.getRequestDispatcher("/WEB-INF/jsp/allusers.jsp").forward(request,response);
    return false;
  }

}
