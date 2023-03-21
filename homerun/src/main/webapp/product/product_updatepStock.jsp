<%@page import="data.dao.CartDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	String pId=request.getParameter("pId");
	CartDao dao=new CartDao();
	dao.QTYmethod(pId);
	//response.sendRedirect("product_success.jsp");
%>