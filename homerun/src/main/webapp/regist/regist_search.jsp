<%@page import="org.json.simple.JSONObject"%>
<%@page import="data.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String uid=request.getParameter("uid");
	String nickname=request.getParameter("nickname");
	UserDao dao=new UserDao();
	
	int count=dao.isIDCheck(uid);
	int Ncount=dao.isNICKCheck(nickname);
	
	JSONObject ob=new JSONObject();
	ob.put("Ncount", Ncount);
	ob.put("count", count);
%>

<<<<<<< HEAD
<%=ob.toString() %>
=======
<%=ob.toString() %>
>>>>>>> SungUng
