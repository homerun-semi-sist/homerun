<%@page import="data.dao.CartDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	String oId=request.getParameter("oId");
	CartDao dao=new CartDao();
	dao.deleteOrder(oId);
	//response.sendRedirect("product_cartlist.jsp");
%>