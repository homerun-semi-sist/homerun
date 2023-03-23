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

			while (rs.next()) {
				GameDto dto = new GameDto();

				dto.setgId(rs.getString("gId"));
				dto.setgDay(rs.getString("gDay"));
				dto.setHome(rs.getString("home"));
				dto.setAway(rs.getString("away"));
				dto.setWin(rs.getString("win"));

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
			if (rs.next()) {
				dto.setgId(rs.getString("gId"));
				dto.setgDay(rs.getString("gDay"));
				dto.setHome(rs.getString("home"));
				dto.setAway(rs.getString("away"));
				dto.setWin(rs.getString("win"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}

		return dto;
	}

	public void insertGame(String gDay, String home, String away, String win) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "insert into GAME values(null,?,?,?,?)";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, gDay);
			pstmt.setString(2, home);
			pstmt.setString(3, away);
			pstmt.setString(4, win);

			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}

}
