package kr.co.haon.index.admin;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.haon.index.ChartBookVO;
import kr.co.haon.pay.PayVO;

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
	public List<Map<String, String>> chartUser() {
		return iaDao.chartUser();
	}

	@Override
	public List<ChartBookVO> chartBook() {
		return iaDao.chartBook();
	}

	@Override
	public List<PayVO> chartSales() {
		return iaDao.chartSales();
	}

	@Override
	public List<PayVO> popularRoom() {
		return iaDao.popularRoom();
	}

	@Override
	public List<PayVO> recommendedRoom() {
		return iaDao.recommendedRoom();
	}

}
