<%@page import="org.json.simple.JSONObject"%>
<%@page import="data.dao.FreeBoardDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	// num 
	String num = request.getParameter("num");

	// dao
	FreeBoardDao dao = new FreeBoardDao();
	
	// num�� �ش��ϴ� dislike ����
	dao.updateDislike(num);
	
	// num�� �ش��ϴ� chu�� json �������� ��ȯ
	String dislike = dao.getFB(num).getFbDislike();
	
	JSONObject ob = new JSONObject();
	
	ob.put("dislike", dislike);
%>

<%=ob.toString() %>
   