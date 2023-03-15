<%@page import="data.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.3.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>

</style>
<body>
<%
	String uid=request.getParameter("uid");

	UserDao dao=new UserDao();
	
	dao.getuName(uid);
	
%>

<div>
	<b>회원가입 축하</b>
	
	<button type="button" class="btn1"
	onclick="location.href='index.jsp?main=user/user_loginmain.jsp'">로그인</button>
	
	<button type="button" class="btn2"
	onclick="location.href='index.jsp'">메인으로</button>
</div>
</body>
</html>