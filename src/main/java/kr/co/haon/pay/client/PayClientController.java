package kr.co.haon.pay.client;

import java.net.URI;
import java.net.URISyntaxException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
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
	
	private PayVO pvo;
	
	private static final String HOST = "https://kapi.kakao.com";
	private KakaoReadyVO kakaor;
	private KakaoApproveVO kakaoa;
	private KakaoCancelVO kakaoc;
	
	@RequestMapping(value = "/payform", method = RequestMethod.GET)
	public String payForm(Model model) {
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
	
	@RequestMapping(value = "/kakaopay", method = RequestMethod.POST)
	public String kakaoP(Model model) {
		return "redirect:" + kakaoPay();
	}
	
	@ResponseBody
	public String kakaoPay() {
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK 93271d950aa5d517ead494a2e9f09041");
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("cid", "TC0ONETIME");
		params.add("partner_order_id", "1");
		params.add("partner_user_id", "1");
		params.add("item_name", "백두산");
		params.add("quantity", "1");
		params.add("total_amount", "3000000");
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
	public String kakaoPaySuccess(@RequestParam String pg_token, Model model) {
		model.addAttribute("info", kakaoPayInfo(pg_token));
		return "client/pay/paySuccess";
	}
	
	public KakaoApproveVO kakaoPayInfo(String pg_token) {
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK 93271d950aa5d517ead494a2e9f09041");
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("cid", "TC0ONETIME");
		params.add("tid", kakaor.getTid());
		params.add("partner_order_id", "1");
		params.add("partner_user_id", "1");
		params.add("pg_token", pg_token);
		params.add("total_amount", "3000000");
		
		HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
		try {
            kakaoa = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body, KakaoApproveVO.class);
            PayVO pvo = new PayVO();
            pvo.setUser_id(Integer.parseInt(kakaoa.getPartner_user_id()));
            pvo.setPay_id(kakaoa.getTid());
            pvo.setRoom_name(kakaoa.getItem_name());
            pvo.setBook_id(kakaoa.getPartner_order_id());
            pvo.setUser_name("이미영");
            pvo.setPay_payment(1);
            pvo.setPay_price(kakaoa.getAmount().getTotal());
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
