package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import data.dto.GameDto;
import mysql.db.DbConnect;

public class GameDao {

	DbConnect db = new DbConnect();
	
	// getGame
	public GameDto getGame(String gId) {
		GameDto dto = new GameDto();
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from GAME where gId=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, gId);
			rs = pstmt.executeQuery();
			
			// 하나의 데이터
			if(rs.next()) {
				dto.setgId(rs.getString("gId"));
				dto.setgDay(rs.getString("gDay"));
				dto.setHome(rs.getString("home"));
				dto.setAway(rs.getString("away"));
				dto.setWin(rs.getString("win"));
				dto.setLose(rs.getString("lose"));
				dto.setGstadium(rs.getString("gstadium"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return dto;
	}
	
	// allList
	public Vector<GameDto> getAllGames() {
		Vector<GameDto> list = new Vector<>();
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from GAME order by gId";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				GameDto dto = new GameDto();
				
				dto.setgId(rs.getString("gId"));
				dto.setgDay(rs.getString("gDay"));
				dto.setHome(rs.getString("home"));
				dto.setAway(rs.getString("away"));
				dto.setWin(rs.getString("win"));
				dto.setLose(rs.getString("lose"));
				dto.setGstadium(rs.getString("gstadium"));
				
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
