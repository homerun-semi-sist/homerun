<%@page import="data.dao.UserDao"%>
<%@page import="data.dto.UserDto"%>
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
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		UserDto dto=new UserDto();
		
		String uid=request.getParameter("uid");
		String pw=request.getParameter("pw1");
		String uName=request.getParameter("name");
		String nickname=request.getParameter("nickname");
		String gender=request.getParameter("gender");
		String birth=request.getParameter("birth1")+"-"+request.getParameter("birth2")+"-"+request.getParameter("birth3");
		String hp=request.getParameter("hp1")+"-"+request.getParameter("hp2")+"-"+request.getParameter("hp3");
		String addr=request.getParameter("addr");
		
		dto.setUid(uid);
		dto.setPw(pw);
		dto.setuName(uName);
		dto.setNickname(nickname);
		dto.setGender(gender);
		dto.setBirth(birth);
		dto.setHp(hp);
		dto.setAddr(addr);
		
		UserDao dao=new UserDao();
		dao.insertUser(dto);
		
		response.sendRedirect("regist_registsuccess.jsp?uid="+uid);
	%>
</body>
</html>