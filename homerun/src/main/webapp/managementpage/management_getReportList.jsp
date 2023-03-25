<%@page import="data.dao.PostReportDao"%>
<%@page import="data.dto.ReviewCommentDto"%>
<%@page import="data.dto.FreeCommentDto"%>
<%@page import="data.dao.ReviewCommentDao"%>
<%@page import="data.dto.GameDto"%>
<%@page import="data.dao.GameDao"%>
<%@page import="data.dto.ReviewBoardDto"%>
<%@page import="data.dao.ReviewBoardDao"%>
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
	String category = request.getParameter("category");
	
	int perPage = 10;
	int start = (currentPage - 1) * perPage;

	FreeBoardDao fbDao = new FreeBoardDao();
	ReviewBoardDao rbDao = new ReviewBoardDao();
	FreeCommentDao fcDao = new FreeCommentDao();
	ReviewCommentDao rcDao = new ReviewCommentDao();
	PostReportDao prDao = new PostReportDao();
	
	List<FreeBoardDto> fbList = fbDao.getAllFBs_report(start, perPage);	
	List<ReviewBoardDto> rbList = rbDao.getAllRBs_report(start, perPage);
	List<FreeCommentDto> fcList = fcDao.getAllFCs_report(start, perPage);
	List<ReviewCommentDto> rcList = rcDao.getAllRCs_report(start, perPage); 
	
	UserDao uDao = new UserDao();
	TeamDao tDao = new TeamDao();
	
	
	JSONArray arr = new JSONArray();
	SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd");
	
	if(category.equals("fb")) {
		for(FreeBoardDto fbDto : fbList) {
			JSONObject ob = new JSONObject();		
			String nickname = uDao.getUser(fbDto.getUId()).getNickname();
			String teamLogoImg = tDao.getTeam(fbDto.getFbCategory()).getTeamLogo();
			int totalCnt = prDao.getFBRPcnt();
			int fcCnt = fcDao.getAllFCs(fbDto.getFbNum()).size();
					
			ob.put("totalCnt", totalCnt);
			ob.put("fbNum", fbDto.getFbNum());
			ob.put("fbUId", fbDto.getUId());
			ob.put("nickname", nickname);
			ob.put("fbCategory", fbDto.getFbCategory());
			ob.put("fbSubject", fbDto.getFbSubject());
			ob.put("fbContent", fbDto.getFbContent());
			ob.put("fbReadCnt", fbDto.getFbReadCnt());
			ob.put("fbLike", fbDto.getFbLike());
			ob.put("fbDislike", fbDto.getFbDislike());
			ob.put("fbWriteday", sdf.format(fbDto.getFbWriteday()));
			ob.put("fbReport", fbDto.getFbReport());
			ob.put("teamLogoImg", teamLogoImg);
			ob.put("fcCnt", fcCnt);
			
			arr.add(ob);
		}
	}
	
	else if(category.equals("rb")) {
		for(ReviewBoardDto rbDto : rbList) {
			JSONObject ob = new JSONObject();	
			
			GameDao gDao = new GameDao();
			GameDto gDto = gDao.getGame(rbDto.getgId());
			
			String homeImg = tDao.getTeam(gDto.getHome()).getTeamLogo();
			String awayImg = tDao.getTeam(gDto.getAway()).getTeamLogo();
					
			String home = gDto.getHome();
			String away = gDto.getAway();
			
			String nickname = uDao.getUser(rbDto.getUId()).getNickname();
			
			String year = gDto.getgDay().substring(2, 4);
			String month = gDto.getgDay().substring(5, 7);
			String day = gDto.getgDay().substring(8, 10);
			int totalCnt = prDao.getRBRPcnt();
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
	}
	
	else if(category.equals("fc")) {
		for(FreeCommentDto fcDto : fcList) {
			JSONObject ob = new JSONObject();
			
			String nickname = uDao.getUser(fcDto.getUId()).getNickname();
			String subject = fbDao.getFB(fcDto.getFbNum()).getFbSubject();
			int totalCnt = fcDao.getAllFCs_reportCount();
			
			ob.put("totalCnt", totalCnt);
			ob.put("cIdx", fcDto.getFcIdx());
			ob.put("num", fcDto.getFbNum());
			ob.put("subject", subject);
			ob.put("uId", fcDto.getUId());
			ob.put("nickname", nickname);
			ob.put("content", fcDto.getFcContent());
			ob.put("like", fcDto.getFcLike());
			ob.put("dislike", fcDto.getFcDislike());
			ob.put("writeday", sdf.format(fcDto.getFcWriteday()));
			ob.put("report", fcDto.getFcReport());
			
			arr.add(ob);
		}		
	}
	
	else if(category.equals("rc")) {
		for(ReviewCommentDto rcDto : rcList) {
			JSONObject ob = new JSONObject();
			
			String nickname = uDao.getUser(rcDto.getUId()).getNickname();
			String subject = rbDao.getRB(rcDto.getRbNum()).getRbSubject();
			int totalCnt = rcDao.getAllRCs_reportCount();
			
			ob.put("totalCnt", totalCnt);
			ob.put("cIdx", rcDto.getRcIdx());
			ob.put("num", rcDto.getRbNum());
			ob.put("subject", subject);
			ob.put("uId", rcDto.getUId());
			ob.put("nickname", nickname);
			ob.put("content", rcDto.getRcContent());
			ob.put("like", rcDto.getRcLike());
			ob.put("dislike", rcDto.getRcDislike());
			ob.put("writeday", sdf.format(rcDto.getRcWriteday()));
			ob.put("report", rcDto.getRcReport());
			
			arr.add(ob);
		}
		
	}
	
%>

<%=arr.toString() %>