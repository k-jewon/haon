package kr.co.haon.user.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.haon.user.UserVO;

@Component
public class UserAdminInterceptor extends HandlerInterceptorAdapter {
   private static final Logger logger = LoggerFactory.getLogger(UserAdminInterceptor.class);
   
   RedirectAttributes rattr;
   @Override
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
         throws Exception {     
         
      logger.debug("==================== LoggerInterceptor START ====================");
      HttpSession session = request.getSession();
      UserVO admin = (UserVO) session.getAttribute("login_info");
      
      System.out.println("===== preHandler START =====");
      System.out.println(admin);
      System.out.println("Request URL : {}" + request.getRequestURI());

      if (admin != null) {
         if(admin.getUser_admin() == 1) {
            return true;
         }else {
            response.sendRedirect("/");
            return false;
         }
      } else {
         if(request.getRequestURI().equals("/adminlogin") || (request.getMethod().equals("POST") && request.getRequestURI().equals("/admin"))) {
            return true;
         }else {
            response.sendRedirect("/adminlogin");
            return false;
         }
      }
   }
}