<%@page import="java.util.Vector"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	
	FreeBoardDao fbDao = new FreeBoardDao();
	List<FreeBoardDto> list = fbDao.getAllFBs();
	
	UserDao uDao = new UserDao();
	TeamDao tDao = new TeamDao();
	FreeCommentDao fcDao = new FreeCommentDao();
	
	JSONArray arr = new JSONArray();
	SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd HH:mm");
	
	for(FreeBoardDto dto : list) {
		JSONObject ob = new JSONObject();		
		String nickname = uDao.getUser(dto.getUId()).getNickname();
		String teamLogoImg = tDao.getTeam(dto.getFbCategory()).getTeamLogo();
		
		int fcCnt = fcDao.getAllFCs(dto.getFbNum()).size();
				
		ob.put("fbNum", dto.getFbNum());
		ob.put("fbUId", dto.getUId());
		ob.put("nickname", nickname);
		ob.put("fbCategory", dto.getFbCategory());
		ob.put("fbSubject", dto.getFbSubject());
		ob.put("fbContent", dto.getFbContent());
		ob.put("fbReadCnt", dto.getFbReadCnt());
		ob.put("fbLike", dto.getFbLike());
		ob.put("fbDislike", dto.getFbDislike());
		ob.put("fbWriteday", sdf.format(dto.getFbWriteday()));
		ob.put("fbReport", dto.getFbReport());
		ob.put("teamLogoImg", teamLogoImg);
		ob.put("fcCnt", fcCnt);
		
		arr.add(ob);
	}
%>

<%=arr.toString() %>