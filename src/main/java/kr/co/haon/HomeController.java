package kr.co.haon;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "admin/chart/chart";
	}
	@RequestMapping(value="/1", method= RequestMethod.GET)
	public String login() {
		return "/admin/user/adminLogin";
	}
	@RequestMapping(value="/2", method= RequestMethod.GET)
	public String pay() {
		return "/admin/pay/payList";
	}
	@RequestMapping(value="/3", method= RequestMethod.GET)
	public String roomList() {
		return "/admin/room/roomList";
	}
	@RequestMapping(value="/4", method= RequestMethod.GET)
	public String userList() {
		return "/admin/user/userList";
	}
	@RequestMapping(value="/5", method= RequestMethod.GET)
	public String bookList() {
		return "/admin/book/bookList";
	}
}
