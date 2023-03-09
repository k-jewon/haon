package kr.co.haon.room.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RoomAdminController {
	@RequestMapping(value = "/adminRoomList", method = RequestMethod.GET)
	   public String adminRoomList() {
		   return "admin/room/roomList";
	   }
}