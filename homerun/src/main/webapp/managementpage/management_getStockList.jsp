<%@page import="java.text.NumberFormat"%>
<%@page import="data.dto.ProductDto"%>
<%@page import="data.dao.ProductDao"%>
<%@page import="java.util.Vector"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
int currentPage=Integer.parseInt(request.getParameter("currentPage"));

int start; //각 페이지의 시작번호
int perPage = 10; //한 페이지당 보여질 글 개수
//각페이지에서 불러올 시작번호
start = (currentPage - 1) * perPage;

NumberFormat nf = NumberFormat.getCurrencyInstance();


ProductDao dao = new ProductDao();
List<ProductDto> list = dao.getList_pDay(start, perPage);

JSONArray arr = new JSONArray();
SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd HH:mm");

for (ProductDto dto : list) {
	JSONObject ob = new JSONObject();

	ob.put("pId", dto.getpId());
	ob.put("pName", dto.getpName());
	ob.put("teamName", dto.getTeamName());
	ob.put("pCategory", dto.getpCategory());
	ob.put("pStock", dto.getpStock());
	ob.put("price", nf.format(dto.getPrice()));
	ob.put("pDay", sdf.format(dto.getpDay()));

	arr.add(ob);
}
%>

<%=arr.toString()%>