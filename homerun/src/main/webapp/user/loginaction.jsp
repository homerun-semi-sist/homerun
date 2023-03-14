<%@page import="data.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.3.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%
	String uid=request.getParameter("uid");
	String pw=request.getParameter("pw");
	String cbsave=request.getParameter("cbsave");
	
	UserDao dao=new UserDao();
	boolean b=dao.isIdPassCheck(uid, pw);
	
	//로그인 폼으로 이동
	if(b){
		
		session.setMaxInactiveInterval(60*60*8);
		session.setAttribute("loginok", "yes");
		session.setAttribute("myid", uid);
		session.setAttribute("saveok", cbsave==null?null:"yes");
		
		response.sendRedirect("../index.jsp?main=user/loginform.jsp");
	}else{%>
	
	<script type="text/javascript">
		alert("아이디와 비번이 맞지 않습니다");
		history.back();
	</script>
	<%}
%>
%>
</body>
</html>