<%@page import="data.dao.ReviewBoardDao"%>
<%@page import="data.dto.PostReportDto"%>
<%@page import="data.dao.PostReportDao"%>
<%@page import="java.util.List"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String uId = (String)session.getAttribute("myid");
	String num = request.getParameter("num");

	boolean flag;

	ReviewBoardDao rbDao = new ReviewBoardDao();
	PostReportDao prDao = new PostReportDao();
	
	int n = prDao.getRBRPcnt(uId, num);
		
	System.out.println(n);
	if(n == 0) {
		PostReportDto prDto = new PostReportDto();
		
		prDto.setuId(uId);
		prDto.setFbNum(num);
		
		prDao.insertRBPR(prDto);
		rbDao.updateReport(num);
		
		flag = true;
	} else { 
		flag = false;
	}
	
	JSONObject ob = new JSONObject();
	
	ob.put("flag", flag);
	ob.put("report", rbDao.getRB(num).getRbReport());
%>

<%=ob.toString() %>