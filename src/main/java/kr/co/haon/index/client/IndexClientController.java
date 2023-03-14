package kr.co.haon.index.client;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.haon.book.client.BookClientService;
import kr.co.haon.pay.PayVO;
import kr.co.haon.pay.client.PayClientService;
import kr.co.haon.user.UserVO;

@Controller
public class IndexClientController {
	@Autowired
	private PayClientService pcservice;
	
	@Autowired
	private BookClientService bcservice;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
				
		return "client/index";
	}

	@RequestMapping(value = "/client/mypage", method = RequestMethod.GET)
	public String mypage(String message, Model model, HttpSession session) {
		Object sessionCheck =  session.getAttribute("login_info");
		UserVO userVO = (UserVO)sessionCheck;
		PayVO pvo = new PayVO();
		
		System.out.println("message : " + message);
		
		pvo.setUser_id(userVO.getUser_id());
		model.addAttribute("mypayList", pcservice.mypayList(pvo));
		model.addAttribute("list", bcservice.getBookList(userVO.getUser_id()));
		
		return "client/mypage";
	}

	
}
