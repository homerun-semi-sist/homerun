package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.mysql.cj.protocol.Resultset;
import com.mysql.cj.xdevapi.Result;

import data.dto.CartDto;
import data.dto.OrderDto;
import data.dto.ProductDto;
import mysql.db.DbConnect;

public class CartDao {
	DbConnect db = new DbConnect();

	public List<HashMap<String, String>> getCartList(String uId) {

		List<HashMap<String, String>> list = new ArrayList<>();

		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		// cartday 상의.
		String sql = "select c.cId,p.pName,p.pId,p.pImage,p.price,p.pStock,c.cQTY " + "from CART c,PRODUCT p,USER u "
				+ "where c.pId=p.pId and c.uId=u.uId and u.uId=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uId);

			rs = pstmt.executeQuery();
			while (rs.next()) {

				HashMap<String, String> map = new HashMap<>();

				map.put("cId", rs.getString("cId"));
				map.put("pId", rs.getString("pId"));
				map.put("pName", rs.getString("pName"));
				map.put("pImage", rs.getString("pImage"));
				map.put("price", rs.getString("price"));
				map.put("pStock", rs.getString("pStock"));
				map.put("cQTY", rs.getString("cQTY"));

				list.add(map);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			db.dbClose(rs, pstmt, conn);
		}

		return list;

	}
	
	
	
	public CartDto getData(String cId) {
		CartDto dto=new CartDto();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt =null;
		ResultSet rs=null;
		
		String sql="select * from CART where cId=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, cId);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setcId(rs.getString("cId"));
				dto.setuId(rs.getString("uId"));
				dto.setpId(rs.getString("pId"));
				dto.setcQTY(rs.getInt("cQTY"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		return dto;
	}

	public void deleteCart(String cId) { // 카트 삭제
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "delete from CART where cId=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cId);
			pstmt.execute();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}

	}
	
	public void deleteOrder(String oId) { // 주문목록 삭제
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "delete from ORDERS where oId=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, oId);
			pstmt.execute();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}

	}
	
	
	public void insertCart(CartDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt =null;
		
		String sql ="insert into CART values(null,?,?,?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,dto.getuId());
			pstmt.setString(2,dto.getpId());
			pstmt.setInt(3,dto.getcQTY());
			
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			db.dbClose(pstmt, conn);
		}
		
	}
	

	public void insertOrder(OrderDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "insert into ORDERS values(null,?,?,?,now())";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getuId());
			pstmt.setString(2, dto.getpId());
			pstmt.setInt(3, dto.getoQTY());
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}

	}
	public void cQTYup(String cId) {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="update CART set cQTY=cQTY+1 where cId=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, cId);
			
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	
	public void cQTYdown(String cId) {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="update CART set cQTY=cQTY-1 where cId=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, cId);
			
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	

	public List<HashMap<String, String>> getOrderList(String uId) {

		List<HashMap<String, String>> list = new ArrayList<>();

		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select o.oId,p.pId,u.uId,p.pImage,p.pName,p.price,o.oQTY ,o.oDay" 
				+ " from ORDERS o,PRODUCT p,USER u "
				+ " where o.pId=p.pId and o.uId=u.uId and u.uId=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uId);

			rs = pstmt.executeQuery();
			while (rs.next()) {

				HashMap<String, String> map = new HashMap<>();

				map.put("oId", rs.getString("oId"));
				map.put("pId", rs.getString("pId"));
				map.put("uId", rs.getString("uId"));
				map.put("pImage", rs.getString("pImage"));
				map.put("pName", rs.getString("pName"));
				map.put("price", rs.getString("price"));
				map.put("oQTY", rs.getString("oQTY"));
				map.put("oDay", rs.getString("oDay"));

				list.add(map);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			db.dbClose(rs, pstmt, conn);
		}

		return list;
	}
	
	public void QTYmethod (String pId,String cId) {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="UPDATE PRODUCT "
				+ "SET pStock = pStock - ("
				+ "  SELECT sum(cQTY)"
				+ "  FROM CART "
				+ "  WHERE pId = ?"
				+ ")"
				+ " WHERE pId IN ("
				+ "  SELECT DISTINCT pId"
				+ "  FROM CART WHERE cId =?"
				+ ")";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, pId);
			pstmt.setString(2, cId);
			
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	
	
	
				
	
}
