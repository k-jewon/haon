package kr.co.haon.pay.admin;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.haon.pay.PayVO;

@Controller
public class PayAdminController {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	   @RequestMapping(value = "/adminPayList")
	   public String getadminPayList(Model model) {
			
			/*
			 * payAdminDAO dao = sqlSessionTemplate.getMapper(payAdminDAO.class);
			 * List<payVO> payList = dao.payList();
			 * model.addAttribute("adminPayList",payList); System.out.println(payList);
			 */
			 
		   return "admin/pay/payList";
	   }
}
