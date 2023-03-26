<%@page import="data.dto.ReviewCommentDto"%>
<%@page import="data.dao.ReviewCommentDao"%>
<%@page import="data.dao.UserDao"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String num = request.getParameter("num");

ReviewCommentDao RCDao = new ReviewCommentDao();
List<ReviewCommentDto> list = RCDao.getAllRCs(num);

UserDao uDao = new UserDao();

JSONArray arr = new JSONArray();
SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd HH:mm");

for (ReviewCommentDto dto : list) {
	JSONObject ob = new JSONObject();

	String nickname = uDao.getUser(dto.getUId()).getNickname();

	ob.put("rcIdx", dto.getRcIdx());
	ob.put("rbNum", dto.getRbNum());
	ob.put("rcUId", dto.getUId());
	ob.put("nickname", nickname);
	ob.put("rcContent", dto.getRcContent());
	ob.put("rcLike", dto.getRcLike());
	ob.put("rcDislike", dto.getRcDislike());
	ob.put("rcWriteday", sdf.format(dto.getRcWriteday()));
	ob.put("rcReport", dto.getRcReport());

	arr.add(ob);
}
%>

<%=arr.toString()%>