package kr.co.haon.index.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexAdminController {
	@Autowired
	IndexAdminService ids;

	@RequestMapping(value = "/admin/admin", method = RequestMethod.GET)
	public String index(Model model) {
		/*
		 * model.addAttribute("todaySubscriber", ids.todaySubscriber());
		 */
		return "admin/index";
	}
}
