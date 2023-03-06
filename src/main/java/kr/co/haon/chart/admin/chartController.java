package kr.co.haon.chart.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class chartController {
	   @RequestMapping(value = "/chart", method = RequestMethod.GET)
	   public String chartForm() {
	      return "admin/chart/chart";
	   }
}
