<%@page import="data.dto.ReviewCommentDto"%>
<%@page import="data.dao.ReviewCommentDao"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String rcIdx = request.getParameter("rcIdx");

// dao
ReviewCommentDao dao = new ReviewCommentDao();

ReviewCommentDto dto = dao.getRC(rcIdx);

JSONObject ob = new JSONObject();

ob.put("rcIdx", dto.getRcIdx());
ob.put("rcContent", dto.getRcContent());
%>

<%=ob.toString()%>