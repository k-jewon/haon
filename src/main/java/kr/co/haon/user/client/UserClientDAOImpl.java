package kr.co.haon.user.client;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.haon.user.UserVO;

@Repository("userClientDAO")
public class UserClientDAOImpl implements UserClientDAO {

	@Autowired
	private SqlSessionTemplate sqlsession;
	@Override
	public UserVO loginCheck(UserVO vo) {
		return sqlsession.selectOne("kr.co.haon.user.client.UserClientDAO.loginCheck",  vo);
	}
	@Override
	public int joinCheck(UserVO vo) {
		return sqlsession.insert("kr.co.haon.user.client.UserClientDAO.joinCheck",  vo);
	}
	@Override
	public String emailCheck(String email) {
		return sqlsession.selectOne("kr.co.haon.user.client.UserClientDAO.emailCheck",  email);
	}
	@Override
	public int kakaoJoin(UserVO vo) {
		return sqlsession.insert("kr.co.haon.user.client.UserClientDAO.kakaoJoin",  vo);
	}
	@Override
	public UserVO kakaoLogin(String email) {
		return sqlsession.selectOne("kr.co.haon.user.client.UserClientDAO.kakaoLogin",  email);
	}
	@Override
	public int changePw(UserVO vo) {
		return sqlsession.update("kr.co.haon.user.client.UserClientDAO.changePw",  vo);
	}
}
