package kr.co.haon.pay;

import java.sql.Date;

public class PayVO {
private int pay_id;
private int user_id;
private String user_name;
private int room_id;
private String room_name; 
private String book_id; 
private int pay_payment;
private int pay_price; 
private Date pay_date; 
private String pay_static;

public int getPay_id() {
	return pay_id;
}
public void setPay_id(int pay_id) {
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
public String getBook_id() {
	return book_id;
}
public void setBook_id(String book_id) {
	this.book_id = book_id;
}
public int getPay_payment() {
	return pay_payment;
}
public void setPay_payment(int pay_payment) {
	this.pay_payment = pay_payment;
}
public int getPay_price() {
	return pay_price;
}
public void setPay_price(int pay_price) {
	this.pay_price = pay_price;
}
public Date getPay_date() {
	return pay_date;
}
public void setPay_date(Date pay_date) {
	this.pay_date = pay_date;
}
public String getPay_static() {
	return pay_static;
}
public void setPay_static(String pay_static) {
	this.pay_static = pay_static;
}

}
