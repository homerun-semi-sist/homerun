package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

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
	
	//id로 데이터 불러오기
	public UserDto getData(String uid)
	{
		UserDto dto=new UserDto();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from USER where uid=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, uid);
			
			rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				dto.setUid(rs.getString("uid"));
				dto.setPw(rs.getString("pw"));
				dto.setuName(rs.getString("uName"));
				dto.setNickname(rs.getString("nickname"));
				dto.setGender(rs.getString("gender"));
				dto.setBirth(rs.getString("birth"));
				dto.setHp(rs.getString("hp"));
				dto.setAddr(rs.getString("addr"));
				dto.setuPhoto(rs.getString("uPhoto"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		return dto;
	}
	
	//회원정보 수정
	public void updateUser(UserDto dto)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="update USER set uName=?,nickname=?,pw=?,gender=?,birth=?,hp=?,addr=? where uid=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getuName());
			pstmt.setString(2, dto.getNickname());
			pstmt.setString(3, dto.getPw());
			pstmt.setString(4, dto.getGender());
			pstmt.setString(5, dto.getBirth());
			pstmt.setString(6, dto.getHp());
			pstmt.setString(7, dto.getAddr());
			pstmt.setString(8, dto.getUid());
			
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	//전체 회원 수
	public int getTotalCount()
	{
		int n=0;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select count(*) from USER";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			
			if(rs.next())
				n=rs.getInt(1);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return n;
	}
	
	//전체 회원 목록
	public List<UserDto> getAllUsers()
	{
		List<UserDto> list=new Vector<>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from USER order by uid";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				UserDto dto=new UserDto();
				
				dto.setuName(rs.getString("uName"));
				dto.setUid(rs.getString("uid"));
				dto.setGender(rs.getString("gender"));
				dto.setBirth(rs.getString("birth"));
				dto.setHp(rs.getString("hp"));
				dto.setAddr(rs.getString("addr"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return list;
	}
	
	//페이징 처리
	public List<UserDto> getList(int start,int perpage)
	{
		List<UserDto> list=new Vector<>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from USER limit ?,?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setInt(1, start);
			pstmt.setInt(2, perpage);
			
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				UserDto dto=new UserDto();
				
				dto.setuName(rs.getString("uName"));
				dto.setUid(rs.getString("uid"));
				dto.setGender(rs.getString("gender"));
				dto.setBirth(rs.getString("birth"));
				dto.setHp(rs.getString("hp"));
				dto.setAddr(rs.getString("addr"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		return list;
	}
}
