package kr.co.haon.room;

import org.springframework.web.multipart.MultipartFile;

public class RoomVO {
	private String room_id;
	private String room_name;
	private String room_type;
	private int room_price;
	private String room_desc;
	private MultipartFile room_image;
	public String getRoom_id() {
		return room_id;
	}
	public void setRoom_id(String room_id) {
		this.room_id = room_id;
	}
	public String getRoom_name() {
		return room_name;
	}
	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}
	public String getRoom_type() {
		return room_type;
	}
	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}
	public int getRoom_price() {
		return room_price;
	}
	public void setRoom_price(int room_price) {
		this.room_price = room_price;
	}
	public String getRoom_desc() {
		return room_desc;
	}
	public void setRoom_desc(String room_desc) {
		this.room_desc = room_desc;
	}
	public MultipartFile getRoom_image() {
		return room_image;
	}
	public void setRoom_image(MultipartFile room_image) {
		this.room_image = room_image;
	}
	@Override
	public String toString() {
		return "RoomVO [room_id=" + room_id + ", room_name=" + room_name + ", room_type=" + room_type + ", room_price="
				+ room_price + ", room_desc=" + room_desc + ", room_image=" + room_image + "]";
	}
	
}
