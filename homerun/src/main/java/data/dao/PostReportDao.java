package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import data.dto.FreeBoardDto;
import data.dto.PostReportDto;
import mysql.db.DbConnect;

public class PostReportDao {
	
	DbConnect db = new DbConnect();
	
	// PR totalCount
	public int getPRTotalCount() {
		int n = 0;
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select count(*) from POSTREPORT";
		
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

	// FBRP cnt
	public int getFBRPcnt() {
		int n = 0;
		
		Connection conn = db.getConnection();
 		PreparedStatement pstmt = null;
 		ResultSet rs = null;
 		
 		String sql = "select count(*) from POSTREPORT where fbNum is not null";

 		try {
 			pstmt = conn.prepareStatement(sql);
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
	
	// FBRP cnt
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
	
	// RBMK cnt
	public int getRBRPcnt() {
		int n = 0;
		
		Connection conn = db.getConnection();
 		PreparedStatement pstmt = null;
 		ResultSet rs = null;
 		
 		String sql = "select count(*) from POSTREPORT where rbNum is not null";

 		try {
 			pstmt = conn.prepareStatement(sql);
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

	// search - nickname
	public List<FreeBoardDto> search_nickname(int start, int perPage, String nickname) {
		List<FreeBoardDto> list = new Vector<>();

        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "select r.*  from POSTREPORT r, USER u where r.uId=u.uId and u.nickname Like ? order by prId desc limit ?, ?";

        try {
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, "%" + nickname + "%");
            pstmt.setInt(2, start);
            pstmt.setInt(3, perPage);
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
                
                list.add(dto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(rs, pstmt, conn);
        }

        return list;
				
	}
	
	// search - fbSubject
	// select * from FREEBOARD where fbSubject Like "%?%";
	public List<FreeBoardDto> search_subject(int start, int perPage, String fbSubject) {
		List<FreeBoardDto> list = new Vector<>();

        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "select * from FREEBOARD where fbSubject Like ? order by prId desc limit ?, ?";

        try {
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, "%" + fbSubject + "%");
            pstmt.setInt(2, start);
            pstmt.setInt(3, perPage);
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
                
                list.add(dto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(rs, pstmt, conn);
        }

        return list;
				
	}

	// search - fbContent
	// select * from FREEBOARD where fbContent Like "%?%";
	public List<FreeBoardDto> search_content(int start, int perPage, String fbContent) {
		List<FreeBoardDto> list = new Vector<>();

        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "select * from FREEBOARD where fbContent Like ? order by prId desc limit ?, ?";

        try {
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, "%" + fbContent + "%");
            pstmt.setInt(2, start);
            pstmt.setInt(3, perPage);
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
