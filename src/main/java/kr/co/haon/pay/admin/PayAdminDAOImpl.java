package kr.co.haon.pay.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.haon.pay.PayVO;

@Repository
public class PayAdminDAOImpl implements PayAdminDAO{
	
	@Autowired
	SqlSessionTemplate sql;
	
	private String namespace = "kr.co.haon.pay.admin.PayAdminDAO";

	@Override
	public List<PayVO> getPayList() {
		return sql.selectList(namespace + ".getPayList");
	}

	@Override
	public void updatePayStatic(String pay_id) {
		sql.update(namespace + ".updatePayStatic", pay_id);
	}
	
	@Override
	public void deletePay(String pay_id) {
		sql.delete(namespace + ".deletePay", pay_id);
	}
	
}
