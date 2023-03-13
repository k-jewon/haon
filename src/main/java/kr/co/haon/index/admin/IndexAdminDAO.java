package kr.co.haon.index.admin;

import java.util.List;
import java.util.Map;

import kr.co.haon.index.ChartBookVO;
import kr.co.haon.pay.PayVO;

public interface IndexAdminDAO {
	public int todayBook();
	
	public String todaySales();
	
	public String allSales();

	public int allUser();
	
	public List<Map<String, String>> chartUser();
	
	public List<ChartBookVO> chartBook();
	
	public List<PayVO> chartSales();
	
	public List<PayVO> popularRoom();
	
	public List<PayVO> recommendedRoom();
	
}
