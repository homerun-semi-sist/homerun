package data.dto;

import java.sql.Timestamp;

public class CartDto {
	private String cId; //cart id
	private String uId; //user id
	private String pId; //상품 id 
	private int cQTY; // 
	private Timestamp cartDay;
	
	public Timestamp getCartDay() {
		return cartDay;
	}
	public void setCartDay(Timestamp cartDay) {
		this.cartDay = cartDay;
	}
	public String getcId() {
		return cId;
	}
	public void setcId(String cId) {
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
