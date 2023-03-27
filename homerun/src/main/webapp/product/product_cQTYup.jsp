<%@page import="org.json.simple.JSONObject"%>
<%@page import="data.dao.CartDao"%>
<%@ page import="data.dao.ProductDao"%>
<%@ page import="java.util.List"%>
<%@ page import="data.dto.ProductDto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
String cId=request.getParameter("cId");


	CartDao dao=new CartDao();
	dao.cQTYup(cId);
	int cQTY=dao.getData(cId).getcQTY();
	JSONObject ob=new JSONObject();
	ob.put("cQTY",cQTY);
	//response.sendRedirect("product_cartlist.jsp");
%>
<%=ob.toString()%>