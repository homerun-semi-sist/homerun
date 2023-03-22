<%@page import="data.dao.CartDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	String cId=request.getParameter("cId");
	CartDao dao=new CartDao();
	dao.deleteCart(cId);
	//response.sendRedirect("product_cartlist.jsp");
%>