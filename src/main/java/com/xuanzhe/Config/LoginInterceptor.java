package com.xuanzhe.Config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.HandlerInterceptor;

public class LoginInterceptor implements HandlerInterceptor {

  @Override
  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
      throws Exception {
    if(request.getRequestURI().contains("processLogin")){
      return true;
    }
   // HttpSession session = (HttpSession) request.getAttribute("motDePasse");
    if(request.getSession().getAttribute("motDePasse")!=null){
      return true;
    }
    request.getRequestDispatcher("/WEB-INF/jsp/404.jsp").forward(request,response);
    return false;
  }

}
