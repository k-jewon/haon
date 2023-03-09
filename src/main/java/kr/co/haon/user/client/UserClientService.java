package kr.co.haon.user.client;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.haon.user.UserVO;

@Service("userClientService")
public class UserClientService {
	
	@Autowired
	private UserClientDAO userClientDAO;
	
	public void Join(UserVO vo) {
		// TODO Auto-generated method stub
		
	}

	public UserVO loginCheck(UserVO vo) {
		return userClientDAO.loginCheck(vo);
	}

}
