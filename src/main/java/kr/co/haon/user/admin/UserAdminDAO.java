package kr.co.haon.user.admin;

import java.util.List;

import kr.co.haon.user.UserVO;

public interface UserAdminDAO {

	UserVO select_admin_no(UserVO vo);
	List<UserVO> select_client_list();
}
