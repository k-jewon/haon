package kr.co.haon.room.client;

import java.util.List;

import kr.co.haon.room.RoomVO;

public interface RoomClientService {
	public List<RoomVO> selectRoom1() throws Exception;
	public List<RoomVO> selectRoom2() throws Exception;
	public List<RoomVO> selectRoom3() throws Exception;
	public List<RoomVO> selectRoom4() throws Exception;
	public RoomVO getRoom(RoomVO vo) throws Exception;
	public RoomVO getRoomByRoomID(String room_id) throws Exception;
}
