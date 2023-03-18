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
import mysql.db.DbConnect;

public class CartDao {
	DbConnect db = new DbConnect();
	
	public List<HashMap<String, String>> getCartList(String uId){
		
		
		 List<HashMap<String, String>> list=new ArrayList<>();
		 
		 Connection conn=db.getConnection();
		 PreparedStatement pstmt =null;
		 ResultSet rs=null;
		 
		 
		 //cartday 상의.
		 String sql="select c.cId,p.pName,p.pId,p.pImage,p.price,c.cQTY "
		     		+ "from CART c,PRODUCT p,USER u "
		     		+ "where c.pId=p.pId and c.uId=u.uId and u.uId=?";	
		     
		 
		 try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, uId);
			
			rs=pstmt.executeQuery();
			 while(rs.next()) {
				 
				 HashMap<String, String> map = new HashMap<>();
				 
				 	map.put("cId", rs.getString("cId"));
				 	map.put("pId", rs.getString("pId"));
					map.put("pName", rs.getString("pName"));
					map.put("pImage", rs.getString("pImage"));
					map.put("price", rs.getString("price"));
					map.put("cQTY", rs.getString("cQTY"));
						 	
					list.add(map);
				 
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			db.dbClose(rs, pstmt, conn);
		}
		 
		 
		
		return list;
		
	}
	
	
	public void deleteCart(String cId) { //카트 삭제
		Connection conn = db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="delete from CART where cId=?";
		
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
	
	public void insertOder(OrderDto dto) {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="insert into ORDERS values(null,?,?,now())";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getcId());
			pstmt.setInt(2, dto.getoQTY());
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
		
	}
}
//	public List<HashMap<int, int>>
//	
//}
