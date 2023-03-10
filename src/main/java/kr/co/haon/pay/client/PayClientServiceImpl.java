package kr.co.haon.pay.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.haon.pay.PayVO;

@Service("payClientService")
public class PayClientServiceImpl implements PayClientService {
	@Autowired
	private PayClientDAO pcdao;
	
	@Override
	public List<PayVO> mypayList(PayVO pvo) {
		return pcdao.mypayList(pvo);
	}
	
	@Override
	public void paySucceed(PayVO pvo) {
		pcdao.paySucceed(pvo);
	}

}
