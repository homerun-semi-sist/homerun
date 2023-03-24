package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import data.dto.BookMarkDto;
import data.dto.ReviewBoardDto;
import mysql.db.DbConnect;

public class BookMarkDao {
	
	DbConnect db = new DbConnect();
	
	// allList
	public List<BookMarkDto> getAllMyBMs(String uId) {
		List<BookMarkDto> list = new Vector<>();
		
		Connection conn = db.getConnection();
 		PreparedStatement pstmt = null;
 		ResultSet rs = null;
 		
 		String sql = "select * from BOOKMARKPOST where uId=?";

 		try {
 			pstmt = conn.prepareStatement(sql);
 			
 			pstmt.setString(1, uId);
 			rs = pstmt.executeQuery();
 		
 			while(rs.next()) {
 				BookMarkDto dto = new BookMarkDto();
 				
 				dto.setbId(rs.getString("bId"));
 				dto.setuId(rs.getString("uId"));
                dto.setFbNum(rs.getString("fbNum"));
                dto.setRbNum(rs.getString("rbNum"));
                dto.setbDay(rs.getTimestamp("bDay"));
               
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
	
	public List<BookMarkDto> getAllmyBMs(int start, int perPage, String uId) {
		List<BookMarkDto> list = new Vector<>();
		
		Connection conn = db.getConnection();
 		PreparedStatement pstmt = null;
 		ResultSet rs = null;
 		
 		String sql = "select * from BOOKMARKPOST where uId=? order by bId desc limit ?, ?";
 		 		
 		try {
 			pstmt = conn.prepareStatement(sql);
 			
 			pstmt.setString(1, uId);
 			pstmt.setInt(2, start);
			pstmt.setInt(3, perPage);

 			rs = pstmt.executeQuery();
 		
 			while(rs.next()) {
 				BookMarkDto dto = new BookMarkDto();
 				
 				dto.setbId(rs.getString("bId"));
 				dto.setuId(rs.getString("uId"));
                dto.setFbNum(rs.getString("fbNum"));
                dto.setRbNum(rs.getString("rbNum"));
                dto.setbDay(rs.getTimestamp("bDay"));
                
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
	
	public int getAllmyBMs(String uId) {
		int n = 0;
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select count(*) from BOOKMARKPOST where uId=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, uId);
			
			rs =  pstmt.executeQuery();
		
			if(rs.next()) 
				n = rs.getInt(1);
			
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				db.dbClose(rs, pstmt, conn);
		}
			
		return n; 
	}	
	
	// FBMK cnt
	public int getFBBMcnt(String uId, String fbNum) {
		int n = 0;
		
		Connection conn = db.getConnection();
 		PreparedStatement pstmt = null;
 		ResultSet rs = null;
 		
 		String sql = "select * from BOOKMARKPOST where uId=? and fbNum=?";

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
	public int getRBBMcnt(String uId, String rbNum) {
		int n = 0;
		
		Connection conn = db.getConnection();
 		PreparedStatement pstmt = null;
 		ResultSet rs = null;
 		
 		String sql = "select count(*) from BOOKMARKPOST where uId=? and rbNum=?";

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
	
	// insert
	public void insertFBBM(BookMarkDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "insert into BOOKMARKPOST(uId,fbNum,bDay) value(?,?,now());";
		
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
	public void insertRBBM(BookMarkDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "insert into BOOKMARKPOST(uId,rbNum,bDay) value(?,?,now());";
		
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

	// delete
	public void deleteMyBM(String bId) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "delete from BOOKMARKPOST where bId=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bId);
			
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	
	// 페이징 처리
	
}
