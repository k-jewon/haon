package kr.co.haon.user.client;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.haon.user.UserVO;

@Repository("userClientDAO")
public class UserClientDAO {

	@Autowired
	private SqlSessionTemplate sqlsession;
	
	public UserVO loginCheck(UserVO vo) {
		return sqlsession.selectOne("kr.co.haon.user.client.UserClientDAO.loginCheck",  vo);
	}
	
}
