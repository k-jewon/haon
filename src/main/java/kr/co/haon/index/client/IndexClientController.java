package kr.co.haon.index.client;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.haon.pay.PayVO;
import kr.co.haon.pay.client.PayClientService;

@Controller
public class IndexClientController {
	@Autowired
	private PayClientService pcservice;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
				
		return "client/index";
	}

	@RequestMapping(value = "/client/mypage", method = RequestMethod.GET)
	public String mypage(Model model, PayVO pvo) {
		pvo.setUser_id(1);
		model.addAttribute("mypayList", pcservice.mypayList(pvo));
		return "client/mypage";
	}

	
}
