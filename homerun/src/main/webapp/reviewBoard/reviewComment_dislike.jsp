<%@page import="data.dao.ReviewCommentDao"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// num 
String rcIdx = request.getParameter("rcIdx");

// dao
ReviewCommentDao dao = new ReviewCommentDao();

// num에 해당하는 dislike 증가
dao.updateDislike(rcIdx);

String dislike = dao.getRC(rcIdx).getRcDislike();

JSONObject ob = new JSONObject();

ob.put("dislike", dislike);
%>

<%=ob.toString()%>