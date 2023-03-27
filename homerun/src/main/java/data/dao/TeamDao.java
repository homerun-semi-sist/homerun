package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
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

			if (rs.next()) {
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

			while (rs.next()) {
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

	public List<HashMap<String, String>> teamRank() {
//		String[] rank = new String[10];
//		String[] win_count = new String[10];
		
		List<HashMap<String, String>> list = new ArrayList<>();

		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "SELECT \r\n"
				+ "    T.구단명,\r\n"
				+ "    T.승수+L.패수 AS 경기수,\r\n"
				+ "    T.승수, \r\n"
				+ "    L.패수,\r\n"
				+ "    ROUND(T.승수 / (T.승수 + L.패수), 3) AS '승률',\r\n"
				+ "    RANK() OVER (ORDER BY T.승수 / (T.승수 + L.패수) DESC) AS '등수'\r\n"
				+ "FROM \r\n"
				+ "    (SELECT \r\n"
				+ "        win AS '구단명', \r\n"
				+ "        COUNT(*) AS '승수'\r\n"
				+ "    FROM \r\n"
				+ "        GAME \r\n"
				+ "    GROUP BY \r\n"
				+ "        win) AS T \r\n"
				+ "    JOIN \r\n"
				+ "    (SELECT \r\n"
				+ "        lose AS '구단명', \r\n"
				+ "        COUNT(*) AS '패수'\r\n"
				+ "    FROM \r\n"
				+ "        GAME \r\n"
				+ "    GROUP BY \r\n"
				+ "        lose) AS L \r\n"
				+ "    ON T.구단명 = L.구단명\r\n"
				+ "ORDER BY \r\n"
				+ "    '등수' ASC";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			//int i = 0;
			while (rs.next()) {
				HashMap<String, String> map = new HashMap<>();
				
				map.put("등수", rs.getString("등수"));
				map.put("구단명", rs.getString("구단명"));
				map.put("경기수", rs.getString("경기수"));
				map.put("승수", rs.getString("승수"));
				map.put("패수", rs.getString("패수"));
				map.put("승률", rs.getString("승률"));
				
				
				/*
				 * win_count[i] = rs.getString("win_count"); rank[i] = rs.getString("rnk"); i++;
				 */
				
				list.add(map);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}

		return list;
	}
}