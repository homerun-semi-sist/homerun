<%@page import="data.dao.ReviewBoardDao"%>
<%@page import="data.dto.ReviewBoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Hi+Melody&family=Jua&family=Nanum+Gothic&family=Noto+Serif+KR&family=Poor+Story&family=Stylish&family=Sunflower&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://code.jquery.com/jquery-3.6.3.js"></script>

		<title>Insert title here</title>
	</head>
	
	<body>
		<%
			request.setCharacterEncoding("UTF-8");
		
			String rbNum = request.getParameter("rbNum");
			String subject = request.getParameter("subject");
			String content = request.getParameter("content");
			
			ReviewBoardDto dto = new ReviewBoardDto();
			
			dto.setRbNum(rbNum);
			dto.setRbSubject(subject);
			dto.setRbContent(content);
		
			ReviewBoardDao dao = new ReviewBoardDao();
			dao.updateRB(dto);
			
			// 페이징 처리
			/* int num = dao.getMaxNum(); */
			
			response.sendRedirect("reviewBoard_listPage.jsp");
		%>

	</body>
</html>