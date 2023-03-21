<%@page import="data.dto.PostReportDto"%>
<%@page import="data.dao.PostReportDao"%>
<%@page import="java.util.List"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String uId = (String)session.getAttribute("myid");
	String num = request.getParameter("num");

	boolean flag;

	PostReportDao dao = new PostReportDao();
	int n = dao.getRBRPcnt(uId, num);
		
	System.out.println(n);
	if(n == 0) {
		PostReportDto dto = new PostReportDto();
		
		dto.setuId(uId);
		dto.setFbNum(num);
		
		dao.insertRBPR(dto);
		
		flag = true;
	} else { 
		flag = false;
	}
	
	JSONObject ob = new JSONObject();
	
	ob.put("flag", flag);
%>

<%=ob.toString() %>