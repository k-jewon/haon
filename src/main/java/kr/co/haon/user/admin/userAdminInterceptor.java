package kr.co.haon.user.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class userAdminInterceptor extends HandlerInterceptorAdapter {
   private static final Logger logger = LoggerFactory.getLogger(userAdminInterceptor.class);

   static final String[] EXCLUDE_URL_LIST = { "/admin/login"};

   @Override
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
         throws Exception {
      String reqUrl = request.getRequestURL().toString();
//      로그인체크 제외 리스트
      for (String target : EXCLUDE_URL_LIST) {
         if (reqUrl.indexOf(target) > -1) {
            return true;
         }
      }
      HttpSession session = request.getSession();
      String userId = (String) session.getAttribute("userId");

      if (userId == null || userId.trim().equals("")) {
          logger.info(">> interceptor catch!! userId is null..");
          session.invalidate();
          response.sendRedirect(request.getContextPath() + "admin/login.do");
          return false;
       }
       return true;
   }

}