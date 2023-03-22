<%@page import="data.dao.FreeCommentDao"%>
<%@page import="data.dto.FreeCommentDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String fcIdx = request.getParameter("fcIdx");
	String ucontent = request.getParameter("ucontent");
	
	// dao
	FreeCommentDao dao = new FreeCommentDao();
	FreeCommentDto dto = dao.getFC(fcIdx);
	
	dto.setFcIdx(fcIdx);
	dto.setFcContent(ucontent);
	
	dao.updateFC(dto);
%>