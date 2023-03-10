package kr.co.haon.book.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.haon.book.BookVO;

@Controller
public class BookAdminController {
	@Autowired
	BookAdminService bookAdminService;
	
	@RequestMapping(value = "/adminBookList", method = RequestMethod.GET)
	public String adminBookList(Model model) {
		List<BookVO> list = bookAdminService.getBookListAdmin(); 

		model.addAttribute("list", list);
		return "admin/book/bookList";
	}
}
