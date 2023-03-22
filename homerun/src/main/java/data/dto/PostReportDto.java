package data.dto;

import java.sql.Timestamp;

public class PostReportDto {

	private String prId;
	private String uId;
	private String fbNum;
	private String rbNum;
	private Timestamp rDay;
	private int reportCnt; 
	
	public String getPrId() {
		return prId;
	}
	public void setPrId(String prId) {
		this.prId = prId;
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
	public Timestamp getrDay() {
		return rDay;
	}
	public void setrDay(Timestamp rDay) {
		this.rDay = rDay;
	}
	public int getReportCnt() {
		return reportCnt;
	}
	public void setReportCnt(int reportCnt) {
		this.reportCnt = reportCnt;
	}

}
