package kr.co.haon.pay.client;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.haon.pay.PayVO;

@Repository
public class PayClientDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<PayVO> mypayList(PayVO pvo) {
		return mybatis.selectList("kr.co.haon.pay.client.PayClientDAO.mypayList", pvo);
	}
	
	public void paySucceed(PayVO pvo) {
		mybatis.insert("kr.co.haon.pay.client.PayClientDAO.paySucceed", pvo);
	}
}
