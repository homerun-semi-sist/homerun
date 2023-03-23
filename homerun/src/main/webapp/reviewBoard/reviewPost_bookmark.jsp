<%@page import="java.util.List"%>
<%@page import="data.dto.BookMarkDto"%>
<%@page import="data.dao.BookMarkDao"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String uId = (String)session.getAttribute("uid");
	String num = request.getParameter("num");

	boolean flag;
	
	// dao
	BookMarkDao dao = new BookMarkDao();
	int n = dao.getRBBMcnt(uId, num);
		
	System.out.println(n);
	if(n == 0) {
		BookMarkDto dto = new BookMarkDto();
		
		dto.setuId(uId);
		dto.setRbNum(num);
		
		dao.insertRBBM(dto);
		
		flag = true;
	} else { 
		flag = false;
	}
	
	JSONObject ob = new JSONObject();
	
	ob.put("flag", flag);
%>

<%=ob.toString() %>