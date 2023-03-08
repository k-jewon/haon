package kr.co.haon.book.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BookClientController {
	@RequestMapping(value = "/BookForm.do", method = RequestMethod.GET)
	public String bookForm() {
		
		return "client/book/bookForm";
	}
}
