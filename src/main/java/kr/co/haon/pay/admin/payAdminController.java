package kr.co.haon.pay.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class payAdminController {
	   @RequestMapping(value = "/chart", method = RequestMethod.GET)
	   public String chartForm() {
	      return "admin/pay/chart";
	   }
	   
	   @RequestMapping(value = "/adminPayList", method = RequestMethod.GET)
	   public String adminPayList() {
		   return "admin/pay/payList";
	   }
}
