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
import mysql.db.DbConnect;

public class CartDao {
	DbConnect db = new DbConnect();
	
	public List<HashMap<String, String>> getCartList(String uId){
		
		 List<HashMap<String, String>> list=new ArrayList<>();
		 
		 Connection conn=db.getConnection();
		 PreparedStatement pstmt =null;
		 ResultSet rs=null;
		 
		 
		 //cartday 상의.
		 String sql="select c.cId,p.pName,p.pId,p.pImage,p.price,c.QTY,c.cartday "
		     		+ "from CART c,PRODUCT p,USER u "
		     		+ "where c.cId=p.pId and c.cId=u.uId and u.uId=?";	
		     
		 
		 try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, uId);
			
			rs=pstmt.executeQuery();
			 while(rs.next()) {
				 
				 HashMap<String, String> map = new HashMap<>();
				 
				 map.put("uId", rs.getString("uId"));
					map.put("pName", rs.getString("pName"));
					map.put("pId", rs.getString("pId"));
					map.put("pImage", rs.getString("pImage"));
					map.put("price", rs.getString("price"));
					map.put("QTY", rs.getString("QTY"));
					map.put("cartday", rs.getString("cartday"));
					
					list.add(map);
				 
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 
		
		return list;
		
	}
	
	
	public void deleteCart(String cId) { //카트 삭제
		Connection conn = db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="delete from cart where cId=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, cId);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	
}
