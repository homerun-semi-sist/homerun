package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import data.dto.TeamDto;
import mysql.db.DbConnect;

public class TeamDao {
	
	 DbConnect db = new DbConnect();

    public TeamDto getTeam(String teamNick) {
        TeamDto dto = new TeamDto();

        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "select * from BASEBALLTEAM where teamNick=?";

        try {
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, teamNick);
            rs = pstmt.executeQuery();

            if(rs.next()) {
                dto.setTeamName(rs.getString("teamName"));
                dto.setTeamNick(rs.getString("teamNick"));
                dto.setTeamLogo(rs.getString("teamLogo"));
                dto.setHometown(rs.getString("hometown"));
                dto.setStadium(rs.getString("stadium"));
                dto.setLocation(rs.getString("location"));
                dto.settColor(rs.getString("tColor"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(rs, pstmt, conn);
        }

        return dto;
    }
}
