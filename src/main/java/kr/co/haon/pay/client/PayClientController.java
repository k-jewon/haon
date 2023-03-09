package kr.co.haon.pay.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PayClientController {
	@RequestMapping(value = "/payform", method = RequestMethod.GET)
	public String payForm() {
		return "client/pay/payForm";
	}
	
	@RequestMapping(value = "/paysuccess", method = RequestMethod.POST)
	public String paySuccess() {
		return "client/pay/paySuccess";
	}
	
	@RequestMapping(value = "/payfail", method = RequestMethod.GET)
	public String payFail() {
		return "client/pay/payFail";
	}
	
	@RequestMapping(value = "/mypay", method = RequestMethod.POST)
	public String myPay() {
		return "client/pay/mypay";
	}
}
