package kr.co.haon.pay.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.haon.pay.PayVO;

@Controller
public class PayAdminController {

	@Autowired
	PayAdminService pas;

	@RequestMapping("/admin/adminPayList")
	public String getList(Model model) {

		List<PayVO> payList = pas.getPayList();
		model.addAttribute("payList", payList);

		return "admin/pay/payList";
	}
	
	@RequestMapping("/admin/adminPayUpdate/{pay_id}")
	public String updatePayStatic(@PathVariable("pay_id") String pay_id) {
		
		pas.updatePayStatic(pay_id);
		
		return "redirect:/admin/adminPayList";
	}
	
	@RequestMapping("/admin/adminPayDelete/{pay_id}")
	public String deletePay(@PathVariable("pay_id") String pay_id) {
		
		pas.deletePay(pay_id);
		
		return "redirect:/admin/adminPayList";
	}
}
