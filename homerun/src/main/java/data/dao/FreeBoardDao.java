package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import data.dto.FreeBoardDto;
import data.dto.TeamDto;
import mysql.db.DbConnect;

public class FreeBoardDao {

	DbConnect db = new DbConnect();
	
	// allList
	public List<FreeBoardDto> getAllFBs() {
		List<FreeBoardDto> list = new Vector<>();
		
		Connection conn = db.getConnection();
 		PreparedStatement pstmt = null;
 		ResultSet rs = null;
 		
 		String sql = "select * from FREEBOARD order by fbNum";
 		// where nickname=''
 		
 		try {
 			pstmt = conn.prepareStatement(sql);
 			rs = pstmt.executeQuery();
 		
 			while(rs.next()) {
 				FreeBoardDto dto = new FreeBoardDto();
 				
 				dto.setFbNum(rs.getString("fbNum"));
 				dto.setUId(rs.getString("uId"));
                dto.setFbCategory(rs.getString("fbCategory"));
                dto.setFbSubject(rs.getString("fbSubject"));
                dto.setFbContent(rs.getString("fbContent"));
                dto.setFbPhoto(rs.getString("fbPhoto"));
                dto.setFbReadCnt(rs.getString("fbReadCnt"));
                dto.setFbLike(rs.getString("fbLike"));
                dto.setFbDislike(rs.getString("fbDislike"));
                dto.setFbWriteday(rs.getTimestamp("fbWriteday"));
                dto.setFbReport(rs.getString("fbReport"));
                
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
	
	// list - 조회수순
	
	// getFB 
	public FreeBoardDto getFB(String fbNum) {
		FreeBoardDto dto = new FreeBoardDto();

        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "select * from FREEBOARD where fbNum=?";

        try {
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, fbNum);
            rs = pstmt.executeQuery();

            if(rs.next()) {
            	dto.setFbNum(rs.getString("fbNum"));
            	dto.setUId(rs.getString("uId"));
                dto.setFbCategory(rs.getString("fbCategory"));
                dto.setFbSubject(rs.getString("fbSubject"));
                dto.setFbContent(rs.getString("fbContent"));
                dto.setFbPhoto(rs.getString("fbPhoto"));
                dto.setFbReadCnt(rs.getString("fbReadCnt"));
                dto.setFbLike(rs.getString("fbLike"));
                dto.setFbDislike(rs.getString("fbDislike"));
                dto.setFbWriteday(rs.getTimestamp("fbWriteday"));
                dto.setFbReport(rs.getString("fbReport"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(rs, pstmt, conn);
        }

        return dto;
    }
	
	// insert
	public void insertFB(FreeBoardDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "insert into FREEBOARD(uId,fbCategory,fbSubject,fbContent,fbWriteday) value(?,?,?,?,now());";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getUId());
			pstmt.setString(2, dto.getFbCategory());
			pstmt.setString(3, dto.getFbSubject());
			pstmt.setString(4, dto.getFbContent());
			
			pstmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	
	}
	
	// update
	public void updateFB(FreeBoardDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "update FREEBOARD set fbSubject=?,fbContent=? where fbNum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getFbSubject());
			pstmt.setString(2, dto.getFbContent());
			pstmt.setString(3, dto.getFbNum());
			
			pstmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}

	// delete
	public void deleteFB(String fbNum) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "delete from FREEBOARD where fbNum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, fbNum);
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	
	// fbReadCnt 1 증가
	public void updateReadCount(String fbNum) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "update FREEBOARD set fbReadCnt=fbReadCnt+1 where fbNum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, fbNum);
			
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	// fbLike 1 증가
	public void updateLike(String fbNum) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "update FREEBOARD set fbLike=fbLike+1 where fbNum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, fbNum);
			
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	// fbDislike 1 증가
	public void updateDislike(String fbNum) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "update FREEBOARD set fbDislike=fbDislike+1 where fbNum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, fbNum);
			
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	// fbReport 1 증가
	public void updateReport(String fbNum) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "update FREEBOARD set fbReport=fbReport+1 where fbNum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, fbNum);
			
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	// search - nickname
	
	// search - fbSubject
	
	// search - fbContent

	// 페이징 처리
	
}
