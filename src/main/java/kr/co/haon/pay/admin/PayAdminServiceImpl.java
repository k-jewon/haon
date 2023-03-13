package kr.co.haon.pay.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.haon.pay.PayVO;

@Service
public class PayAdminServiceImpl implements PayAdminService{

	@Autowired
	private PayAdminDAO paDao;
	
	@Override
	public List<PayVO> getPayList() {
		return paDao.getPayList();
	}

	@Override
	public void updatePayStatic(String pay_id) {
		paDao.updatePayStatic(pay_id);
	}

	@Override
	public void deletePay(String pay_id) {
		paDao.deletePay(pay_id);
	}

}
