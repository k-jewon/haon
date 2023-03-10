package kr.co.haon.book;

import java.sql.Date;

public class BookVO {
	private int book_Id;
	private int room_Id;
	private int user_Id;
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
	public int getBook_Id() {
		return book_Id;
	}
	public void setBook_Id(int book_Id) {
		this.book_Id = book_Id;
	}
	public int getRoom_Id() {
		return room_Id;
	}
	public void setRoom_Id(int room_Id) {
		this.room_Id = room_Id;
	}
	public int getUser_Id() {
		return user_Id;
	}
	public void setUser_Id(int user_Id) {
		this.user_Id = user_Id;
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
	@Override
	public String toString() {
		return "BookVO [book_Id=" + book_Id + ", room_Id=" + room_Id + ", user_Id=" + user_Id + ", book_capacity="
				+ book_capacity + ", book_price=" + book_price + ", book_reserveDate=" + book_reserveDate
				+ ", book_checkIn=" + book_checkIn + ", book_checkOut=" + book_checkOut + ", book_more=" + book_more
				+ ", book_status=" + book_status + ", book_hanbok=" + book_hanbok + ", book_breakfast=" + book_breakfast
				+ ", book_plusperson=" + book_plusperson + "]";
	}
}
