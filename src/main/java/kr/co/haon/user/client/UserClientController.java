package kr.co.haon.user.client;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String loginAction(UserVO vo, HttpSession session, Model model) {
		UserVO login_info = userClientService.loginCheck(vo);
		if(login_info == null) {
			String message = "아이디와 비밀번호를 다시한번 확인해주시기 바랍니다.";
			model.addAttribute("message", message);
			return "client/user/login";
		}else {
			session.setAttribute("login_info", login_info);
			return "redirect:/";
		}
		
		
	}
	
	@RequestMapping(value = "/client/user/join", method = RequestMethod.GET)
	public String join() {
		
		return "client/user/join";
	}
}
