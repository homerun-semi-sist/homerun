<%@page import="data.dto.ReviewCommentDto"%>
<%@page import="data.dao.ReviewCommentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String rcIdx = request.getParameter("rcIdx");
	String ucontent = request.getParameter("ucontent");
	
	// dao
	ReviewCommentDao dao = new ReviewCommentDao();
	ReviewCommentDto dto = dao.getRC(rcIdx);
	
	dto.setRbNum(rcIdx);
	dto.setRcContent(ucontent);
	
	dao.updateRC(dto);
%>