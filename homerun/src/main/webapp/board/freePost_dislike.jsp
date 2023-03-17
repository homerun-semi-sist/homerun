<%@page import="org.json.simple.JSONObject"%>
<%@page import="data.dao.FreeBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	// num 
	String num = request.getParameter("num");

	// dao
	FreeBoardDao dao = new FreeBoardDao();
	
	// num에 해당하는 dislike 증가
	dao.updateDislike(num);
	
	// num에 해당하는 chu값 json 형식으로 반환
	String dislike = dao.getFB(num).getFbDislike();
	
	JSONObject ob = new JSONObject();
	
	ob.put("dislike", dislike);
%>

<%=ob.toString() %>
   