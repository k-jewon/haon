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
      System.out.println("===> Mybatis로 insert() 기능 처리");
      Ss.insert("kr.co.haon.room.admin.RoomAdminDAO.RoomReg", rvo);
   }

   @Override
   public List<RoomVO> getRoomList() {
      return Ss.selectList("kr.co.haon.room.admin.RoomAdminDAO.getRoomList");
   }

}