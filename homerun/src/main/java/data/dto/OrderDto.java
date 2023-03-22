package data.dto;

import java.sql.Timestamp;

public class OrderDto {
	
	private String oId;
	private String cId;
	private int oQTY;
	private Timestamp oDay;
	
	public String getoId() {
		return oId;
	}
	public void setoId(String oId) {
		this.oId = oId;
	}
	public String getcId() {
		return cId;
	}
	public void setcId(String cId) {
		this.cId = cId;
	}
	public int getoQTY() {
		return oQTY;
	}
	public void setoQTY(int oQTY) {
		this.oQTY = oQTY;
	}
	public Timestamp getoDay() {
		return oDay;
	}
	public void setoDay(Timestamp oDay) {
		this.oDay = oDay;
	}
	
}
