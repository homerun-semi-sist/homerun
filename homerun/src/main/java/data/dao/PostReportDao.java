package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import data.dto.PostReportDto;
import mysql.db.DbConnect;

public class PostReportDao {
	
	DbConnect db = new DbConnect();
	
	// FBRP cnt
	public int getFBRPcnt(String uId, String fbNum) {
		int n = 0;
		
		Connection conn = db.getConnection();
 		PreparedStatement pstmt = null;
 		ResultSet rs = null;
 		
 		String sql = "select * from POSTREPORT where uId=? and fbNum=?";

 		try {
 			pstmt = conn.prepareStatement(sql);
 			
 			pstmt.setString(1, uId);
 			pstmt.setString(2, fbNum);
 			rs = pstmt.executeQuery();
 		
 			if(rs.next()) {
				n = rs.getInt(1);
 			}
 		} catch (SQLException e) {
 			e.printStackTrace();
 		} finally {
 			db.dbClose(rs, pstmt, conn);
 		}
 		
		return n;
				
	}
	
	// RBMK cnt
	public int getRBRPcnt(String uId, String rbNum) {
		int n = 0;
		
		Connection conn = db.getConnection();
 		PreparedStatement pstmt = null;
 		ResultSet rs = null;
 		
 		String sql = "select count(*) from POSTREPORT where uId=? and rbNum=?";

 		try {
 			pstmt = conn.prepareStatement(sql);
 			
 			pstmt.setString(1, uId);
 			pstmt.setString(2, rbNum);
 			rs = pstmt.executeQuery();
 		
 			if(rs.next()) {
				n = rs.getInt(1);
 			}
 		} catch (SQLException e) {
 			e.printStackTrace();
 		} finally {
 			db.dbClose(rs, pstmt, conn);
 		}
 		
		return n;
				
	}
	
	// FB insert
	public void insertFBPR(PostReportDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "insert into POSTREPORT(uId,fbNum,rDay) value(?,?,now());";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getuId());
			pstmt.setString(2, dto.getFbNum());
			
			pstmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	
	}
	
	// RB insert
	public void insertRBPR(PostReportDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "insert into POSTREPORT(uId,rbNum,rDay) value(?,?,now());";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getuId());
			pstmt.setString(2, dto.getRbNum());
			
			pstmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	
	}
	
}
