<%@page import="org.json.simple.JSONObject"%>
<%@page import="data.dao.FreeBoardDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	// num 
	String num = request.getParameter("num");

	// dao
	FreeBoardDao dao = new FreeBoardDao();
	
	// num�� �ش��ϴ� like ����
	dao.updateLike(num);
	
	// num�� �ش��ϴ� chu�� json �������� ��ȯ
	String like = dao.getFB(num).getFbLike();
	
	JSONObject ob = new JSONObject();
	
	ob.put("like", like);
%>

<%=ob.toString() %>
   