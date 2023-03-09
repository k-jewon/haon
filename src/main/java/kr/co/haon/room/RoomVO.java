package kr.co.haon.room;

import org.springframework.web.multipart.MultipartFile;

public class RoomVO {
	private String room_ID;
	private String room_name;
	private int room_Price;
	private String room_Desc;
	private String room_Image;
	public String getRoom_ID() {
		return room_ID;
	}
	public void setRoom_ID(String room_ID) {
		this.room_ID = room_ID;
	}
	public String getRoom_name() {
		return room_name;
	}
	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}
	public int getRoom_Price() {
		return room_Price;
	}
	public void setRoom_Price(int room_Price) {
		this.room_Price = room_Price;
	}
	public String getRoom_Desc() {
		return room_Desc;
	}
	public void setRoom_Desc(String room_Desc) {
		this.room_Desc = room_Desc;
	}
	public String getRoom_Image() {
		return room_Image;
	}
	public void setRoom_Image(String room_Image) {
		this.room_Image = room_Image;
	}
	@Override
	public String toString() {
		return "RoomVO [room_ID=" + room_ID + ", room_name=" + room_name + ", room_Price=" + room_Price + ", room_Desc="
				+ room_Desc + ", room_Image=" + room_Image + "]";
	}
	
	
}
