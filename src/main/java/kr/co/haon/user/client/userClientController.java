package kr.co.haon.user.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class userClientController {
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		
		return "client/user/login";
	}
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		
		return "client/user/join";
	}
	@RequestMapping(value = "/forgotPassword", method = RequestMethod.GET)
	public String forgotPassword() {
		
		return "client/user/forgotPassword";
	}
}
