<%@page import="org.json.simple.JSONObject"%>
<%@page import="data.dao.FreeCommentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// num 
String fcIdx = request.getParameter("fcIdx");

// dao
FreeCommentDao dao = new FreeCommentDao();

// num에 해당하는 dislike 증가
dao.updateDislike(fcIdx);

String dislike = dao.getFC(fcIdx).getFcDislike();

JSONObject ob = new JSONObject();

ob.put("dislike", dislike);
%>

<%=ob.toString()%>