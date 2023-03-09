package kr.co.haon.room.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoomClientController {
	
	@RequestMapping("/Index.do")
	public String Index() {
		return "/index";
	}
	
	@RequestMapping("/Room1List.do")
	public String Room1List() {
		return "/room/Room1";
	}
	
	@RequestMapping("/Room2List.do")
	public String Room2List() {
		return "/room/Room2";
	}
	
	@RequestMapping("/Room3List.do")
	public String Room3List() {
		return "/room/Room3";
	}
	
	@RequestMapping("/Room4List.do")
	public String Room4List() {
		return "/room/Room4";
	}
	
	@RequestMapping("/Login.do")
	public String Login() {
		return "/user/Login";
	}
	
	@RequestMapping("/Join.do")
	public String Join() {
		return "/user/Join";
	}
	
	@RequestMapping("/RoomDetail.do")
	public String RoomDetail() {
		return "/room/RoomDetail";
	}
	
	@RequestMapping("/Book.do")
	public String Book() {
		return "/Book";
	}
}
