package kr.co.haon.index.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class indexAdminController {
	   @RequestMapping(value = "/adminIndex", method = RequestMethod.GET)
	   public String index() {
	      return "admin/index";
	   }
}
