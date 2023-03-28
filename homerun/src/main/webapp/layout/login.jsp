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
       left: 380px;
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
   String root = request.getContextPath();
%>

   
        <div class="login-box">
            <!-- <b class="text">로그인 후 이용해 주세요</b> -->
        <button type="button" class="login" onclick="location.href='<%=root%>/user/user_loginform.jsp'">로그인</button>
         <br>
         <a class="regist" href="<%=root%>/regist/regist_registform.jsp">회원가입</a>
        </div>  
        
      </body>
</html>