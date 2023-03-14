package kr.co.haon.index.admin;

import java.util.List;

import kr.co.haon.index.ChartBookVO;
import kr.co.haon.index.ChartPayVO;
import kr.co.haon.index.ChartUserVO;
import kr.co.haon.index.PopularRoomVO;
import kr.co.haon.index.RecommendedRoomVO;

public interface IndexAdminDAO {
	public int todayBook();
	
	public String todaySales();
	
	public String allSales();

	public int allUser();
	
	public List<ChartUserVO> chartUser();
	
	public List<ChartBookVO> chartBook();
	
	public List<ChartPayVO> chartPay();
	
	public List<PopularRoomVO> popularRoom();
	
	public List<RecommendedRoomVO> recommendedRoom();
	
}
