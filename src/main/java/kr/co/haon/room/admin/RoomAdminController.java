package kr.co.haon.room.admin;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.haon.room.RoomVO;

@Controller
public class RoomAdminController {

	@Autowired
	private RoomAdminService service;

	@RequestMapping(value = "/admin/adminRoomList", method = RequestMethod.GET)
	public String adminRoomList(Model model) throws Exception {

		List<RoomVO> roomList = service.getRoomList();
		model.addAttribute("roomList", roomList);

		return "admin/room/roomList";
	}

	@RequestMapping(value = "/admin/adminRoomInsertForm", method = RequestMethod.GET)
	public String adminRoomInsertForm() {
		return "admin/room/roomInsert";
	}

	@RequestMapping(value = "/admin/adminRoomInsert", method = RequestMethod.POST)
    public String adminRoomInsert(RoomVO rvo, HttpServletRequest httpServletRequest) throws Exception {
       String room_name = httpServletRequest.getParameter("room_name");
       String room_type = httpServletRequest.getParameter("room_type");
       int room_price = Integer.parseInt(httpServletRequest.getParameter("room_price"));
       String room_desc = httpServletRequest.getParameter("room_desc");;
       String room_image = httpServletRequest.getParameter("room_image");
       rvo.setRoom_name(room_name);
       rvo.setRoom_type(room_type);
       rvo.setRoom_price(room_price);
       rvo.setRoom_desc(room_desc);
       service.insert(rvo);
	   MultipartFile uploadFile = rvo.getRoom_image();
	   if(!uploadFile.isEmpty()) {
		   String fileName= uploadFile.getOriginalFilename();
		   File Folder = new File("C:/Dev/Project/haon/src/main/webapp/resources/img/"+room_name+"/"+room_type+"/"+fileName);
		   uploadFile.transferTo(Folder);
	   }
	   return "redirect:/admin/adminRoomList";
 }
	
	@RequestMapping(value = "/admin/adminRoomUpdateForm/{room_id}", method = RequestMethod.GET)
	public String adminRoomUpdateForm(RoomVO rvo, Model model,  String room_id) throws Exception {
		  RoomVO room = service.getRoomByRoomID(rvo);
		  model.addAttribute("room", room);
		return "admin/room/roomUpdate";
	}
	
	@RequestMapping(value = "/admin/adminRoomUpdate/{room_id}", method = RequestMethod.POST)
	public String adminRoomUpdate(RoomVO rvo, HttpServletRequest httpServletRequest,Model model) throws Exception {
		   String room_name = httpServletRequest.getParameter("room_name");
	       String room_type = httpServletRequest.getParameter("room_type");
	       int room_price = Integer.parseInt(httpServletRequest.getParameter("room_price"));
	       String room_desc = httpServletRequest.getParameter("room_desc");;
	       rvo.setRoom_name(room_name);
	       rvo.setRoom_type(room_type);
	       rvo.setRoom_price(room_price);
	       rvo.setRoom_desc(room_desc); 
	       service.update(rvo);
		return "redirect:/admin/adminRoomList";
	}
	

	@RequestMapping(value = "/admin/adminRoomDelete/{room_id}", method = RequestMethod.GET)
	public String adminRoomDelete(RoomVO rvo, HttpServletResponse response,Model model) throws Exception {
			RoomVO room = service.getRoomByRoomID(rvo);
			model.addAttribute("room", room);
			service.delete(room);
			return "redirect:/admin/adminRoomList";
	}
}


