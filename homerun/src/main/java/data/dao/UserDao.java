package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import data.dto.TeamDto;
import data.dto.UserDto;
import mysql.db.DbConnect;

public class UserDao {

	DbConnect db = new DbConnect();
	
	//id 중복 체크
	public int isIDCheck(String uid)
	{
		int isid=0;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select count(*) from user where uid=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, uid);
			
			rs=pstmt.executeQuery();
			
			if(rs.next())	//아이디 존재하면 1,존재 안 하면 0
			{
				isid=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		return isid;
	}
	
	//insert
	public void insertUser(UserDto dto)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="insert into user values(?,?,?,?,?,?,?,?,?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getUid());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getuName());
			pstmt.setString(4, dto.getNickname());
			pstmt.setString(5, dto.getGender());
			pstmt.setString(6, dto.getBirth());
			pstmt.setString(7, dto.getHp());
			pstmt.setString(8, dto.getAddr());
			pstmt.setString(9, dto.getuPhoto());
			
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	//아이디와 비번 체크
	public boolean isIdPassCheck(String uid,String pw)
	{
		boolean b=false;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="select * from user where uid=? and pw=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, uid);
			pstmt.setString(2, pw);
			
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
		
		return b;
	}
	
}
