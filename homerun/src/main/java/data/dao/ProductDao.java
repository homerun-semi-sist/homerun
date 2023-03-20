package data.dao;

import data.dto.ProductDto;
import mysql.db.DbConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

public class ProductDao {

	DbConnect db = new DbConnect();

	public void insertProduct(ProductDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "insert into PRODUCT values(?,?,?,?,?,?,?,?,?)";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getpId());
			pstmt.setString(2, dto.getTeamName());
			pstmt.setString(3, dto.getpCategory());
			pstmt.setString(4, dto.getpName());
			pstmt.setString(5, dto.getpOption());
			pstmt.setInt(6, dto.getpStock());
			pstmt.setInt(7, dto.getPrice());
			pstmt.setString(8, dto.getpDetail());
			pstmt.setString(9, dto.getpImage());

			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}

	}

/*	public List<ProductDto> selectAllProduct() {
		List<ProductDto> list = new Vector<>();
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select * from PRODUCT order by pId";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				ProductDto dto = new ProductDto();

				dto.setpId(rs.getString("pId"));
				dto.setpName(rs.getString("pName"));
				dto.setTeamName(rs.getString("teamName"));
				dto.setpCategory(rs.getString("pCategory"));
				dto.setpImage(rs.getString("pImage"));
				dto.setpStock(rs.getInt("pStock"));
				dto.setPrice(rs.getInt("price"));
				dto.setpOption(rs.getString("pOption"));
				dto.setpDetail(rs.getString("pDetail"));

				list.add(dto);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			db.dbClose(rs, pstmt, conn);
		}

		return list;
	}
*/
	
	public void deleteProduct(String pId) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "delete from PRODUCT where pId=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pId);

			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}

	public ProductDto getProduct(String pId) {
		ProductDto dto = new ProductDto();

		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select * from PRODUCT where pId=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pId);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setpId(rs.getString("pId"));
				dto.setpName(rs.getString("pName"));
				dto.setTeamName(rs.getString("teamName"));
				dto.setpCategory(rs.getString("pCategory"));
				dto.setpImage(rs.getString("pImage"));
				dto.setpStock(rs.getInt("pStock"));
				dto.setPrice(rs.getInt("price"));
				dto.setpOption(rs.getString("pOption"));
				dto.setpDetail(rs.getString("pDetail"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}

		return dto;
	}

	public void updateProduct(ProductDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "update PRODUCT set pStock=?,price=?,pDetail=? where pId=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getpStock());
			pstmt.setInt(2, dto.getPrice());
			pstmt.setString(3, dto.getpDetail());
			pstmt.setString(4, dto.getpId());

			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}

	public int ispIdCheck(String pId) {
		int ispId = 0;

		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select count(*) from PRODUCT where pId=?";

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, pId);

			rs = pstmt.executeQuery();

			if (rs.next()) // 아이디 존재하면 1,존재 안 하면 0
			{
				ispId = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		return ispId;
	}
	
	
	//페이징
	public int getTotalCount() {
		int n = 0;

		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select count(*) from PRODUCT";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) 
				n = rs.getInt(1);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return n;
	}
	
	
	public List<ProductDto> getList(int start, int perpage) {
		List<ProductDto> list = new Vector<>();

		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select * from PRODUCT order by pId limit ?,?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, perpage);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				ProductDto dto = new ProductDto();

				dto.setpId(rs.getString("pId"));
				dto.setpName(rs.getString("pName"));
				dto.setTeamName(rs.getString("teamName"));
				dto.setpCategory(rs.getString("pCategory"));
				dto.setpImage(rs.getString("pImage"));
				dto.setpStock(rs.getInt("pStock"));
				dto.setPrice(rs.getInt("price"));
				dto.setpOption(rs.getString("pOption"));
				dto.setpDetail(rs.getString("pDetail"));

				list.add(dto);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}

		return list;
		}
	
}
