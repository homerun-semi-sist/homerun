<%@page import="data.dao.FreeBoardDao"%>
<%@page import="data.dto.PostReportDto"%>
<%@page import="data.dao.PostReportDao"%>
<%@page import="java.util.List"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String uId = (String)session.getAttribute("uid");
	String num = request.getParameter("num");

	boolean flag;
	
	FreeBoardDao fbDao = new FreeBoardDao();
	PostReportDao prDao = new PostReportDao();
	
	int n = prDao.getFBRPcnt(uId, num);
		
	// System.out.println(n);
	if(n == 0) {
		PostReportDto prDto = new PostReportDto();
		
		prDto.setuId(uId);
		prDto.setFbNum(num);
		
		prDao.insertFBPR(prDto);
		fbDao.updateReport(num);
		
		flag = true;
	} else { 
		flag = false;
	}
	
	JSONObject ob = new JSONObject();
	
	ob.put("flag", flag);
	ob.put("report", fbDao.getFB(num).getFbReport());
	
%>

<%=ob.toString() %>