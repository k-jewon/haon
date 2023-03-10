package kr.co.haon.book.admin;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

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
	@RequestMapping(value = "/getSearchList", method = RequestMethod.GET)
	public String getSearchListView() {
		return "admin/book/bookSearchList";
	}
	
	@RequestMapping(value = "/getSearchList", method = RequestMethod.POST)
	@ResponseBody
	public String getSearchList(@RequestParam("type") String type, @RequestParam("keyword") String keyword) throws JsonProcessingException{
		
		System.out.println("글 목록 처리");
		
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> hashMap = new HashMap<String, Object>();
		
		BookVO vo = new BookVO();
		System.out.println("vo : " + vo);
		vo.setType(type);
		vo.setKeyword(keyword);
		System.out.println("vo : " + vo);
		
		List<BookVO> list = bookAdminService.getSearchList(vo);
		hashMap.put("list", list);
		
		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashMap);
		
		System.out.println(json);
		return json;
	}
	
	
	
}
