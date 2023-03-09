package kr.co.haon.room.admin;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import kr.co.haon.room.RoomVO;
import kr.co.haon.room.client.RoomClientDAO;

@Service
public class RoomAdminServiceImpl implements RoomAdminService {
	@Inject
	private RoomAdminDAO dao;
	
	@Override
	public void insert(RoomVO vo) throws Exception {
		dao.insert(vo);
	}
}
