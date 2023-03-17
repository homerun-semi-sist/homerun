package data.dto;

import java.sql.Timestamp;

public class OrderDto {
	
	private int oId;
	private int cId;
	private int oQTY;
	private Timestamp oDay;
	public int getoId() {
		return oId;
	}
	public void setoId(int oId) {
		this.oId = oId;
	}
	public int getcId() {
		return cId;
	}
	public void setcId(int cId) {
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
