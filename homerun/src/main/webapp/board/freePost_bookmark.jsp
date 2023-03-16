<%@page import="java.util.List"%>
<%@page import="data.dto.BookMarkDto"%>
<%@page import="data.dao.BookMarkDao"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String uId = (String)session.getAttribute("myid");
	String num = request.getParameter("num");

	boolean flag = true;
	
	// dao
	BookMarkDao dao = new BookMarkDao();
	
		
	JSONObject ob = new JSONObject();
	
	ob.put("flag", flag);
%>

<%=ob.toString() %>