package kr.co.haon.user.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.haon.user.UserVO;

@Controller
public class UserAdminController {
	
		@Autowired
		UserAdminService adminService;
	
		@RequestMapping(value = "/adminlogin", method = RequestMethod.GET)
		   public String admin(){
			   return "/admin/user/adminLogin";
		}
		
		@RequestMapping(value = "/admin", method = RequestMethod.POST)
		public String adminLogin( UserVO vo, HttpSession session, RedirectAttributes rattr) {
			System.out.println(vo.getUser_email());
			System.out.println(vo.getUser_pw());
			UserVO admin = adminService.select_admin_no(vo);
			System.out.println(admin);
			if(admin == null) {
				String messageTitle = "로그인 오류";
				String message = "ID PW가 일치하지 않습니다.";
				rattr.addFlashAttribute("message", message);
				rattr.addFlashAttribute("messageTitle", messageTitle);
				return "redirect:/adminlogin";
			}else if(admin.getUser_admin() ==0 ) {
				String messageTitle = "계정 불일치";
				String message = "고객계정입니다. 고객페이지에서 로그인바랍니다";
				rattr.addFlashAttribute("message",message);
				rattr.addFlashAttribute("messageTitle", messageTitle);
				return "redirect:/client/user/login";
			}else {
				session.setAttribute("login_info", admin);
				return "redirect:/admin";
			}
		}
		
			
		@RequestMapping(value = "/admin/adminUserList", method = RequestMethod.GET)
		public String clientList(Model model) {
			List<UserVO> clientlist = adminService.select_client_list();
			model.addAttribute("clientlist", clientlist);
			return "/admin/user/userList";
		}
		
		@RequestMapping(value= "/admin/logout", method = RequestMethod.GET)
		public String adminLogout(HttpSession session) {
			session.invalidate();
			return "redirect:/admin";
		}
}
