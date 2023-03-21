<%@page import="data.dao.FreeCommentDao"%>
<%@page import="data.dto.FreeCommentDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String num = request.getParameter("num");
	String uId = request.getParameter("uId");
	String content = request.getParameter("content");
	
	// dao
	FreeCommentDao dao = new FreeCommentDao();
	FreeCommentDto dto = new FreeCommentDto();
	
	dto.setFbNum(num);
	dto.setUId(uId);
	dto.setFcContent(content);
	
	dao.insertFC(dto);
%>