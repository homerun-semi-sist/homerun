package data.dto;

public class CartDto {
	private int cId;
	private String uId;
	private String pId;
	private int cQTY; // 이것이 무엇인고?
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
