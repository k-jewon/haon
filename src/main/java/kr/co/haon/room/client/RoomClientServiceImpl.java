package kr.co.haon.room.client;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.haon.room.RoomVO;
import kr.co.haon.user.UserVO;

@Service
public class RoomClientServiceImpl implements RoomClientService {

	@Inject
	private RoomClientDAO dao;
	
	
	@Override
	public List<RoomVO> selectRoom1() throws Exception {
		return dao.selectRoom1();
	}

	@Override
	public List<RoomVO> selectRoom2() throws Exception {
		return dao.selectRoom2();
	}
	
	@Override
	public List<RoomVO> selectRoom3() throws Exception {
		return dao.selectRoom3();
	}
	
	@Override
	public List<RoomVO> selectRoom4() throws Exception {
		return dao.selectRoom4();
	}
	
	@Override
	public RoomVO getRoom(RoomVO vo) throws Exception {
		return dao.GetRoom(vo);
	}
}
