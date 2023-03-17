<%@page import="data.dao.UserDao"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.FreeCommentDao"%>
<%@page import="data.dto.FreeCommentDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String num = request.getParameter("num");

	FreeCommentDao FCDao = new FreeCommentDao();
	List<FreeCommentDto> list = FCDao.getAllFCs(num);
	
	UserDao uDao = new UserDao();
	
	JSONArray arr = new JSONArray();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	for(FreeCommentDto dto : list) {
		JSONObject ob = new JSONObject();
		
		String nickname = uDao.getUser(dto.getUId()).getNickname();
		
		ob.put("fcIdx", dto.getFcIdx());
		ob.put("fbNum", dto.getFbNum());
		ob.put("nickname", nickname);
		ob.put("fcContent", dto.getFcContent());
		ob.put("fcLike", dto.getFcLike());
		ob.put("fcDislike", dto.getFcDislike());
		ob.put("fcWriteday", sdf.format(dto.getFcWriteday()));
		ob.put("fcReport", dto.getFcReport());
		
		arr.add(ob);
	}
%>

<%=arr.toString() %>