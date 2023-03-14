package kr.co.haon.pay;

import java.sql.Date;

public class PayVO {
private String pay_id;
private int user_id;
private String user_name;
private int room_id;
private String room_name;
private String room_type;
private int book_id; 
private int pay_payment;
private int book_price; 
private Date pay_date; 
private Date book_checkIn;
private Date book_checkOut;
private String pay_static;
private int book_hanbok;
private int book_breakfast;
private int book_plusperson;

public String getPay_id() {
	return pay_id;
}
public void setPay_id(String pay_id) {
	this.pay_id = pay_id;
}
public int getUser_id() {
	return user_id;
}
public void setUser_id(int user_id) {
	this.user_id = user_id;
}
public String getUser_name() {
	return user_name;
}
public void setUser_name(String user_name) {
	this.user_name = user_name;
}
public int getRoom_id() {
	return room_id;
}
public void setRoom_id(int room_id) {
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
public int getBook_id() {
	return book_id;
}
public void setBook_id(int book_id) {
	this.book_id = book_id;
}
public int getPay_payment() {
	return pay_payment;
}
public void setPay_payment(int pay_payment) {
	this.pay_payment = pay_payment;
}
public int getBook_price() {
	return book_price;
}
public void setBook_price(int book_price) {
	this.book_price = book_price;
}
public Date getPay_date() {
	return pay_date;
}
public void setPay_date(Date pay_date) {
	this.pay_date = pay_date;
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
public String getPay_static() {
	return pay_static;
}
public void setPay_static(String pay_static) {
	this.pay_static = pay_static;
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

}
