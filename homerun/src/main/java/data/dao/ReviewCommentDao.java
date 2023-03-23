package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import data.dto.ReviewCommentDto;
import mysql.db.DbConnect;

public class ReviewCommentDao {

	DbConnect db = new DbConnect();

	// allList
	public List<ReviewCommentDto> getAllRCs(String rbNum) {
		List<ReviewCommentDto> list = new Vector<>();
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet  rs = null;
		
		String sql = "select * from REVIEWCOMMENT where rbNum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, rbNum);
			
			rs =  pstmt.executeQuery();
			
			while(rs.next()) {
				ReviewCommentDto dto = new ReviewCommentDto();
				
				dto.setRcIdx(rs.getString("rcIdx"));
				dto.setRbNum(rs.getString("rbNum"));
 				dto.setUId(rs.getString("uId"));
                dto.setRcContent(rs.getString("rcContent"));
                dto.setRcLike(rs.getString("rcLike"));
                dto.setRcDislike(rs.getString("rcDislike"));
                dto.setRcWriteday(rs.getTimestamp("rcWriteday"));
                dto.setRcReport(rs.getString("rcReport"));
                
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
	
	// getRC 
	public ReviewCommentDto getRC(String rcIdx) {
		ReviewCommentDto dto = new ReviewCommentDto();

        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "select * from REVIEWCOMMENT where rcIdx=?";

        try {
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, rcIdx);
            rs = pstmt.executeQuery();

            if(rs.next()) {
            	dto.setRcIdx(rs.getString("rcIdx"));
				dto.setRbNum(rs.getString("rbNum"));
 				dto.setUId(rs.getString("uId"));
                dto.setRcContent(rs.getString("rcContent"));
                dto.setRcLike(rs.getString("rcLike"));
                dto.setRcDislike(rs.getString("rcDislike"));
                dto.setRcWriteday(rs.getTimestamp("rcWriteday"));
                dto.setRcReport(rs.getString("rcReport"));               
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(rs, pstmt, conn);
        }

        return dto;
    }
	
	// insert
	public void insertRC(ReviewCommentDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "insert into REVIEWCOMMENT (rbNum, uId, rcContent, rcWriteday) values (?, ?, ?, now())";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getRbNum());
			pstmt.setString(2, dto.getUId());
			pstmt.setString(3, dto.getRcContent());
			
			pstmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	
	}
	
	// update
	public void updateRC(ReviewCommentDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "update REVIEWCOMMENT set rcContent=? where rcIdx=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getRcContent());
			pstmt.setString(2, dto.getRcIdx());

			pstmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	
	}
	
	// delete
	public void deleteRC(String rcIdx) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "delete from REVIEWCOMMENT where rcIdx=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, rcIdx);
			
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	
	// fbLike 1 증가
	public void updateLike(String rcIdx) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "update REVIEWCOMMENT set rcLike=rcLike+1 where rcIdx=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, rcIdx);
			
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	// fbDislike 1 증가
	public void updateDislike(String rcIdx) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "update REVIEWCOMMENT set rcDislike=rcDislike+1 where rcIdx=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, rcIdx);
			
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	// fbReport 1 증가
	public void updateReport(String rcIdx) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "update REVIEWCOMMENT set rcReport=rcReport+1 where rcIdx=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, rcIdx);
			
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	// search - nickname
		
	// search - rcContent

	// 페이징 처리
}
