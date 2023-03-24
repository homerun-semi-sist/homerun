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
 		
 		String sql = "select * from FREEBOARD order by uId='admin' desc, fbNum desc";
 		 		
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
	
	// allList_category
	public List<FreeBoardDto> getAllFBs_category(int start, int perPage, String fbCategory) {
		List<FreeBoardDto> list = new Vector<>();
		
		Connection conn = db.getConnection();
 		PreparedStatement pstmt = null;
 		ResultSet rs = null;
 		
 		String sql = "select * from FREEBOARD where fbCategory=? order by fbNum desc limit ?, ?";
 		 		
 		try {
 			pstmt = conn.prepareStatement(sql);
 			
 			pstmt.setString(1, fbCategory);
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

	public List<FreeBoardDto> getAllmyFBs(int start, int perPage, String uId) {
		List<FreeBoardDto> list = new Vector<>();
		
		Connection conn = db.getConnection();
 		PreparedStatement pstmt = null;
 		ResultSet rs = null;
 		
 		String sql = "select * from FREEBOARD where uId=? order by fbNum desc limit ?, ?";
 		 		
 		try {
 			pstmt = conn.prepareStatement(sql);
 			
 			pstmt.setString(1, uId);
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
	public List<FreeBoardDto> getAllFBs_like() {
		List<FreeBoardDto> list = new Vector<>();
		
		Connection conn = db.getConnection();
 		PreparedStatement pstmt = null;
 		ResultSet rs = null;
 		
 		String sql = "select * from FREEBOARD order by uId='admin' desc, fbLike desc";
 		 		
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
	
	// list - 조회수순
	public List<FreeBoardDto> getAllFBs_readcnt() {
		List<FreeBoardDto> list = new Vector<>();
		
		Connection conn = db.getConnection();
 		PreparedStatement pstmt = null;
 		ResultSet rs = null;
 		
 		String sql = "select * from FREEBOARD order by uId='admin' desc, fbReadCnt desc";
 		 		
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
	
	// list - 신고수
	// SELECT * FROM POSTREPORT WHERE fbReport != 0;
	public List<FreeBoardDto> getAllFBs_report(int start, int perPage) {
		List<FreeBoardDto> list = new Vector<>();
		
		Connection conn = db.getConnection();
 		PreparedStatement pstmt = null;
 		ResultSet rs = null;
 		
 		String sql = "select * from FREEBOARD where fbReport !=0 order by fbNum desc limit ?, ?";
 		 		
 		try {
 			pstmt = conn.prepareStatement(sql);
 			
 			pstmt.setInt(1, start);
			pstmt.setInt(2, perPage);
			
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
	
	// FB report totalCount
	public int getAllFBs_reportCount() {
		int n = 0;
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select count(*) from FREEBOARD where fbReport !=0";
		
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
	// select f.* from FREEBOARD f, USER u where f.uId=u.uId and u.nickname=?;
	public List<FreeBoardDto> search_nickname(int start, int perPage, String nickname) {
		List<FreeBoardDto> list = new Vector<>();

        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "select f.*  from FREEBOARD f, USER u where f.uId=u.uId and u.nickname Like ? order by f.uId='admin' desc, fbNum desc limit ?, ?";

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

        String sql = "select * from FREEBOARD where fbSubject Like ? order by uId='admin' desc, fbNum desc limit ?, ?";

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

        String sql = "select * from FREEBOARD where fbContent Like ? order by uId='admin' desc, fbNum desc limit ?, ?";

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
	
	// 페이징 처리
	// FB totalCount
	public int getFBTotalCount() {
		int n = 0;
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select count(*) from FREEBOARD";
		
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
	
	// FB category totalCount
	public int getFBcateTotalCount(String fbCategory) {
		int n = 0;
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select count(*) from FREEBOARD where fbCategory=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, fbCategory);
			
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
	
	public int getAllmyFBs(String uId) {
		int n = 0;
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select count(*) from FREEBOARD where uId=?";
		
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

	// FB List(start, perPage)
	public List<FreeBoardDto> getFBList(int start, int perPage) {
		List<FreeBoardDto> list = new Vector<>();

		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from FREEBOARD order by uId='admin' desc, fbNum desc limit ?, ?";
		// select * from simpleboard order by num desc limit i, j => i번부터 j번까지 조회
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			// 바인딩
			pstmt.setInt(1, start);
			pstmt.setInt(2, perPage);
			
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
