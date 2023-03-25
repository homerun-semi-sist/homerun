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
 		
 		String sql = "select * from REVIEWBOARD order by uId='admin' desc, rbNum desc";
 		
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
	
	// list - 신고수
	// SELECT * FROM POSTREPORT WHERE fbReport != 0;
	public List<ReviewBoardDto> getAllRBs_report(int start, int perPage) {
		List<ReviewBoardDto> list = new Vector<>();
		
		Connection conn = db.getConnection();
 		PreparedStatement pstmt = null;
 		ResultSet rs = null;
 		
 		String sql = "select * from REVIEWBOARD where rbReport != 0 order by rbNum desc limit ?, ?";
 		 		
 		try {
 			pstmt = conn.prepareStatement(sql);
 			
 			pstmt.setInt(1, start);
			pstmt.setInt(2, perPage);
 			
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

	public List<ReviewBoardDto> getAllmyRBs(int start, int perPage, String uId) {
		List<ReviewBoardDto> list = new Vector<>();
		
		Connection conn = db.getConnection();
 		PreparedStatement pstmt = null;
 		ResultSet rs = null;
 		
 		String sql = "select * from REVIEWBOARD where uId=? order by rbNum desc limit ?, ?";
 		 		
 		try {
 			pstmt = conn.prepareStatement(sql);
 			
 			pstmt.setString(1, uId);
 			pstmt.setInt(2, start);
			pstmt.setInt(3, perPage);

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
	
	// RB report totalCount
	public int getAllRBs_reportCount() {
		int n = 0;
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select count(*) from REVIEWBOARD where rbReport !=0";
		
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

	public int getAllmyRBs(String uId) {
		int n = 0;
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select count(*) from REVIEWBOARD where uId=?";
		
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
		
	// getRB 
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
	// select r.* from REVIEWBOARD r, USER u where r.uId=u.uId and u.nickname=?;
	public List<ReviewBoardDto> search_nickname(int start, int perPage, String nickname) {
		List<ReviewBoardDto> list = new Vector<>();

        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "select r.*  from REVIEWBOARD r, USER u where r.uId=u.uId and u.nickname Like ? order by u.uId='admin' desc, rbNum desc limit ?, ?";

        try {
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, "%" + nickname + "%");
            pstmt.setInt(2, start);
            pstmt.setInt(3, perPage);
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
                
                list.add(dto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(rs, pstmt, conn);
        }

        return list;
				
	}
	
	
	// search - rbSubject
	// select * from REVIEWBOARD where rbSubject Like "%?%";
	public List<ReviewBoardDto> search_subject(int start, int perPage, String fbSubject) {
		List<ReviewBoardDto> list = new Vector<>();

        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "select * from REVIEWBOARD where rbSubject Like ? order by u.uId='admin' desc, rbNum desc limit ?, ?";

        try {
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, "%" + fbSubject + "%");
            pstmt.setInt(2, start);
            pstmt.setInt(3, perPage);
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
                
                list.add(dto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(rs, pstmt, conn);
        }

        return list;
				
	}
		
	// search - rbContent
	// select * from REVIEWBOARD where rbContent Like "%?%";
	public List<ReviewBoardDto> search_content(int start, int perPage, String rbContent) {
		List<ReviewBoardDto> list = new Vector<>();

        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "select * from REVIEWBOARD where rbContent Like ? order by u.uId='admin' desc, rbNum desc limit ?, ?";

        try {
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, "%" + rbContent + "%");
            pstmt.setInt(2, start);
            pstmt.setInt(3, perPage);
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
                
                list.add(dto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(rs, pstmt, conn);
        }

        return list;
				
	}
	
	// 페이징 처리
	// RB totalCount
	public int getRBTotalCount() {
		int n = 0;
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select count(*) from REVIEWBOARD";
		
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
		
	// FB List(start, perPage)
	public List<ReviewBoardDto> getRBList(int start, int perPage) {
		List<ReviewBoardDto> list = new Vector<>();

		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from REVIEWBOARD order by uId='admin' desc, rbNum desc limit ?, ?";
		// select * from simpleboard order by num desc limit i, j => i번부터 j번까지 조회
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			// 바인딩
			pstmt.setInt(1, start);
			pstmt.setInt(2, perPage);
			
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
