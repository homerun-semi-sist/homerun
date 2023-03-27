<%@page import="org.json.simple.JSONObject"%>
<%@page import="data.dao.FreeBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// num 
String num = request.getParameter("num");

// dao
FreeBoardDao dao = new FreeBoardDao();

// num에 해당하는 like 증가
dao.updateLike(num);

// num에 해당하는 chu값 json 형식으로 반환
String like = dao.getFB(num).getFbLike();

JSONObject ob = new JSONObject();

ob.put("like", like);
%>

<%=ob.toString()%>
