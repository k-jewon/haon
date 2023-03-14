package kr.co.haon.user.client;

import java.util.HashMap;

import kr.co.haon.user.UserVO;

public interface UserClientService {
	public int joinCheck(UserVO vo);
	public UserVO loginCheck(UserVO vo);
	String getAccessToken(String authorize_code) throws Throwable;
	public UserVO getUserInfo(String access_Token) throws Throwable;
}
