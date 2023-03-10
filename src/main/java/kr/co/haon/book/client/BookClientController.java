package kr.co.haon.book.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.haon.book.BookVO;

@Controller
public class BookClientController {
	
	@Autowired
	BookClientService bcs;
	
	@RequestMapping(value = "/bookForm.do", method = RequestMethod.GET)
	public String bookForm() {
		
		return "client/book/bookForm";
	}
	
	@RequestMapping(value = "/book", method = RequestMethod.POST)
	public String book(BookVO vo, Model model) {
		bcs.insertOne(vo);
		
//		model.addAttribute("success", "예약이 완료되었습니다.");

		return "redirect:/bookList.do";
	}
	
	@RequestMapping(value = "/bookList.do", method = RequestMethod.GET)
	public String getList(Model model) {
		
		List<BookVO> list = bcs.getBookList();
		
		model.addAttribute("list", list);
		
		return "client/book/bookList";
	}
	
	@RequestMapping(value = "/bookUpdate.do", method = RequestMethod.POST)
	public String updateBook(int book_Id, Model model) {
		
		System.out.println("book_Id : " + book_Id);
		bcs.updateOne(book_Id);
		
		return "redirect:/bookList.do";
	}
}
