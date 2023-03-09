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
		return sqlsession.selectOne("kr.co.haon.user.client.UserClientDAOImpl.loginCheck",  vo);
	}
	@Override
	public int joinCheck(UserVO vo) {
		return sqlsession.insert("kr.co.haon.user.client.UserClientDAOImpl.joinCheck",  vo);
	}
	
}
