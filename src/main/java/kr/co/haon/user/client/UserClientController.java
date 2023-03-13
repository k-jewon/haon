package kr.co.haon.user.client;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.haon.user.UserVO;

@Controller
public class UserClientController {
	
	@Autowired
	UserClientService userClientService;
	
	@RequestMapping(value = "/client/user/login", method = RequestMethod.GET)
	public String login() {
		
		return "client/user/login";
	}
	
	@RequestMapping(value = "/client/user/login", method = RequestMethod.POST)
	public String loginAction(UserVO vo, HttpSession session, Model model, HttpServletRequest request) {
		System.out.println("login 컨트롤러");
		UserVO login_info = userClientService.loginCheck(vo);
		if(login_info == null) {
			String messageTitle = "로그인 오류";
			String message = "아이디와 비밀번호를 다시한번 확인해주시기 바랍니다.";
			model.addAttribute("messageTitle", messageTitle);
			model.addAttribute("message", message);
			return "client/user/login";
		}else {
			session.setAttribute("login_info", login_info);
			
			String prevPage = (String) session.getAttribute("prevPage");
			
			System.out.println("prevPage : " + prevPage);
			
			if(prevPage == null || prevPage.equals("")) {
				return "redirect:/";
			}else {
				session.removeAttribute("prevPage");
				System.out.println("prevPage : " + prevPage);
				return "redirect:" + prevPage;
			}
		}
	}
	
	@RequestMapping(value = "/client/user/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value = "/client/user/join", method = RequestMethod.GET)
	public String join() {
		return "client/user/join";
	}
	
	@RequestMapping(value = "/client/user/join", method = RequestMethod.POST)
	public String joinAction(UserVO vo, Model model) {
		System.out.println("join 컨트롤러 도착");
		System.out.println(vo.getUser_birth());
		int joinCheck = userClientService.joinCheck(vo);
		if(joinCheck == 0) {
			String messageTitle = "회원가입 오류";
			String message = "입력하신 정보들을 다시한번 확인해주시기 바랍니다.";
			model.addAttribute("messageTitle", messageTitle);
			model.addAttribute("message", message);
			return "client/user/join";
		} else {
			String messageTitle = "회원가입 성공";
			String message = "회원가입에 성공하셨습니다";
			model.addAttribute("messageTitle", messageTitle);
			model.addAttribute("message", message);
			return "client/user/login";
		}
		
	}
}
