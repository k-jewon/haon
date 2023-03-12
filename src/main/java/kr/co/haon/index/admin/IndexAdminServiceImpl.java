package kr.co.haon.index.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.haon.pay.PayVO;

@Service
public class IndexAdminServiceImpl implements IndexAdminService {

	@Autowired
	private IndexAdminDAO iaDao;
	
	@Override
	public int todaySubscriber() {
		return iaDao.todaySubscriber();
	}

}
