<%@page import="data.dao.ReviewCommentDao"%>
<%@page import="data.dao.ReviewBoardDao"%>
<%@page import="data.dao.FreeCommentDao"%>
<%@page import="data.dto.FreeCommentDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String cIdx = request.getParameter("cIdx");
	String category = request.getParameter("category");
	
	FreeCommentDao fcDao = new FreeCommentDao();
	ReviewCommentDao rcDao = new ReviewCommentDao();
	
	if(category.equals("fc"))
		fcDao.deleteFC(cIdx);
	else 
		rcDao.deleteRC(cIdx);
%>