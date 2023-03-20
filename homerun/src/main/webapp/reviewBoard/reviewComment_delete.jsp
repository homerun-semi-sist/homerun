<%@page import="data.dao.ReviewCommentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String rcIdx = request.getParameter("rcIdx");
	
	// dao
	ReviewCommentDao dao = new ReviewCommentDao();
	
	dao.deleteRC(rcIdx);
%>