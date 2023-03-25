<%@page import="data.dao.TeamDao"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="data.dto.GameDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.GameDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String date = request.getParameter("date");

	GameDao gDao = new GameDao();
	TeamDao tDao = new TeamDao();
	
	List<GameDto> gList = gDao.getGames(date);
	
	JSONArray arr = new JSONArray();
	
	for(GameDto gDto : gList) {
		JSONObject ob = new JSONObject();	
		
		String homeImg = tDao.getTeam(gDto.getHome()).getTeamLogo();
		String awayImg = tDao.getTeam(gDto.getAway()).getTeamLogo();
		
		ob.put("gId", gDto.getgId());
		ob.put("gDay", gDto.getgDay());
		ob.put("home", gDto.getHome());
		ob.put("away", gDto.getAway());
		ob.put("homeImg", homeImg);
		ob.put("awayImg", awayImg);
		
		arr.add(ob);
	}
%>

<%=arr.toString() %>