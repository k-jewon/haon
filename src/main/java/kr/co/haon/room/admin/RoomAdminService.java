package kr.co.haon.room.admin;

import java.util.List;

import kr.co.haon.room.RoomVO;

public interface RoomAdminService {
   public void insert(RoomVO vo) throws Exception;
   
   public List<RoomVO> getRoomList() throws Exception;
}