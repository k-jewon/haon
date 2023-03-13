package kr.co.haon.user.client;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.haon.user.UserVO;

@Controller
public class UserClientController {
	
	@Autowired
	UserClientService userClientService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping(value = "/client/user/login", method = RequestMethod.GET)
	public String login() {
		
		return "client/user/login";
	}
	
	@RequestMapping(value = "/client/user/login", method = RequestMethod.POST)
	public String loginAction(UserVO vo, HttpSession session, Model model) {
		System.out.println("login 컨트롤러");
		UserVO login_info = userClientService.loginCheck(vo);
		if(login_info == null) {
			String messageTitle = "로그인 오류";
			String message = "아이디와 비밀번호를 다시한번 확인해주시기 바랍니다.";
			model.addAttribute("messageTitle", messageTitle);
			model.addAttribute("message", message);
			return "client/user/login";
		}else {
			session.setAttribute("login_info", login_info);
			return "redirect:/";
		}
		
	}
	
	@RequestMapping(value = "/client/user/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value = "/client/user/join", method = RequestMethod.GET)
	public String join() {
		return "client/user/join";
	}
	
	@RequestMapping(value = "/client/user/join", method = RequestMethod.POST)
	public String joinAction(UserVO vo, Model model) {
		System.out.println("join 컨트롤러 도착");
		System.out.println(vo.getUser_birth());
		int joinCheck = userClientService.joinCheck(vo);
		if(joinCheck == 0) {
			String messageTitle = "회원가입 오류";
			String message = "입력하신 정보들을 다시한번 확인해주시기 바랍니다.";
			model.addAttribute("messageTitle", messageTitle);
			model.addAttribute("message", message);
			return "client/user/join";
		} else {
			String messageTitle = "회원가입 성공";
			String message = "회원가입에 성공하셨습니다";
			model.addAttribute("messageTitle", messageTitle);
			model.addAttribute("message", message);
			return "client/user/login";
		}
		
	}
	
	@RequestMapping(value="/client/user/mailCheck", method=RequestMethod.GET)
    @ResponseBody
    public String mailCheckGET(String email) throws Exception{
        
        /* 뷰(View)로부터 넘어온 데이터 확인 */
        System.out.println("이메일 데이터 전송 확인");
        System.out.println("인증번호 : " + email);
        
        /* 인증번호(난수) 생성 */
        Random random = new Random();
        int checkNum = random.nextInt(888888) + 111111;
        System.out.println("인증번호 " + checkNum);
        
        /* 이메일 보내기 */
        String setFrom = "haon@naver.com";
        String toMail = email;
        String title = "회원가입 인증 이메일 입니다.";
        String content = 
                "홈페이지를 방문해주셔서 감사합니다." +
                "<br><br>" + 
                "인증 번호는 " + checkNum + "입니다." + 
                "<br>" + 
                "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
        try {
            
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content,true);
            mailSender.send(message);
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        String num = Integer.toString(checkNum);
        
        return num;
    }
}
