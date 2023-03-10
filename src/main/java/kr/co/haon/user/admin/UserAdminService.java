package kr.co.haon.user.admin;

import java.util.List;

import kr.co.haon.user.UserVO;

public interface UserAdminService {
	
	List<UserVO> select_client_list();
	UserVO select_admin_no(UserVO vo);
}
