package kr.co.haon.index.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.haon.index.ChartBookVO;
import kr.co.haon.index.ChartPayVO;
import kr.co.haon.index.ChartUserVO;
import kr.co.haon.index.PopularRoomVO;
import kr.co.haon.index.RecommendedRoomVO;

@Service
public class IndexAdminServiceImpl implements IndexAdminService {

	@Autowired
	private IndexAdminDAO iaDao;
	
	@Override
	public int todayBook() {
		return iaDao.todayBook();
	}

	@Override
	public String todaySales() {
		return iaDao.todaySales();
	}

	@Override
	public String allSales() {
		return iaDao.allSales();
	}

	@Override
	public int allUser() {
		return iaDao.allUser();
	}

	@Override
	public List<ChartUserVO> chartUser() {
		return iaDao.chartUser();
	}

	@Override
	public List<ChartBookVO> chartBook() {
		return iaDao.chartBook();
	}

	@Override
	public List<ChartPayVO> chartPay() {
		return iaDao.chartPay();
	}

	@Override
	public List<PopularRoomVO> popularRoom() {
		return iaDao.popularRoom();
	}

	@Override
	public List<RecommendedRoomVO> recommendedRoom() {
		return iaDao.recommendedRoom();
	}

}
