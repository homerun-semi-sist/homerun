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
	String val = request.getParameter("val");

	FreeBoardDao FbDao = new FreeBoardDao();
	List<FreeBoardDto> list = new Vector<>();
	
	if(val.equals("all")) 
		list = FbDao.getAllFBs();
	
	UserDao uDao = new UserDao();
	
	JSONArray arr = new JSONArray();
	SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd HH:mm");
	
	for(FreeBoardDto dto : list) {
		JSONObject ob = new JSONObject();
		
		String nickname = uDao.getUser(dto.getUId()).getNickname();
		
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
		
		arr.add(ob);
	}
%>

<%=arr.toString() %>