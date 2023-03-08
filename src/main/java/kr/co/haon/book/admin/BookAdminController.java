package kr.co.haon.book.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BookAdminController {
		@RequestMapping(value = "/adminBookList", method = RequestMethod.GET)
		   public String adminBookList() {
			   return "admin/book/bookList";
		   }
}
