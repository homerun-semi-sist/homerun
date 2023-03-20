<%@page import="data.dao.ReviewCommentDao"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	// num 
	String rcIdx = request.getParameter("rcIdx");

	// dao
	ReviewCommentDao dao = new ReviewCommentDao();

	dao.updateReport(rcIdx);

	String report = dao.getRC(rcIdx).getRcReport();
	
	JSONObject ob = new JSONObject();
	
	ob.put("report", report);
%>

<%=ob.toString() %>