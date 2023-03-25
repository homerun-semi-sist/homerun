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
		<script type="text/javascript">
		
		</script>
	</head>
	<style>
    
    .logout-box{
       height: 100%;
       width: 370px;
       border: 1px solid gray;
       margin-left: 10px;
    }
    
    .photo{  
	width: 70px;
    height: 70px;
    margin: 10px;
    }
    
    .logout{
	    border: 1px solid #0b214e;
	    font-weight: bold;
	    float: right;
	    margin: 10px;
    }
    
    .nickname{
	    font-size: 20pt;
    }
    
    .text2{
    	font-size: 15pt;
    	margin-left: 10px;
    }
    .uid{
    	font-size: 15pt;
    	position: absolute;
   		top: 103px;
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
            <button type="button" class="logout" onclick="location.href='../homerun/user/user_logoutaction.jsp'">로그아웃</button>
            <br>
   				 <img class="photo" src="../homerun/assets/img/프로필.png">
            <b class="nickname"><%=dto.getNickname() %></b>
            <b class="uid">(<%=uid %>)</b>
        </div>
        
      </body>
</html>