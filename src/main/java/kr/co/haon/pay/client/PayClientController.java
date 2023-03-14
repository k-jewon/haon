package kr.co.haon.pay.client;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import kr.co.haon.pay.PayVO;

@Controller
public class PayClientController {
	@Autowired
	private PayClientService pcservice;
	
	
	private static final String HOST = "https://kapi.kakao.com";
	private KakaoReadyVO kakaor;
	private KakaoApproveVO kakaoa;
	private KakaoCancelVO kakaoc;
	private KakaoPartnerVO kakaop;
	
	@RequestMapping(value = "/payform/{book_id}", method = RequestMethod.GET)
	public String payForm(Model model, PayVO pvo, @PathVariable String book_id, HttpSession session) {
		Object sess = session.getAttribute("login_info");
		if(sess == null || sess.equals("")) {
			return "client/user/login";
		} else {
			model.addAttribute("payinfo", pcservice.payInfo(pvo));
			return "client/pay/payForm";
		}
	}
	
	@RequestMapping(value = "/paysuccess", method = RequestMethod.GET)
	public String paySuccess() {
		return "client/pay/paySuccess";
	}
	
	@RequestMapping(value = "/paycancel", method = RequestMethod.GET)
	public String payFail() {
		return "client/pay/payCancel";
	}
	
	@RequestMapping(value = "/kakaopay", method = RequestMethod.POST)
	public String kakaoP(@RequestParam Map<String, Object> prm) {
		return "redirect:" + kakaoPay(prm);
	}
	
	@ResponseBody
//	@RequestMapping(value = "/kakaopay", method = RequestMethod.POST)
	public String kakaoPay(Map<String, Object> prm) {
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.set("Authorization", "KakaoAK 93271d950aa5d517ead494a2e9f09041");
		headers.set("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		for(String key : prm.keySet()) {
			String value = (String)prm.get(key);
			System.out.println("key : " + key + ", value : " + value);
		}
		String order = (String)prm.get("partner_order_id");
		System.out.println(order);
		String user = (String)prm.get("partner_user_id");
		System.out.println(user);
		String item = (String)prm.get("item_name");
		System.out.println(item);
		String total = (String)prm.get("total_amount");
		System.out.println(total);
		params.add("cid", "TC0ONETIME");
		params.add("partner_order_id", order);
		params.add("partner_user_id", user);
		params.add("item_name", item);
		params.add("quantity", "1");
		params.add("total_amount", total);
		params.add("tax_free_amount", "0");
		params.add("approval_url", "http://localhost:8080/kakaopaysuccess");
		params.add("cancel_url", "http://localhost:8080/paycancel");
		params.add("fail_url", "http://localhost:8080/payerror");
		HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
		
		try {
			kakaor = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body, KakaoReadyVO.class);
			kakaop.setPartner_order_id(order);
			kakaop.setPartner_user_id(user);
			kakaop.setTotal_amount(Integer.parseInt(total));
            return kakaor.getNext_redirect_pc_url();
 
        } catch (RestClientException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (URISyntaxException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
		return "";
	}
	
	@RequestMapping(value = "/kakaopaysuccess", method = RequestMethod.GET)
	public String kakaoPaySuccess(@RequestParam String pg_token, Model model, KakaoPartnerVO kakaop) {
		model.addAttribute("info", kakaoPayInfo(pg_token, kakaop));
		return "client/pay/paySuccess";
	}
	
	public KakaoApproveVO kakaoPayInfo(String pg_token, KakaoPartnerVO kakaop) {
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK 93271d950aa5d517ead494a2e9f09041");
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("cid", "TC0ONETIME");
		params.add("tid", kakaor.getTid());
		params.add("partner_order_id", kakaop.getPartner_order_id());
		params.add("partner_user_id", kakaop.getPartner_user_id());
		params.add("pg_token", pg_token);
		params.add("total_amount", Integer.toString(kakaop.getTotal_amount()));
		
		HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
		try {
            kakaoa = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body, KakaoApproveVO.class);
            PayVO pvo = new PayVO();
            pvo.setUser_id(Integer.parseInt(kakaop.getPartner_user_id()));
            pvo.setPay_id(kakaor.getTid());
            pvo.setBook_id(Integer.parseInt(kakaop.getPartner_order_id()));
            pvo.setPay_payment(1);
            pvo.setBook_price(kakaop.getTotal_amount());
            pcservice.paySucceed(pvo);
            pcservice.updateStatus(pvo);
            return kakaoa;
        
        } catch (RestClientException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (URISyntaxException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
	}
	
	@RequestMapping(value = "/cancelpay", method = RequestMethod.POST)
	public String kakaoC(Model model, String tid, KakaoPartnerVO kakaop) {
		model.addAttribute("info", kakaoPayCancel(tid, kakaop));
		return "redirect:/paycancel";
	}
	
	public KakaoCancelVO kakaoPayCancel(String tid, KakaoPartnerVO kakaop) {
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK 93271d950aa5d517ead494a2e9f09041");
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("cid", "TC0ONETIME");
		params.add("tid", tid);
		params.add("cancel_amount", Integer.toString(kakaop.getTotal_amount()));
		params.add("cancel_tax_free_amount", "0");
		
		HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
		
		try {
			kakaoc = restTemplate.postForObject(new URI(HOST + "/v1/payment/cancel"), body, KakaoCancelVO.class);
			PayVO pvo = new PayVO();
			pvo.setPay_id(tid);
			pcservice.payCancel(pvo);
			return kakaoc;
        
        } catch (RestClientException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (URISyntaxException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
		
		return null;
	}
}
