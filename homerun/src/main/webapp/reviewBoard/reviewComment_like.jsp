<%@page import="data.dao.ReviewCommentDao"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	// num 
	String rcIdx = request.getParameter("rcIdx");

	// dao
	ReviewCommentDao dao = new ReviewCommentDao();
	
	// num에 해당하는 like 증가
	dao.updateLike(rcIdx);

	String like = dao.getRC(rcIdx).getRcLike();
	
	JSONObject ob = new JSONObject();
	
	ob.put("like", like);
%>

<%=ob.toString() %>