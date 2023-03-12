package kr.co.haon.index.admin;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.haon.pay.PayVO;

@Repository
public class IndexAdminDAOImpl implements IndexAdminDAO {

	@Autowired
	SqlSessionTemplate sql;
	
	private String namespace = "kr.co.haon.index.admin.IndexAdminDAO";

	
	@Override
	public int todaySubscriber() {
		return sql.selectOne(namespace + ".todaySubscriber");
	}

}
