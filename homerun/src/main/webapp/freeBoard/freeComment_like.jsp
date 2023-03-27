<%@page import="org.json.simple.JSONObject"%>
<%@page import="data.dao.FreeCommentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// num 
String fcIdx = request.getParameter("fcIdx");

// dao
FreeCommentDao dao = new FreeCommentDao();

// num에 해당하는 like 증가
dao.updateLike(fcIdx);

String like = dao.getFC(fcIdx).getFcLike();

JSONObject ob = new JSONObject();

ob.put("like", like);
ob.put("fcIdx", fcIdx);
%>

<%=ob.toString()%>