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
	
	static final String[] EXCLUDE_URL_LIST = { "/adminlogin", "/admin"};
	
	RedirectAttributes rattr;
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		String reqUrl = request.getRequestURL().toString();
		
//     	preHandler 로그인체크 제외 리스트
	      for (String target : EXCLUDE_URL_LIST) {
	         if (reqUrl.indexOf(target) > -1) {
	            return true;
	         }
	      }
	      
	      
		logger.debug("==================== LoggerInterceptor START ====================");
		HttpSession session = request.getSession();
		UserVO admin = (UserVO) session.getAttribute("login_info");
		
		System.out.println("===== preHandler START =====");
		System.out.println(admin);
		System.out.println("Request URL : {}" + request.getRequestURI());

		if (admin == null) {
			logger.info(">> interceptor preHandle catch!! user_admin is null..");
			
			String messageTitle = "로그인 오류";
			String message = "고객계정인 경우 고객페이지에서 이용 바랍니다.";
			rattr.addFlashAttribute("message", message);
			rattr.addFlashAttribute("messageTitle", messageTitle);
			
			response.sendRedirect("/adminlogin");
			return false;
		} else if (admin.getUser_admin() != 1) {
			response.sendRedirect("/");
			return false;
		} else {
			return true;
		}
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		HttpSession session = request.getSession();
		UserVO admin = (UserVO) session.getAttribute("login_info");
		
		System.out.println("===== postHandler START =====");
		System.out.println(admin);
		System.out.println("Request URL : {}" + request.getRequestURI());
		
		if (admin == null) {
			logger.info(">> interceptor postHandle catch!! user_admin is null..");
			modelAndView.setViewName("redirect:/adminlogin");
		} else if (admin.getUser_admin() != 1) {
			modelAndView.setViewName("redirect:/client/login");
		}
	}
}
