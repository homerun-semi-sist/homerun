<%@page import="data.dao.FreeCommentDao"%>
<%@page import="data.dto.FreeCommentDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String fcIdx = request.getParameter("fcIdx");
	
	// dao
	FreeCommentDao dao = new FreeCommentDao();
	
	dao.deleteFC(fcIdx);
%>