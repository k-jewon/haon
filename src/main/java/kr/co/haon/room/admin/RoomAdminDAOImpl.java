package kr.co.haon.room.admin;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.haon.room.RoomVO;

@Repository
public class RoomAdminDAOImpl implements RoomAdminDAO {
   @Inject
   private SqlSession Ss;

   @Override
   public void insert(RoomVO rvo) throws Exception {
      Ss.insert("kr.co.haon.room.admin.RoomAdminDAO.RoomReg", rvo);
   }

   @Override
   public List<RoomVO> getRoomList() {
      return Ss.selectList("kr.co.haon.room.admin.RoomAdminDAO.getRoomList");
   }

@Override
public void delete(RoomVO rvo) throws Exception {
	Ss.delete("kr.co.haon.room.admin.RoomAdminDAO.Room_Delete", rvo);
	
}

	@Override
	public void update(RoomVO rvo) throws Exception {
	Ss.update("kr.co.haon.room.admin.RoomAdminDAO.Room_Update", rvo);
	}

@Override
public RoomVO getRoomByRoomID(RoomVO rvo) throws Exception {
		return Ss.selectOne("kr.co.haon.room.client.RoomClientDAO.getRoomByRoomID", rvo);
	}
}