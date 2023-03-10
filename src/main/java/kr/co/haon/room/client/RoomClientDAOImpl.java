package kr.co.haon.room.client;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.haon.room.RoomVO;
import kr.co.haon.user.UserVO;

@Repository
public class RoomClientDAOImpl implements RoomClientDAO {
	@Inject
	private SqlSession Ss;
	
	@Override
	public List<RoomVO> selectRoom1() throws Exception {
		return Ss.selectList("kr.co.haon.room.client.RoomClientDAO.Room1");
	}

	@Override
	public List<RoomVO> selectRoom2() throws Exception {
		return Ss.selectList("kr.co.haon.room.client.RoomClientDAO.Room2");
	}
	
	@Override
	public List<RoomVO> selectRoom3() throws Exception {
		return Ss.selectList("kr.co.haon.room.client.RoomClientDAO.Room3");
	}
	
	@Override
	public List<RoomVO> selectRoom4() throws Exception {
		return Ss.selectList("kr.co.haon.room.client.RoomClientDAO.Room4");
	}
	
	@Override
	public RoomVO GetRoom(RoomVO vo) throws Exception {
		return Ss.selectOne("kr.co.haon.room.client.RoomClientDAO.GetRoom", vo);
	}
	
}
