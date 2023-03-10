package kr.co.haon.user.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.haon.user.UserVO;

@Service("userAdminService")
public class UserAdminServiceImpl implements UserAdminService{
	
	@Autowired
	private UserAdminDAO admindao;

	@Override
	public UserVO select_admin_no(UserVO vo) {
		System.out.println("service select_admin_no 진행");
		return admindao.select_admin_no(vo);
	}

	@Override
	public List<UserVO> select_client_list() {
		System.out.println("service selet_client_list 진행");
		return  admindao.select_client_list();
	}
}
