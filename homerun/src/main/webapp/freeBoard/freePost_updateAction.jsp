<%@page import="data.dao.FreeBoardDao"%>
<%@page import="data.dto.FreeBoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Hi+Melody&family=Jua&family=Nanum+Gothic&family=Noto+Serif+KR&family=Poor+Story&family=Stylish&family=Sunflower&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>

<title>HOMERUN | FREEBOARD_UPDATE</title>
</head>

<body>
	<%
	request.setCharacterEncoding("UTF-8");

	String fbNum = request.getParameter("fbNum");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	String currentPage = request.getParameter("currentPage");

	FreeBoardDto dto = new FreeBoardDto();

	dto.setFbNum(fbNum);
	dto.setFbSubject(subject);
	dto.setFbContent(content);

	FreeBoardDao dao = new FreeBoardDao();
	dao.updateFB(dto);

	// 페이징 처리
	/* int num = dao.getMaxNum(); */

	response.sendRedirect("freePost_detailPage.jsp?fbNum=" + fbNum + "&currentPage=" + currentPage);
	%>

</body>
</html>