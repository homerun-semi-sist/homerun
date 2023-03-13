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

DbConnect db=new DbConnect();

public List<ProductDto> selectAllProduct(){
    List<ProductDto> list=new Vector<>();
    Connection conn=db.getConnection();
    PreparedStatement pstmt=null;
    ResultSet rs=null;

    String sql="select * from PRODUCT";

    try {
        pstmt=conn.prepareStatement(sql);
        rs=pstmt.executeQuery();

        while(rs.next()){
            ProductDto dto=new ProductDto();

            dto.setpId(rs.getString("pId"));
            dto.setpName(rs.getString("pName"));
            dto.setTeamName(rs.getString("teamName"));
            dto.setpCategory(rs.getString("pCategory"));
            dto.setpImage(rs.getString("pImage"));
            dto.setPrice(rs.getInt("price"));
            dto.setpOption(rs.getString("pOption"));
            dto.setpDetail(rs.getString("pDetail"));

            list.add(dto);
        }
    } catch (SQLException e) {
        throw new RuntimeException(e);
    } finally {
        db.dbClose(rs,pstmt,conn);
    }

    return list;
}
}
