package kr.co.haon.room;

public class RoomVO {
	private String Room_Id;
	private String Room_Name;
	private int Room_Price;
	private String Room_desc;
	public String getRoom_Id() {
		return Room_Id;
	}
	public void setRoom_Id(String room_Id) {
		Room_Id = room_Id;
	}
	public String getRoom_Name() {
		return Room_Name;
	}
	public void setRoom_Name(String room_Name) {
		Room_Name = room_Name;
	}
	public int getRoom_Price() {
		return Room_Price;
	}
	public void setRoom_Price(int room_Price) {
		Room_Price = room_Price;
	}
	public String getRoom_desc() {
		return Room_desc;
	}
	public void setRoom_desc(String room_desc) {
		Room_desc = room_desc;
	}
	@Override
	public String toString() {
		return "roomVO [Room_Id=" + Room_Id + ", Room_Name=" + Room_Name + ", Room_Price=" + Room_Price + ", Room_desc="
				+ Room_desc + "]";
	}
	
	
}
