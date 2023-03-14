package kr.co.haon.index.admin;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.co.haon.index.ChartBookVO;
import kr.co.haon.index.ChartPayVO;
import kr.co.haon.index.ChartUserVO;
import kr.co.haon.index.PopularRoomVO;
import kr.co.haon.index.RecommendedRoomVO;

@Controller
public class IndexAdminController {
	@Autowired
	IndexAdminService ids;
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		model.addAttribute("todayBook", ids.todayBook());
		model.addAttribute("todaySales", ids.todaySales());
		model.addAttribute("allSales", ids.allSales());
		model.addAttribute("allUser", ids.allUser());
		return "admin/index";
	}

	@RequestMapping(value = "/bookChart", method = RequestMethod.GET)
	public @ResponseBody String bookChart(Locale locale, Model model) {
		Gson gson = new Gson();
		List<ChartBookVO> cbList = ids.chartBook();
		return gson.toJson(cbList);		
	}
	
	@RequestMapping(value = "/userChart", method = RequestMethod.GET)
	public @ResponseBody String userChart(Locale locale, Model model) {
		Gson gson = new Gson();
		List<ChartUserVO> cuList = ids.chartUser();
		return gson.toJson(cuList);		
	}
	@RequestMapping(value = "/payChart", method = RequestMethod.GET)
	public @ResponseBody String payChart(Locale locale, Model model) {
		Gson gson = new Gson();
		List<ChartPayVO> cpList = ids.chartPay();
		return gson.toJson(cpList);		
	}
	@RequestMapping(value = "/popularRoom", method = RequestMethod.GET)
	public @ResponseBody String popularRoom(Locale locale, Model model) {
		Gson gson = new Gson();
		List<PopularRoomVO> prList = ids.popularRoom();
		return gson.toJson(prList);		
	}
	@RequestMapping(value = "/recommendedRoom", method = RequestMethod.GET)
	public @ResponseBody String recommendedRoom(Locale locale, Model model) {
		Gson gson = new Gson();
		List<RecommendedRoomVO> prList = ids.recommendedRoom();
		return gson.toJson(prList);		
	}
}
