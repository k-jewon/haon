package kr.co.haon.user.client;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.haon.user.UserVO;

@Service("userClientService")
public class UserClientServiceImpl implements UserClientService {
	
	@Autowired
	private UserClientDAO userClientDAO;
	

	public UserVO loginCheck(UserVO vo) {
		return userClientDAO.loginCheck(vo);
	}

	@Override
	public int joinCheck(UserVO vo) {
		
		return userClientDAO.joinCheck(vo);
	}

}
