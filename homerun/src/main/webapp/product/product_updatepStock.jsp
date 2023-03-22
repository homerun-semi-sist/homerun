<%@page import="data.dao.CartDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	String pId=request.getParameter("pId");
	String cId=request.getParameter("cId");
	CartDao dao=new CartDao();
	
	
	dao.QTYmethod(pId,cId);
	//response.sendRedirect("product_success.jsp");
%>