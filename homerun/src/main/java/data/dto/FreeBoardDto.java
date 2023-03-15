package data.dto;

import java.sql.Timestamp;

public class FreeBoardDto {
	
	private String fbNum;
	private String nickname;
	private String fbCategory;
	private String fbSubject;
	private String fbContent;
	private String fbPhoto;
	private String fbReadCnt;
	private String fbLike;
	private String fbDislike;
	private Timestamp fbWriteday;
	private String fbReport;
	
	public String getFbNum() {
		return fbNum;
	}
	public void setFbNum(String fbNum) {
		this.fbNum = fbNum;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getFbCategory() {
		return fbCategory;
	}
	public void setFbCategory(String fbCategory) {
		this.fbCategory = fbCategory;
	}
	public String getFbSubject() {
		return fbSubject;
	}
	public void setFbSubject(String fbSubject) {
		this.fbSubject = fbSubject;
	}
	public String getFbContent() {
		return fbContent;
	}
	public void setFbContent(String fbContent) {
		this.fbContent = fbContent;
	}
	public String getFbPhoto() {
		return fbPhoto;
	}
	public void setFbPhoto(String fbPhoto) {
		this.fbPhoto = fbPhoto;
	}
	public String getFbReadCnt() {
		return fbReadCnt;
	}
	public void setFbReadCnt(String fbReadCnt) {
		this.fbReadCnt = fbReadCnt;
	}
	public String getFbLike() {
		return fbLike;
	}
	public void setFbLike(String fbLike) {
		this.fbLike = fbLike;
	}
	public String getFbDislike() {
		return fbDislike;
	}
	public void setFbDislike(String fbDislike) {
		this.fbDislike = fbDislike;
	}
	public Timestamp getFbWriteday() {
		return fbWriteday;
	}
	public void setFbWriteday(Timestamp fbWriteday) {
		this.fbWriteday = fbWriteday;
	}
	public String getFbReport() {
		return fbReport;
	}
	public void setFbReport(String fbReport) {
		this.fbReport = fbReport;
	}

}
