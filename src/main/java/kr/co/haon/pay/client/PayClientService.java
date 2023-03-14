package kr.co.haon.pay.client;

import java.util.List;

import kr.co.haon.pay.PayVO;

public interface PayClientService {
	List<PayVO> mypayList(PayVO pvo);
	
	void paySucceed(PayVO pvo);
	
	PayVO payInfo(PayVO pvo);
	
	void updateStatus(PayVO pvo);
}
