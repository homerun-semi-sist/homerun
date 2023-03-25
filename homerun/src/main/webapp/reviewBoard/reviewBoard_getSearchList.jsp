<%@page import="data.dto.GameDto"%>
<%@page import="data.dao.GameDao"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="data.dao.ReviewCommentDao"%>
<%@page import="data.dao.TeamDao"%>
<%@page import="data.dao.UserDao"%>
<%@page import="java.util.Vector"%>
<%@page import="data.dto.ReviewBoardDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.ReviewBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	int currentPage = Integer.parseInt(request.getParameter("currentPage"));
	int perPage = 15;
	int start = (currentPage - 1) * perPage;
	
	ReviewBoardDao rbDao = new ReviewBoardDao();
	List<ReviewBoardDto> rbList = new Vector<>();
	int totalCnt = rbDao.getRBTotalCount();
	
	String val = request.getParameter("val");
	String str = request.getParameter("str");
	
	if(val.equals("nickname"))
		rbList = rbDao.search_nickname(start, perPage, str);
	else if(val.equals("subject"))
		rbList = rbDao.search_subject(start, perPage, str);
	else if(val.equals("content"))
		rbList = rbDao.search_content(start, perPage, str);

	ReviewCommentDao rcDao = new ReviewCommentDao();
	
	JSONArray arr = new JSONArray();
	SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd");
	
	for(ReviewBoardDto rbDto : rbList) {
		JSONObject ob = new JSONObject();	
		
		GameDao gDao = new GameDao();
		GameDto gDto = gDao.getGame(rbDto.getgId());
		
		TeamDao tDao = new TeamDao();
		
		String homeImg = tDao.getTeam(gDto.getHome()).getTeamLogo();
		String awayImg = tDao.getTeam(gDto.getAway()).getTeamLogo();
				
		String home = gDto.getHome();
		String away = gDto.getAway();
		
		UserDao uDao = new UserDao();
		String nickname = uDao.getUser(rbDto.getUId()).getNickname();
		
		String year = gDto.getgDay().substring(2, 4);
		String month = gDto.getgDay().substring(5, 7);
		String day = gDto.getgDay().substring(8, 10);
		
		int rcCnt = rcDao.getAllRCs(rbDto.getRbNum()).size();
		
		ob.put("totalCnt", totalCnt);
		ob.put("rbNum", rbDto.getRbNum());
		ob.put("frbUId", rbDto.getUId());
		ob.put("nickname", nickname);
		ob.put("rbSubject", rbDto.getRbSubject());
		ob.put("rbContent", rbDto.getRbContent());
		ob.put("rbReadCnt", rbDto.getRbReadCnt());
		ob.put("rbLike", rbDto.getRbLike());
		ob.put("rbDislike", rbDto.getRbDislike());
		ob.put("year", year);
		ob.put("month", month);
		ob.put("day", day);
		ob.put("rbWriteday", sdf.format(rbDto.getRbWriteday()));
		ob.put("rbReport", rbDto.getRbReport());
		ob.put("home", home);
		ob.put("away", away);
		ob.put("homeImg", homeImg);
		ob.put("awayImg", awayImg);
		ob.put("rcCnt", rcCnt);
		
		arr.add(ob);
	}
%>

<%=arr.toString() %>