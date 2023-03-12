package kr.co.haon.pay.admin;

import java.util.List;

import kr.co.haon.pay.PayVO;

public interface PayAdminDAO {
	public List<PayVO> getPayList();
	
	public void updatePayStatic(String pay_id);
	
	public void deletePay(String pay_id);
}
