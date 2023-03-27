<%@page import="org.json.simple.JSONObject"%>
<%@page import="data.dao.FreeCommentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// num 
String fcIdx = request.getParameter("fcIdx");

// dao
FreeCommentDao dao = new FreeCommentDao();

dao.updateReport(fcIdx);

String report = dao.getFC(fcIdx).getFcReport();

JSONObject ob = new JSONObject();

ob.put("report", report);
%>

<%=ob.toString()%>