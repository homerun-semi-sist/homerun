<%@page import="data.dao.FreeCommentDao"%>
<%@page import="data.dao.TeamDao"%>
<%@page import="java.util.Vector"%>
<%@page import="data.dao.UserDao"%>
<%@page import="data.dto.FreeBoardDto"%>
<%@page import="data.dao.FreeBoardDao"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	int currentPage = Integer.parseInt(request.getParameter("currentPage"));
	int perPage = 15;
	int start = (currentPage - 1) * perPage;
	
	FreeBoardDao fbDao = new FreeBoardDao();
	List<FreeBoardDto> fbList = fbDao.getFBList(start, perPage);
	
	String val = request.getParameter("val");
	String str = request.getParameter("str");

	if(val.equals("nickname"))
		fbList = fbDao.search_nickname(str);
	else if(val.equals("subject"))
		fbList = fbDao.search_subject(str);
	else if(val.equals("content"))
		fbList = fbDao.search_content(str);

	UserDao uDao = new UserDao();
	TeamDao tDao = new TeamDao();
	FreeCommentDao fcDao = new FreeCommentDao();
	
	JSONArray arr = new JSONArray();
	SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd HH:mm");
	
	for(FreeBoardDto dto : fbList) {
		JSONObject ob = new JSONObject();
		String teamLogoImg = "";
		
		String nickname = uDao.getUser(dto.getUId()).getNickname();
		
		if(dto.getFbCategory().equals("전체"))
			teamLogoImg = "전체";
		else 
			teamLogoImg = tDao.getTeam(dto.getFbCategory()).getTeamLogo();
		
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