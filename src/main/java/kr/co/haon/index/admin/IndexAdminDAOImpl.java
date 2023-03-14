package kr.co.haon.index.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.haon.index.ChartBookVO;
import kr.co.haon.pay.PayVO;
import kr.co.haon.user.UserVO;

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
	public List<Map<String, String>> chartUser() {
		return sql.selectList(namespace+".chartUser");
	}

	@Override
	public List<ChartBookVO> chartBook() {
		return sql.selectList(namespace+".chartBook");
	}

	@Override
	public List<PayVO> chartSales() {
		return sql.selectList(namespace+".chartSales");
	}

	@Override
	public List<PayVO> popularRoom() {
		return sql.selectList(namespace+".popularRoom");
	}

	@Override
	public List<PayVO> recommendedRoom() {
		return sql.selectList(namespace+".recommendedRoom");
	}

}
