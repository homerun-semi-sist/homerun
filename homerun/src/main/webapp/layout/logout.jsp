<%@page import="data.dto.UserDto"%>
<%@page import="data.dao.UserDao"%>
<%@ page import="data.dao.ProductDao"%>
<%@ page import="java.util.List"%>
<%@ page import="data.dto.ProductDto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
		<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
		<link href="../assets/css/index.css" rel="stylesheet">
	</head>
	<style>
    
    .logout-box{
       border: 1px solid #0b214e;
       width:400px;
       height: 180px;
    }
    
    .photo{
    position: absolute;
	width: 70px;
    top: 50px;
    left: 20px;
    height: 70px;
    }
    
    .logout{
        position: absolute;
	    border: 1px solid #0b214e;
	    left: 320px;
	    top: 10px;
	    font-weight: bold;
    }
    
    .uid{
	    position: absolute;
	    top: 65px;
	    left: 100px;
	    font-size: 20pt;
    }
    
    .text2{
       position: relative;
       left: 18px;
       top: 5px;
    }
</style>

	<body>
<%
    String uid=(String)session.getAttribute("uid");
	UserDao dao=new UserDao();
	UserDto dto=dao.getData(uid);
%>
        <div class="logout-box">
            <b class="text2">환영합니다</b>
            <br>
            <img class="photo" src="../homerun/assets/img/로그인프로필.png">
            <b class="uid"><%=dto.getNickname() %>(<%=uid %>)</b>
        <button type="button" class="logout" onclick="location.href='../homerun/user/user_logoutaction.jsp'">로그아웃</button>
        </div>
        
      </body>
</html>