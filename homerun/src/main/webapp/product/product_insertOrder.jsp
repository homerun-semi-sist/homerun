<%@page import="data.dto.CartDto"%>
<%@page import="data.dao.CartDao"%>
<%@page import="data.dto.OrderDto"%>
<%@ page import="data.dao.ProductDao"%>
<%@ page import="java.util.List"%>
<%@ page import="data.dto.ProductDto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%

request.setCharacterEncoding("utf-8");

	OrderDto dto = new OrderDto();
	
	String uId = request.getParameter("uId");
	String pId = request.getParameter("pId");
	int cQTY=Integer.parseInt(request.getParameter("cQTY"));
	
	dto.setuId(uId);
	dto.setpId(pId);
	dto.setoQTY(cQTY);
	CartDao dao = new CartDao();
	dao.insertOrder(dto);
	
%>