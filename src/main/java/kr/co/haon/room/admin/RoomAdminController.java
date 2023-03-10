package kr.co.haon.room.admin;

import java.io.File;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.haon.room.RoomVO;
import kr.co.haon.room.client.RoomClientService;

@Controller
public class RoomAdminController {
	
	  @Autowired
    private RoomAdminService service;
	
	@RequestMapping(value = "/adminRoomList", method = RequestMethod.GET)
	   public String adminRoomList() {
		   return "admin/room/roomList";
	   }


	@RequestMapping(value = "/adminRoomInsertForm", method = RequestMethod.GET)
		 public String adminRoomInsertForm() {
			   return "admin/room/roomInsert";
	}
	
	@RequestMapping(value = "/adminRoomInsert", method = RequestMethod.POST)
		public String adminRoomInsert(RoomVO rvo, HttpServletRequest httpServletRequest) throws Exception {
			String room_name = httpServletRequest.getParameter("room_name");
			int room_price = Integer.parseInt(httpServletRequest.getParameter("room_Price"));
			String room_desc = httpServletRequest.getParameter("room_Desc");;
			String room_image = httpServletRequest.getParameter("room_Image");
			rvo.setRoom_name(room_name);
			rvo.setRoom_Price(room_price);
			rvo.setRoom_Desc(room_desc);
			rvo.setRoom_Image(room_image);
			service.insert(rvo);
			return "admin/room/roomList";
	}
	
}

