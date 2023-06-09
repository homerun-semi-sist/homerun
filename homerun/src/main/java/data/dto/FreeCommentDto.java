package data.dto;

import java.sql.Timestamp;

public class FreeCommentDto {

	private String fcIdx;
	private String fbNum;
	private String uId;
	private String fcContent;
	private String fcLike;
	private String fcDislike;
	private Timestamp fcWriteday;
	private String fcReport;
	
	public String getFcIdx() {
		return fcIdx;
	}
	public void setFcIdx(String fcIdx) {
		this.fcIdx = fcIdx;
	}
	public String getFbNum() {
		return fbNum;
	}
	public void setFbNum(String fbNum) {
		this.fbNum = fbNum;
	}
	public String getUId() {
		return uId;
	}
	public void setUId(String uId) {
		this.uId = uId;
	}
	public String getFcContent() {
		return fcContent;
	}
	public void setFcContent(String fcContent) {
		this.fcContent = fcContent;
	}
	public String getFcLike() {
		return fcLike;
	}
	public void setFcLike(String fcLike) {
		this.fcLike = fcLike;
	}
	public String getFcDislike() {
		return fcDislike;
	}
	public void setFcDislike(String fcDislike) {
		this.fcDislike = fcDislike;
	}
	public Timestamp getFcWriteday() {
		return fcWriteday;
	}
	public void setFcWriteday(Timestamp fcWriteday) {
		this.fcWriteday = fcWriteday;
	}
	public String getFcReport() {
		return fcReport;
	}
	public void setFcReport(String fcReport) {
		this.fcReport = fcReport;
	}

}
