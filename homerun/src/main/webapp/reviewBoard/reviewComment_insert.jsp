
<%@page import="data.dto.ReviewCommentDto"%>
<%@page import="data.dao.ReviewCommentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String num = request.getParameter("num");
	String uId = request.getParameter("uId");
	String content = request.getParameter("content");
	
	// dao
	ReviewCommentDao dao = new ReviewCommentDao();
	ReviewCommentDto dto = new ReviewCommentDto();
	
	dto.setRbNum(num);
	dto.setUId(uId);
	dto.setRcContent(content);
	
	dao.insertRC(dto);
%>