package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import data.dto.FreeCommentDto;
import mysql.db.DbConnect;

public class FreeCommentDao {

	DbConnect db = new DbConnect();

	// allList
	public List<FreeCommentDto> getAllFCs(String fbNum) {
		List<FreeCommentDto> list = new Vector<>();
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet  rs = null;
		
		String sql = "select * from FREECOMMENT where fbNum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, fbNum);
			
			rs =  pstmt.executeQuery();
			
			while(rs.next()) {
				FreeCommentDto dto = new FreeCommentDto();
				
				dto.setFcIdx(rs.getString("fcIdx"));
				dto.setFbNum(rs.getString("fbNum"));
 				dto.setUId(rs.getString("uId"));
                dto.setFcContent(rs.getString("fcContent"));
                dto.setFcLike(rs.getString("fcLike"));
                dto.setFcDislike(rs.getString("fcDislike"));
                dto.setFcWriteday(rs.getTimestamp("fcWriteday"));
                dto.setFcReport(rs.getString("fcReport"));
                
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
	
	// list - 최신순
	
	// list - 추천순
	
	// list - 신고수
	public List<FreeCommentDto> getAllFCs_report(int start, int perPage) {
		List<FreeCommentDto> list = new Vector<>();
		
		Connection conn = db.getConnection();
 		PreparedStatement pstmt = null;
 		ResultSet rs = null;
 		
 		String sql = "select * from FREECOMMENT where fcReport != 0 order by fcReport desc limit ?, ?";
 		 		
 		try {
 			pstmt = conn.prepareStatement(sql);
 			
 			pstmt.setInt(1, start);
			pstmt.setInt(2, perPage);
			
 			rs = pstmt.executeQuery();
 		
 			while(rs.next()) {
 				FreeCommentDto dto = new FreeCommentDto();
				
				dto.setFcIdx(rs.getString("fcIdx"));
				dto.setFbNum(rs.getString("fbNum"));
 				dto.setUId(rs.getString("uId"));
                dto.setFcContent(rs.getString("fcContent"));
                dto.setFcLike(rs.getString("fcLike"));
                dto.setFcDislike(rs.getString("fcDislike"));
                dto.setFcWriteday(rs.getTimestamp("fcWriteday"));
                dto.setFcReport(rs.getString("fcReport"));
                
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
	
	public List<FreeCommentDto> getAllmyFCs(int start, int perPage, String uId) {
		List<FreeCommentDto> list = new Vector<>();
		
		Connection conn = db.getConnection();
 		PreparedStatement pstmt = null;
 		ResultSet rs = null;
 		
 		String sql = "select * from FREECOMMENT where uId=? order by fcIdx desc limit ?, ?";
 		 		
 		try {
 			pstmt = conn.prepareStatement(sql);
 			
 			pstmt.setString(1, uId);
 			pstmt.setInt(2, start);
			pstmt.setInt(3, perPage);

 			rs = pstmt.executeQuery();
 		
 			while(rs.next()) {
 				FreeCommentDto dto = new FreeCommentDto();
				
				dto.setFcIdx(rs.getString("fcIdx"));
				dto.setFbNum(rs.getString("fbNum"));
 				dto.setUId(rs.getString("uId"));
                dto.setFcContent(rs.getString("fcContent"));
                dto.setFcLike(rs.getString("fcLike"));
                dto.setFcDislike(rs.getString("fcDislike"));
                dto.setFcWriteday(rs.getTimestamp("fcWriteday"));
                dto.setFcReport(rs.getString("fcReport"));
                
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
		
	// RB report totalCount
	public int getAllFCs_reportCount() {
		int n = 0;
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select count(*) from FREECOMMENT where fcReport !=0";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
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

	public int getAllmyFCs(String uId) {
		int n = 0;
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select count(*) from FREECOMMENT where uId=?";
		
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
	
	// getFC 
	public FreeCommentDto getFC(String fcIdx) {
		FreeCommentDto dto = new FreeCommentDto();

        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "select * from FREECOMMENT where fcIdx=?";

        try {
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, fcIdx);
            rs = pstmt.executeQuery();

            if(rs.next()) {
            	dto.setFcIdx(rs.getString("fcIdx"));
				dto.setFbNum(rs.getString("fbNum"));
 				dto.setUId(rs.getString("uId"));
                dto.setFcContent(rs.getString("fcContent"));
                dto.setFcLike(rs.getString("fcLike"));
                dto.setFcDislike(rs.getString("fcDislike"));
                dto.setFcWriteday(rs.getTimestamp("fcWriteday"));
                dto.setFcReport(rs.getString("fcReport"));               
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(rs, pstmt, conn);
        }

        return dto;
    }
	
	// insert
	public void insertFC(FreeCommentDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "insert into FREECOMMENT (fbNum, uId, fcContent, fcWriteday) values (?, ?, ?, now())";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getFbNum());
			pstmt.setString(2, dto.getUId());
			pstmt.setString(3, dto.getFcContent());
			
			pstmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	
	}
	
	// update
	public void updateFC(FreeCommentDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "update FREECOMMENT set fcContent=? where fcIdx=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getFcContent());
			pstmt.setString(2, dto.getFcIdx());

			pstmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	
	}
	
	// delete
	public void deleteFC(String fcIdx) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "delete from FREECOMMENT where fcIdx=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, fcIdx);
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	
	// fbLike 1 증가
	public void updateLike(String fcIdx) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "update FREECOMMENT set fcLike=fcLike+1 where fcIdx=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, fcIdx);
			
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	// fbDislike 1 증가
	public void updateDislike(String fcIdx) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "update FREECOMMENT set fcDislike=fcDislike+1 where fcIdx=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, fcIdx);
			
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	// fbReport 1 증가
	public void updateReport(String fcIdx) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "update FREECOMMENT set fcReport=fcReport+1 where fcIdx=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, fcIdx);
			
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}

	// search - nickname
		
	// search - fcContent

	// 페이징 처리
	
}
