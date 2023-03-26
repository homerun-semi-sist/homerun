<%@page import="data.dto.TeamDto"%>
<%@page import="data.dto.GameDto"%>
<%@page import="data.dao.GameDao"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="data.dao.ReviewCommentDao"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.TeamDao"%>
<%@page import="data.dao.UserDao"%>
<%@page import="data.dao.ReviewBoardDao"%>
<%@page import="data.dto.ReviewBoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
p

int currentPage = Integer.parseInt(request.getParameter("currentPage"));
int perPage = 15;
int start = (currentPage - 1) * perPage;

String homeImg, awayImg, home, away, year, month, day;

ReviewBoardDao rbDao = new ReviewBoardDao();
List<ReviewBoardDto> list = rbDao.getRBList(start, perPage);
int totalCnt = rbDao.getRBTotalCount();

ReviewCommentDao rcDao = new ReviewCommentDao();

JSONArray arr = new JSONArray();
SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd");

for (ReviewBoardDto rbDto : list) {
	JSONObject ob = new JSONObject();

	GameDao gDao = new GameDao();
	GameDto gDto = gDao.getGame(rbDto.getgId());

	TeamDao tDao = new TeamDao();
	UserDao uDao = new UserDao();

	int rcCnt = rcDao.getAllRCs(rbDto.getRbNum()).size();

	String nickname = uDao.getUser(rbDto.getUId()).getNickname();

	if (rbDto.getUId().equals("admin")) {
		homeImg = "";
		awayImg = "";

		home = "";
		away = "";

		year = "";
		month = "";
		day = "";
	} else {
		homeImg = tDao.getTeam(gDto.getHome()).getTeamLogo();
		awayImg = tDao.getTeam(gDto.getAway()).getTeamLogo();

		home = gDto.getHome();
		away = gDto.getAway();

		year = gDto.getgDay().substring(2, 4);
		month = gDto.getgDay().substring(5, 7);
		day = gDto.getgDay().substring(8, 10);
	}

	ob.put("totalCnt", totalCnt);
	ob.put("rbNum", rbDto.getRbNum());
	ob.put("gId", rbDto.getgId());
	ob.put("rbUId", rbDto.getUId());
	ob.put("nickname", nickname);
	ob.put("rbSubject", rbDto.getRbSubject());
	ob.put("rbContent", rbDto.getRbContent());
	ob.put("rbReadCnt", rbDto.getRbReadCnt());
	ob.put("rbLike", rbDto.getRbLike());
	ob.put("rbDislike", rbDto.getRbDislike());
	ob.put("rbWriteday", sdf.format(rbDto.getRbWriteday()));
	ob.put("rbReport", rbDto.getRbReport());
	ob.put("rcCnt", rcCnt);

	if (!rbDto.equals("admin")) {
		ob.put("year", year);
		ob.put("month", month);
		ob.put("day", day);
		ob.put("home", home);
		ob.put("away", away);
		ob.put("homeImg", homeImg);
		ob.put("awayImg", awayImg);
	}

	arr.add(ob);
}
%>

<%=arr.toString() %>