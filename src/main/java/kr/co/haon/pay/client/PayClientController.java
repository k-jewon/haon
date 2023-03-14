package kr.co.haon.pay.client;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Map;

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
	
	@RequestMapping(value = "/payform/{book_id}", method = RequestMethod.GET)
	public String payForm(Model model, PayVO pvo, @PathVariable String book_id) {
		model.addAttribute("payinfo", pcservice.payInfo(pvo));
		return "client/pay/payForm";
	}
	
	@RequestMapping(value = "/paysuccess", method = RequestMethod.GET)
	public String paySuccess() {
		return "client/pay/paySuccess";
	}
	
	@RequestMapping(value = "/paycancel", method = RequestMethod.GET)
	public String payFail() {
		return "client/pay/payCancel";
	}
//	
//	@RequestMapping(value = "/kakaopay", method = RequestMethod.POST)
//	public String kakaoP() {
//		return "redirect:" + kakaoPay();
//	}
	
	@ResponseBody
	@RequestMapping(value = "/kakaopay", method = RequestMethod.POST)
	public String kakaoPay(@RequestParam Map<String, Object> prm) {
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.set("Authorization", "KakaoAK 93271d950aa5d517ead494a2e9f09041");
		headers.set("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		String partner_order_id = (String)prm.get("partner_order_id");
		String partner_user_id = (String)prm.get("partner_user_id");
		String item_name = (String)prm.get("item_name");
		String total_amount = (String)prm.get("total_amount");
		System.out.println("order : " + partner_order_id + " user : " + partner_user_id + " item : " + item_name + " total : " + total_amount);
		params.add("cid", "TC0ONETIME");
		params.add("partner_order_id", partner_order_id);
		params.add("partner_user_id", partner_user_id);
		params.add("item_name", item_name);
		params.add("quantity", "1");
		params.add("total_amount", total_amount);
		params.add("tax_free_amount", "0");
		params.add("approval_url", "http://localhost:8080/kakaopaysuccess");
		params.add("cancel_url", "http://localhost:8080/paycancel");
		params.add("fail_url", "http://localhost:8080/payerror");
		HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
		
		try {
			kakaor = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body, KakaoReadyVO.class);
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
	public String kakaoPaySuccess(@RequestParam String pg_token, Model model, String tid, String partner_order_id, String partner_user_id, String total_amount) {
		System.out.println(partner_order_id + partner_user_id + total_amount);
		model.addAttribute("info", kakaoPayInfo(pg_token, tid, partner_order_id, partner_user_id, total_amount));
		return "client/pay/paySuccess";
	}
	
	
	public KakaoApproveVO kakaoPayInfo(String pg_token, String tid, String partner_order_id, String partner_user_id, String total_amount) {
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK 93271d950aa5d517ead494a2e9f09041");
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("cid", "TC0ONETIME");
		params.add("tid", tid);
		params.add("partner_order_id", partner_order_id);
		params.add("partner_user_id", partner_user_id);
		params.add("pg_token", pg_token);
		params.add("total_amount", total_amount);
		
		HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
		try {
            kakaoa = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body, KakaoApproveVO.class);
            PayVO pvo = new PayVO();
            pvo.setUser_id(Integer.parseInt(partner_user_id));
            pvo.setPay_id(tid);
            pvo.setBook_id(Integer.parseInt(partner_order_id));
            pvo.setPay_payment(1);
            pvo.setBook_price(Integer.parseInt(total_amount));
            pcservice.paySucceed(pvo);
            
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
	public String kakaoC(Model model, String tid) {
		model.addAttribute("info", kakaoPayCancel(tid));
		return "redirect:/paycancel";
	}
	
	public KakaoCancelVO kakaoPayCancel(String tid) {
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK 93271d950aa5d517ead494a2e9f09041");
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("cid", "TC0ONETIME");
		params.add("tid", tid);
		params.add("cancel_amount", "3000000");
		params.add("cancel_tax_free_amount", "0");
		
		HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
		
		try {
			kakaoc = restTemplate.postForObject(new URI(HOST + "/v1/payment/cancel"), body, KakaoCancelVO.class);
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
