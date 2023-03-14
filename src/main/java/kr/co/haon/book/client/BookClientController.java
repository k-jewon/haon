package kr.co.haon.book.client;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.haon.book.BookVO;
import kr.co.haon.room.RoomVO;
import kr.co.haon.room.client.RoomClientService;
import kr.co.haon.user.UserVO;

@Controller
public class BookClientController {
	
	@Autowired
	private BookClientService bcs;
	
	@Autowired
	private RoomClientService rcs;
	
	@RequestMapping(value = "/bookForm/{room_id}", method = RequestMethod.GET)
	public String bookForm(@PathVariable("room_id")String room_id, HttpSession session, Model model) throws Exception {
		Object sessionCheck = session.getAttribute("login_info");
		
		RoomVO roomVO = rcs.getRoomByRoomID(room_id);
		
		System.out.println(roomVO);
		model.addAttribute("room", roomVO);
		
		if(sessionCheck == null || sessionCheck.equals("")) {
			session.setAttribute("prevPage", "/bookForm/" + room_id);
			return "client/user/login";
		}else {
			return "client/book/bookForm";
		}
	}
	
	@RequestMapping(value = "/book", method = RequestMethod.GET)
	public String bookGET() {
		return "client/index";
	}
	
	@RequestMapping(value = "/book", method = RequestMethod.POST)
	public String bookPOST(BookVO vo, Model model, HttpSession session, RedirectAttributes rttr) {
		
		UserVO sessionCheck = (UserVO) session.getAttribute("login_info");
		
		
		
		int result = bcs.insertOne(vo);
		
		if(result > 0) {
			List<BookVO> list = bcs.getBookList(vo.getUser_id());
			model.addAttribute("list", list);
			rttr.addFlashAttribute("msg", "예약이 완료 되었습니다.");
			return "redirect:client/mypage";
		}else {
//			model.addAttribute("message", "예약이 처리 되지 않았습니다.");
			return "client/book/bookForm";
		}
		
	}
	
	@RequestMapping(value = "/bookList/{user_id}", method = RequestMethod.GET)
	public String getList(@PathVariable("user_id")String user_id ,Model model, HttpSession session) {
		
		Object sessionCheck = session.getAttribute("login_info");
		UserVO vo = (UserVO)sessionCheck;
		
		
		if(sessionCheck == null || sessionCheck.equals("")) {
			session.setAttribute("prevPage", "/bookList/" + user_id);
			return "client/user/login";
		
		}else {
			List<BookVO> list = bcs.getBookList(vo.getUser_id());
			model.addAttribute("list", list);
			return "client/book/bookList";
		}
	}
	
	@RequestMapping(value = "/bookUpdate", method = RequestMethod.POST)
	public String updateBook(int book_id, Model model) {
		bcs.updateOne(book_id);
		return "redirect:/bookList";
	}
}
