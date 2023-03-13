package kr.co.haon.book;

import java.sql.Date;

public class BookVO {
	private int book_id;
	private int room_id;
	private int user_id;
	private int book_capacity;
	private int book_price;
	private Date book_reserveDate;
	private Date book_checkIn;
	private Date book_checkOut;
	private String book_more;
	private int book_status;
	private int book_hanbok;
	private int book_breakfast;
	private int book_plusperson;
	
	// 관리자 단 검색 기능 추가
	private String type;
	private String keyword;
	
	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	public int getRoom_id() {
		return room_id;
	}
	public void setRoom_id(int room_id) {
		this.room_id = room_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getBook_capacity() {
		return book_capacity;
	}
	public void setBook_capacity(int book_capacity) {
		this.book_capacity = book_capacity;
	}
	public int getBook_price() {
		return book_price;
	}
	public void setBook_price(int book_price) {
		this.book_price = book_price;
	}
	public Date getBook_reserveDate() {
		return book_reserveDate;
	}
	public void setBook_reserveDate(Date book_reserveDate) {
		this.book_reserveDate = book_reserveDate;
	}
	public Date getBook_checkIn() {
		return book_checkIn;
	}
	public void setBook_checkIn(Date book_checkIn) {
		this.book_checkIn = book_checkIn;
	}
	public Date getBook_checkOut() {
		return book_checkOut;
	}
	public void setBook_checkOut(Date book_checkOut) {
		this.book_checkOut = book_checkOut;
	}
	public String getBook_more() {
		return book_more;
	}
	public void setBook_more(String book_more) {
		this.book_more = book_more;
	}
	public int getBook_status() {
		return book_status;
	}
	public void setBook_status(int book_status) {
		this.book_status = book_status;
	}
	public int getBook_hanbok() {
		return book_hanbok;
	}
	public void setBook_hanbok(int book_hanbok) {
		this.book_hanbok = book_hanbok;
	}
	public int getBook_breakfast() {
		return book_breakfast;
	}
	public void setBook_breakfast(int book_breakfast) {
		this.book_breakfast = book_breakfast;
	}
	public int getBook_plusperson() {
		return book_plusperson;
	}
	public void setBook_plusperson(int book_plusperson) {
		this.book_plusperson = book_plusperson;
	}
	
	// 검색 기능 setter, getter
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	@Override
	public String toString() {
		return "BookVO [book_id=" + book_id + ", room_id=" + room_id + ", user_id=" + user_id + ", book_capacity="
				+ book_capacity + ", book_price=" + book_price + ", book_reserveDate=" + book_reserveDate
				+ ", book_checkIn=" + book_checkIn + ", book_checkOut=" + book_checkOut + ", book_more=" + book_more
				+ ", book_status=" + book_status + ", book_hanbok=" + book_hanbok + ", book_breakfast=" + book_breakfast
				+ ", book_plusperson=" + book_plusperson + "]";
	}
}
