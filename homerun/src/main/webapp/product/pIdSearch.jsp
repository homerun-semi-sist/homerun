<%@page import="data.dao.ProductDao"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
String pId = request.getParameter("pId");

ProductDao dao = new ProductDao();

int count = dao.ispIdCheck(pId);

String pattern = "o";

if (count == 0) {
	if (!pId.matches("^p[0-9]{4}")) {
		pattern = "x";
	}
}

JSONObject ob = new JSONObject();
ob.put("count", count);
ob.put("pId", pId);
ob.put("pattern", pattern);
%>

<%=ob.toString()%>