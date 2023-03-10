package kr.co.haon.room.client;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.haon.room.RoomVO;

@Controller
public class RoomClientController {
	
	  @Inject
	    private RoomClientService service;
	
	@RequestMapping("/Index.do")
	public String Index() {
		return "/index";
	}
	
	@RequestMapping("/RoomList1")
	public String RoomList1 (Locale locale, Model model) throws Exception{
		List<RoomVO> roomList = service.selectRoom1();
		String room = "무궁화 객실";
		model.addAttribute("roomList", roomList);
		model.addAttribute("room", room);
		System.out.println(roomList);
		return "client/room/RoomList";
	}
	@RequestMapping("/RoomList2")
	public String RoomList2 (Locale locale, Model model) throws Exception{
		List<RoomVO> roomList = service.selectRoom2();
		String room = "소나무 객실";
		model.addAttribute("roomList", roomList);
		model.addAttribute("room", room);
		System.out.println(roomList);
		return "client/room/RoomList";
	}
	@RequestMapping("/RoomList3")
	public String RoomList3 (Locale locale, Model model) throws Exception{
		List<RoomVO> roomList = service.selectRoom3();
		String room = "사랑채 객실";
		model.addAttribute("roomList", roomList);
		model.addAttribute("room", room);
		System.out.println(roomList);
		return "client/room/RoomList";
	}
	@RequestMapping("/RoomList4")
	public String RoomList4 (Locale locale, Model model) throws Exception{
		List<RoomVO> roomList = service.selectRoom4();
		String room = "백두산 객실";
		model.addAttribute("roomList", roomList);
		model.addAttribute("room", room);
		System.out.println(roomList);
		return "client/room/RoomList";
	}
	@RequestMapping("/Login")
	public String Login() {
		return "/user/Login";
	}
	
	@RequestMapping("/Join")
	public String Join() {
		return "/user/Join";
	}
		
	@RequestMapping("/Book")
	public String Book() {
		return "client/book/bookForm";
	}
	@RequestMapping("/GetRoom")
	public String GetRoom(RoomVO vo, Model model) throws Exception{
		model.addAttribute("room", service.getRoom(vo));
		System.out.println(service.getRoom(vo));
		return "client/room/RoomDetail";
	}
}
