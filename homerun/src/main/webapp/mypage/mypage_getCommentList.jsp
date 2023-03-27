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
String uId = request.getParameter("uId");

int perPage = 10;
int start = (currentPage - 1) * perPage;

FreeBoardDao fbDao = new FreeBoardDao();
ReviewBoardDao rbDao = new ReviewBoardDao();
FreeCommentDao fcDao = new FreeCommentDao();
ReviewCommentDao rcDao = new ReviewCommentDao();

List<FreeCommentDto> fcList = fcDao.getAllmyFCs(start, perPage, uId);
List<ReviewCommentDto> rcList = rcDao.getAllmyRCs(start, perPage, uId);

UserDao uDao = new UserDao();
TeamDao tDao = new TeamDao();

JSONArray arr = new JSONArray();
SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd");

if (category.equals("fc")) {
	for (FreeCommentDto fcDto : fcList) {
		JSONObject ob = new JSONObject();

		String nickname = uDao.getUser(uId).getNickname();
		String subject = fbDao.getFB(fcDto.getFbNum()).getFbSubject();

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

else {
	for (ReviewCommentDto rcDto : rcList) {
		JSONObject ob = new JSONObject();

		String nickname = uDao.getUser(uId).getNickname();
		String subject = rbDao.getRB(rcDto.getRbNum()).getRbSubject();

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

<%=arr.toString()%>