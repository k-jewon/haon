package kr.co.haon.user.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.haon.user.UserVO;

@Repository("userAdminDAO")
public class UserAdminDAOImpl implements UserAdminDAO{

	@Autowired
	private SqlSessionTemplate sqlsession;


	public UserVO select_admin_no(UserVO vo) {
		System.out.println("userAdminDAO.select_admin_no 진행");
		return sqlsession.selectOne("kr.co.haon.user.admin.UserAdminDAO.select_admin_no",  vo);
	}


	public List<UserVO> select_client_list() {
		System.out.println("userAdminDAO.select_client_list 진행");
		return sqlsession.selectList("kr.co.haon.user.admin.UserAdminDAO.select_client_list");
	}

}