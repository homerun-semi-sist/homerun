package data.dto;

import java.sql.Timestamp;

public class CartDto {
	private int cId; //cart id
	private String uId; //user id
	private String pId; //상품 id 
	private int cQTY; // 이것이 무엇인고?
	private Timestamp cartDay;
	
	public Timestamp getCartDay() {
		return cartDay;
	}
	public void setCartDay(Timestamp cartDay) {
		this.cartDay = cartDay;
	}
	public int getcId() {
		return cId;
	}
	public void setcId(int cId) {
		this.cId = cId;
	}
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getpId() {
		return pId;
	}
	public void setpId(String pId) {
		this.pId = pId;
	}
	public int getcQTY() {
		return cQTY;
	}
	public void setcQTY(int cQTY) {
		this.cQTY = cQTY;
	}
}
