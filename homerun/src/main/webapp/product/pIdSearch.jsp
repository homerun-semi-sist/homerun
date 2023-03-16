<%@page import="data.dao.ProductDao"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String pId=request.getParameter("pId");

	ProductDao dao=new ProductDao();
	
	int count=dao.ispIdCheck(pId);
	
	JSONObject ob=new JSONObject();
	ob.put("count", count);
%>

<%=ob.toString() %>