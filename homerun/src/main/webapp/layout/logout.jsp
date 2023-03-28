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
		<script src="https://kit.fontawesome.com/8dcaa4675e.js"
	crossorigin="anonymous"></script>
	</head>
	<!-- <style>
    
    .logout-box{
       height: 100%;
       width: 100%;
       border: 1px solid gray;
       background-color: #F8F9FA;
       border-radius: 4px;
    }
    
    .box {
    border: 0px solid gray;
    margin-top: 80px;
    text-align: center;
    }
    
    .photo{  
	width: 70px;
    height: 70px;
    margin: 10px;
    margin-right: 20px;
    color: #0b214e;
    }
    
    .logout{
	    border: 1px solid #0b214e;
	    font-weight: bold;
	    float: right;
	    margin: 10px;
    }
    
    .nickname{
	    font-size: 28pt;
	   line-height: 100%;
	   color: #0b214e;
    }
    
    .text2{
    	font-size: 15pt;
    	margin-left: 10px;
    }
    .uid{
    	font-size: 20pt;
    	color: #0b214e;
    	
   		
    }
    
    .btn {
	border-radius: 4px;
	padding: 10px 20px;
	border: 1px solid #0b214e;
	background-color: #0b214e;
	color: #F8F9FA;
	width: 80px;
	height: 40px;
	line-height: 20px;
	 float: right;
	 margin-top: 20px;
	 margin-right: 10px;
}

	.btn:hover {
	color: #0b214e;
	background-color: #f8f9fa;
}
    
</style> -->
<style>
 .text{
 	   position: relative;
       left: 25px;
       top: 10px;
       font-size: 10pt;
    }
    
 .login{
	    width: 400px;
	    height: 110px;
	    color: white;
	    text-align: center;
	    background-color: #0b214e;
	    margin-left: 50px;
	    margin-top: 50px;
	    margin-bottom: 10px;
	    font-weight: bold;
	    font-size: 2.2em;
	    letter-spacing: 5px;
	     border-radius: 5px;
    }
    
    .login-box{
       height: 100%;
       width: 100%;
       border: 0px solid gray;
        background-color: #F8F9FA;
       border-radius: 10px;
    }
    
    .regist{
       color: #0b214e;
       font-weight: bold;
       font-size: 1.2em;
       left: 290px;
       bottom: 5px;
       position: relative;
    }
    
    .regist:hover{
       text-decoration: none;
       color: #0b214e;
    }

</style>

	<body>
<%
    String uid=(String)session.getAttribute("uid");
	UserDao dao=new UserDao();
	UserDto dto=dao.getData(uid);
	String root = request.getContextPath();
%>

		<div class="login-box">
            <!-- <b class="text">로그인 후 이용해 주세요</b> -->
        <button type="button" class="login" onclick="location.href='<%=root%>/user/user_logoutaction.jsp'">로그아웃</button>
         <br>
         <a class="regist"><b style="font-size:1.2em;"><%=dto.getNickname() %></b>님 환영합니다</a>
        </div>
        
      </body>
</html>