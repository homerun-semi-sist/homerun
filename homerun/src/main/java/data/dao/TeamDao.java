package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import data.dto.TeamDto;
import mysql.db.DbConnect;

public class TeamDao {
	
	DbConnect db = new DbConnect();

	// getTeam
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
    
    // allList
 	public List<TeamDto> getAllTeams() {
 		List<TeamDto> list = new Vector<>();
 		
 		Connection conn = db.getConnection();
 		PreparedStatement pstmt = null;
 		ResultSet rs = null;
 		
 		String sql = "select * from BASEBALLTEAM";
 		
 		try {
 			pstmt = conn.prepareStatement(sql);
 			rs = pstmt.executeQuery();
 		
 			while(rs.next()) {
 				TeamDto dto = new TeamDto();
 				
 				dto.setTeamName(rs.getString("teamName"));
                dto.setTeamNick(rs.getString("teamNick"));
                dto.setTeamLogo(rs.getString("teamLogo"));
                dto.setHometown(rs.getString("hometown"));
                dto.setStadium(rs.getString("stadium"));
                dto.setLocation(rs.getString("location"));
                dto.settColor(rs.getString("tColor"));
                
 				// list 추가
 				list.add(dto);
 			}
 		} catch (SQLException e) {
 			e.printStackTrace();
 		} finally {
 			db.dbClose(rs, pstmt, conn);
 		}
 		
 		return list;
 	}
}
