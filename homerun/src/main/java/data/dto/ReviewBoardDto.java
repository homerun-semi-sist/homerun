package data.dto;

import java.sql.Timestamp;

public class ReviewBoardDto {

	private String rbNum;
	private String nickname;
	private String gId;
	private String rbSubject;
	private String rbContent;
	private String rbPhoto;
	private String rbReadCnt;
	private String rbLike;
	private String rbDislike;
	private Timestamp rbWriteday;
	private String rbReport;
	
	public String getRbNum() {
		return rbNum;
	}
	public void setRbNum(String rbNum) {
		this.rbNum = rbNum;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getgId() {
		return gId;
	}
	public void setgId(String gId) {
		this.gId = gId;
	}
	public String getRbSubject() {
		return rbSubject;
	}
	public void setRbSubject(String rbSubject) {
		this.rbSubject = rbSubject;
	}
	public String getRbContent() {
		return rbContent;
	}
	public void setRbContent(String rbContent) {
		this.rbContent = rbContent;
	}
	public String getRbPhoto() {
		return rbPhoto;
	}
	public void setRbPhoto(String rbPhoto) {
		this.rbPhoto = rbPhoto;
	}
	public String getRbReadCnt() {
		return rbReadCnt;
	}
	public void setRbReadCnt(String rbReadCnt) {
		this.rbReadCnt = rbReadCnt;
	}
	public String getRbLike() {
		return rbLike;
	}
	public void setRbLike(String rbLike) {
		this.rbLike = rbLike;
	}
	public String getRbDislike() {
		return rbDislike;
	}
	public void setRbDislike(String rbDislike) {
		this.rbDislike = rbDislike;
	}
	public Timestamp getRbWriteday() {
		return rbWriteday;
	}
	public void setRbWriteday(Timestamp rbWriteday) {
		this.rbWriteday = rbWriteday;
	}
	public String getRbReport() {
		return rbReport;
	}
	public void setRbReport(String rbReport) {
		this.rbReport = rbReport;
	}

}
