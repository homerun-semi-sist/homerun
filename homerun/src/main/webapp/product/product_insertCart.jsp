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

	CartDto dto = new CartDto();
	String uId = request.getParameter("uId");
	String pId = request.getParameter("pId");
	int cQTY=Integer.parseInt(request.getParameter("cQTY"));
	
	dto.setuId(uId);
	dto.setpId(pId);
	dto.setcQTY(cQTY);
	CartDao dao = new CartDao();
	dao.insertCart(dto);
	
%>