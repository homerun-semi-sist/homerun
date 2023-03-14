package data.dto;

public class TeamDto {
	
	private String teamName;
    private String teamNick;
    private String teamLogo;
    private String hometown;
    private String stadium;
    private String location;
    private String tColor;
    
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getTeamNick() {
		return teamNick;
	}
	public void setTeamNick(String teamNick) {
		this.teamNick = teamNick;
	}
	public String getTeamLogo() {
		return teamLogo;
	}
	public void setTeamLogo(String teamLogo) {
		this.teamLogo = teamLogo;
	}
	public String getHometown() {
		return hometown;
	}
	public void setHometown(String hometown) {
		this.hometown = hometown;
	}
	public String getStadium() {
		return stadium;
	}
	public void setStadium(String stadium) {
		this.stadium = stadium;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String gettColor() {
		return tColor;
	}
	public void settColor(String tColor) {
		this.tColor = tColor;
	}
}
