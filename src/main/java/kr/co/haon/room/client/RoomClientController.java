package kr.co.haon.room.client;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.haon.room.RoomVO;
import kr.co.haon.user.UserVO;

@Controller
public class RoomClientController {
   
    @Autowired
     private RoomClientService service;
   
   
   @RequestMapping("/roomList1")
   public String RoomList1 (Locale locale, Model model) throws Exception{
      List<RoomVO> roomList = service.selectRoom1();
      String room = "무궁화 객실";
      model.addAttribute("roomList", roomList);
      model.addAttribute("room", room);
      System.out.println(roomList);
      return "client/room/roomList";
   }
   @RequestMapping("/roomList2")
   public String RoomList2 (Locale locale, Model model) throws Exception{
      List<RoomVO> roomList = service.selectRoom2();
      String room = "소나무 객실";
      model.addAttribute("roomList", roomList);
      model.addAttribute("room", room);
      System.out.println(roomList);
      return "client/room/roomList";
   }
   @RequestMapping("/roomList3")
   public String RoomList3 (Locale locale, Model model) throws Exception{
      List<RoomVO> roomList = service.selectRoom3();
      String room = "사랑채 객실";
      model.addAttribute("roomList", roomList);
      model.addAttribute("room", room);
      System.out.println(roomList);
      return "client/room/roomList";
   }
   @RequestMapping("/roomList4")
   public String RoomList4 (Locale locale, Model model) throws Exception{
      List<RoomVO> roomList = service.selectRoom4();
      String room = "백두산 객실";
      model.addAttribute("roomList", roomList);
      model.addAttribute("room", room);
      System.out.println(roomList);
      return "client/room/roomList";
   }
   
   @RequestMapping("/getRoom/{room_name}/{room_type}")
   public String GetRoom(RoomVO vo, Model model,  String room_name, String room_type) throws Exception{
	  RoomVO room = service.getRoom(vo);
	  model.addAttribute("room", room);
      System.out.println(service.getRoom(vo));
      return "client/room/roomDetail";
   }
   
}