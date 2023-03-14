package kr.co.haon.index.admin;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexAdminController {
	@Autowired
	IndexAdminService ids;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String index(Model model) {

		int todayBook = ids.todayBook();
		String todaySales = ids.todaySales();
		String allSales = ids.allSales();
		int allUser = ids.allUser();
		model.addAttribute("todayBook", todayBook);
		model.addAttribute("todaySales", todaySales);
		model.addAttribute("allSales", allSales);
		model.addAttribute("allUser", allUser);

		List<Map<String, String>> chartUserList = ids.chartUser();
		model.addAttribute("chartUserList", chartUserList);
		
		/*
		 * List<ChartBookVO> BookList = ids.chartBook();
		 * 
		 * Gson gson = new Gson(); JsonArray jArray = new JsonArray();
		 * 
		 * Iterator<ChartBookVO> it = BookList.iterator(); while(it.hasNext()) {
		 * ChartBookVO cbVO = it.next(); JsonObject object = new JsonObject(); int b_num
		 * = cbVO.getB_num(); int month = cbVO.getMonth();
		 * 
		 * object.addProperty("b_num", b_num); object.addProperty("month", month);
		 * jArray.add(object); }
		 * 
		 * String json = gson.toJson(jArray); model.addAttribute("json", json);
		 */
		
		return "/admin/index";
	}
}
