<%@page import="data.dao.TeamDao"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="data.dto.GameDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.GameDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	GameDao gDao = new GameDao();
	
	List<GameDto> gList = gDao.getGamesDay();
	
	JSONArray arr = new JSONArray();
	
	for(GameDto gDto : gList) {
		JSONObject ob = new JSONObject();	

		ob.put("gDay", gDto.getgDay());
	
		arr.add(ob);
	}
%>

<%=arr.toString() %>