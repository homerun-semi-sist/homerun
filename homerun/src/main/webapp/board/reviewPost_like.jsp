<%@page import="data.dao.ReviewBoardDao"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	// num 
	String num = request.getParameter("num");

	// dao
	ReviewBoardDao dao = new ReviewBoardDao();
	
	// num에 해당하는 like 증가
	dao.updateLike(num);
	
	// num에 해당하는 chu값 json 형식으로 반환
	String like = dao.getRB(num).getRbLike();
	
	JSONObject ob = new JSONObject();
	
	ob.put("like", like);
%>

<%=ob.toString() %>
   