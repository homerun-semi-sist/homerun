package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import data.dto.ReviewBoardDto;
import mysql.db.DbConnect;

public class ReviewBoardDao {

	DbConnect db = new DbConnect();
	
	// allList
	public List<ReviewBoardDto> getAllRBs() {
		List<ReviewBoardDto> list = new Vector<>();
		
		Connection conn = db.getConnection();
 		PreparedStatement pstmt = null;
 		ResultSet rs = null;
 		
 		String sql = "select * from REVIEWBOARD order by rbNum";
 		
 		try {
 			pstmt = conn.prepareStatement(sql);
 			rs = pstmt.executeQuery();
 		
 			while(rs.next()) {
 				ReviewBoardDto dto = new ReviewBoardDto();
 				
 				dto.setRbNum(rs.getString("rbNum"));
                dto.setUId(rs.getString("uId"));
                dto.setgId(rs.getString("gId"));
                dto.setRbSubject(rs.getString("rbSubject"));
                dto.setRbContent(rs.getString("rbContent"));
                dto.setRbPhoto(rs.getString("rbPhoto"));
                dto.setRbReadCnt(rs.getString("rbReadCnt"));
                dto.setRbLike(rs.getString("rbLike"));
                dto.setRbDislike(rs.getString("rbDislike"));
                dto.setRbWriteday(rs.getTimestamp("rbWriteday"));
                dto.setRbReport(rs.getString("rbReport"));
                
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
	
	/// getRB 
	public ReviewBoardDto getRB(String rbNum) {
		ReviewBoardDto dto = new ReviewBoardDto();

        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "select * from REVIEWBOARD where rbNum=?";

        try {
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, rbNum);
            rs = pstmt.executeQuery();

            if(rs.next()) {
            	dto.setRbNum(rs.getString("rbNum"));
            	dto.setUId(rs.getString("uId"));
                dto.setgId(rs.getString("gId"));
                dto.setRbSubject(rs.getString("rbSubject"));
                dto.setRbContent(rs.getString("rbContent"));
                dto.setRbPhoto(rs.getString("rbPhoto"));
                dto.setRbReadCnt(rs.getString("rbReadCnt"));
                dto.setRbLike(rs.getString("rbLike"));
                dto.setRbDislike(rs.getString("rbDislike"));
                dto.setRbWriteday(rs.getTimestamp("rbWriteday"));
                dto.setRbReport(rs.getString("rbReport"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(rs, pstmt, conn);
        }

        return dto;
    }
	
	// insert
	public void insertRB(ReviewBoardDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "insert into REVIEWBOARD(uId,gId,rbSubject,rbContent,rbWriteday) value(?,?,?,?,now());";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getUId());
			pstmt.setString(2, dto.getgId());
			pstmt.setString(3, dto.getRbSubject());
			pstmt.setString(4, dto.getRbContent());
			
			pstmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	
	}
	
	// update
	public void updateRB(ReviewBoardDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "update REVIEWBOARD set rbSubject=?,rbContent=? where rbNum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getRbSubject());
			pstmt.setString(2, dto.getRbContent());
			pstmt.setString(3, dto.getRbNum());
			
			pstmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}

	// delete
	public void deleteRB(String rbNum) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "delete from REVIEWBOARD where rbNum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, rbNum);
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	
	// rbReadCnt 1 증가
	public void updateReadCount(String rbNum) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "update REVIEWBOARD set rbReadCnt=rbReadCnt+1 where rbNum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, rbNum);
			
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	// rbLike 1 증가
	public void updateLike(String rbNum) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "update REVIEWBOARD set rbLike=rbLike+1 where rbNum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, rbNum);
			
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	// rbDislike 1 증가
	public void updateDislike(String rbNum) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "update REVIEWBOARD set rbDislike=rbDislike+1 where rbNum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, rbNum);
			
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	// rbReport 1 증가
	public void updateReport(String rbNum) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "update REVIEWBOARD set rbReport=rbReport+1 where rbNum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, rbNum);
			
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	// search - nickname
	
	// search - rbSubject
	
	// search - rbContent

	// 페이징 처리
	
}
