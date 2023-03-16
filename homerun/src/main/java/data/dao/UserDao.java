package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import data.dto.UserDto;
import mysql.db.DbConnect;

public class UserDao {

	DbConnect db=new DbConnect();
	
	//id 중복 체크
	public int isIDCheck(String uid)
	{
		int isid=0;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select count(*) from USER where uid=?";
		
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
	
	//nickname 중복 체크
	public int isNICKCheck(String nickname)
	{
		int isnick=0;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select count(*) from USER where nickname=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, nickname);
			
			rs=pstmt.executeQuery();
			
			if(rs.next())	//아이디 존재하면 1,존재 안 하면 0
			{
				isnick=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		return isnick;
	}
	
	//id로 name 가져오기
	public String getuName(String uid)
	{
		String uName="";
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from USER where uid=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, uid);
			
			rs=pstmt.executeQuery();
			
			if(rs.next())
				uName=rs.getString("uName");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return uName;
	}
	
	//회원가입
	public void insertUser (UserDto dto)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="insert into USER values(?,?,?,?,?,?,?,?,'123')";
		
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
		ResultSet rs=null;
		
		String sql="select * from USER where uid=? and pw=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, uid);
			pstmt.setString(2, pw);
			
			rs=pstmt.executeQuery();
			
			if(rs.next())
				b=true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return b;
	}
	
	//회원탈퇴
	public void deleteUser(String uid)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="delete from USER where uid=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, uid);
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
}