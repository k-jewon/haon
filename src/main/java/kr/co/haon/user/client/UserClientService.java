package kr.co.haon.user.client;

import kr.co.haon.user.UserVO;

public interface UserClientService {
	public int joinCheck(UserVO vo);
	public UserVO loginCheck(UserVO vo);
}
