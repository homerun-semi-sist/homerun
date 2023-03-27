<%@page import="data.dto.GameDto"%>
<%@page import="data.dao.GameDao"%>
<%@page import="data.dto.ReviewBoardDto"%>
<%@page import="data.dao.ReviewCommentDao"%>
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
String uId = request.getParameter("uId");
String category = request.getParameter("category");

int perPage = 10;
int start = (currentPage - 1) * perPage;

UserDao uDao = new UserDao();
TeamDao tDao = new TeamDao();
FreeBoardDao fbDao = new FreeBoardDao();
FreeCommentDao fcDao = new FreeCommentDao();
ReviewBoardDao rbDao = new ReviewBoardDao();
ReviewCommentDao rcDao = new ReviewCommentDao();

List<FreeBoardDto> fbList = fbDao.getAllmyFBs(start, perPage, uId);
List<ReviewBoardDto> rbList = rbDao.getAllmyRBs(start, perPage, uId);

JSONArray arr = new JSONArray();
SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd");

if (category.equals("fb")) {
	for (FreeBoardDto dto : fbList) {
		JSONObject ob = new JSONObject();
		String nickname = uDao.getUser(dto.getUId()).getNickname();
		String teamLogoImg = tDao.getTeam(dto.getFbCategory()).getTeamLogo();

		int fcCnt = fcDao.getAllFCs(dto.getFbNum()).size();

		ob.put("num", dto.getFbNum());
		ob.put("uId", dto.getUId());
		ob.put("nickname", nickname);
		ob.put("category", dto.getFbCategory());
		ob.put("subject", dto.getFbSubject());
		ob.put("content", dto.getFbContent());
		ob.put("readCnt", dto.getFbReadCnt());
		ob.put("like", dto.getFbLike());
		ob.put("dislike", dto.getFbDislike());
		ob.put("writeday", sdf.format(dto.getFbWriteday()));
		ob.put("report", dto.getFbReport());
		ob.put("teamLogoImg", teamLogoImg);
		ob.put("cCnt", fcCnt);

		arr.add(ob);
	}
} else {
	for (ReviewBoardDto rbDto : rbList) {
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

		int rcCnt = rcDao.getAllRCs(rbDto.getRbNum()).size();

		ob.put("num", rbDto.getRbNum());
		ob.put("uId", rbDto.getUId());
		ob.put("nickname", nickname);
		ob.put("subject", rbDto.getRbSubject());
		ob.put("content", rbDto.getRbContent());
		ob.put("readCnt", rbDto.getRbReadCnt());
		ob.put("like", rbDto.getRbLike());
		ob.put("dislike", rbDto.getRbDislike());
		ob.put("year", year);
		ob.put("month", month);
		ob.put("day", day);
		ob.put("writeday", sdf.format(rbDto.getRbWriteday()));
		ob.put("report", rbDto.getRbReport());
		ob.put("home", home);
		ob.put("away", away);
		ob.put("homeImg", homeImg);
		ob.put("awayImg", awayImg);
		ob.put("cCnt", rcCnt);

		arr.add(ob);
	}
}
%>

<%=arr.toString()%>