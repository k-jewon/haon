package kr.co.haon.index.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.haon.index.ChartBookVO;
import kr.co.haon.index.ChartPayVO;
import kr.co.haon.index.ChartUserVO;
import kr.co.haon.index.PopularRoomVO;
import kr.co.haon.index.RecommendedRoomVO;

@Repository
public class IndexAdminDAOImpl implements IndexAdminDAO {

	@Autowired
	SqlSessionTemplate sql;
	
	private String namespace = "kr.co.haon.index.admin.IndexAdminDAO";

	@Override
	public int todayBook() {
		return sql.selectOne(namespace + ".todayBook");
	}

	@Override
	public String todaySales() {
		return sql.selectOne(namespace + ".todaySales");
	}

	@Override
	public String allSales() {
		return sql.selectOne(namespace+".allSales");
	}

	@Override
	public int allUser() {
		return sql.selectOne(namespace+".allUser");
	}

	@Override
	public List<ChartUserVO> chartUser() {
		return sql.selectList(namespace+".chartUser");
	}

	@Override
	public List<ChartBookVO> chartBook() {
		return sql.selectList(namespace+".chartBook");
	}

	@Override
	public List<ChartPayVO> chartPay() {
		return sql.selectList(namespace+".chartPay");
	}

	@Override
	public List<PopularRoomVO> popularRoom() {
		return sql.selectList(namespace+".popularRoom");
	}

	@Override
	public List<RecommendedRoomVO> recommendedRoom() {
		return sql.selectList(namespace+".recommendedRoom");
	}

}
