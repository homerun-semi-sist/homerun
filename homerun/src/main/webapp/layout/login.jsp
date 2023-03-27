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
 .text{
 	   position: relative;
       left: 25px;
       top: 10px;
       font-size: 10pt;
    }
    
 .login{
	    width: 320px;
	    height: 90px;
	    color: white;
	    text-align: center;
	    background-color: #0b214e;
	    margin-left: 25px;
	    margin-top: 20px;
	    margin-bottom: 10px;
	    font-weight: bold;
	    font-size: 15pt;
	    letter-spacing: 5px;
    }
    
    .login-box{
       height: 100%;
       width: 370px;
       border: 1px solid gray;
       margin-left: 10px;
    }
    
    .regist{
       color: #0b214e;
       font-weight: bold;
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
%>

   
        <div class="login-box">
            <b class="text">로그인 후 이용해 주세요</b>
        <button type="button" class="login" onclick="location.href='../homerun/user/user_loginform.jsp'">로그인</button>
         <br>
         <a class="regist" href="../homerun/regist/regist_registform.jsp">회원가입</a>
        </div>  
        
      </body>
</html>