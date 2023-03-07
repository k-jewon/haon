package kr.co.haon.user.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class userAdminController {
		@RequestMapping(value = "/adminUserList", method = RequestMethod.GET)
		   public String adminUserList() {
			   return "admin/user/userList";
		}
}
