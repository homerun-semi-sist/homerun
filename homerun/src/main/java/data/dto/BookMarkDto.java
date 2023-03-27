package data.dto;

import java.sql.Timestamp;

public class BookMarkDto {

	private String bId;
	private String uId;
	private String fbNum;
	private String rbNum;
	private Timestamp bDay;
	
	public String getbId() {
		return bId;
	}
	public void setbId(String bId) {
		this.bId = bId;
	}
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getFbNum() {
		return fbNum;
	}
	public void setFbNum(String fbNum) {
		this.fbNum = fbNum;
	}
	public String getRbNum() {
		return rbNum;
	}
	public void setRbNum(String rbNum) {
		this.rbNum = rbNum;
	}
	public Timestamp getbDay() {
		return bDay;
	}
	public void setbDay(Timestamp bDay) {
		this.bDay = bDay;
	}
	
}
