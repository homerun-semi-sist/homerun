<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="data.dao.FreeCommentDao"%>
<%@page import="data.dto.FreeCommentDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String fcIdx = request.getParameter("fcIdx");
	
	// dao
	FreeCommentDao dao = new FreeCommentDao();
	
	FreeCommentDto dto =  dao.getFC(fcIdx);
	
	JSONObject ob = new JSONObject();
	
	ob.put("fcIdx", dto.getFcIdx());
	ob.put("fcContent", dto.getFcContent());	
%>

<%=ob.toString() %>