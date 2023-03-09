package kr.co.haon.user.client;

import kr.co.haon.user.UserVO;

public interface UserClientDAO {
	public UserVO loginCheck(UserVO vo);
	public int joinCheck(UserVO vo);
}
