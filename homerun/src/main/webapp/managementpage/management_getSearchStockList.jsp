<%@page import="java.text.NumberFormat"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.Vector"%>
<%@page import="data.dto.ProductDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
int currentPage = Integer.parseInt(request.getParameter("currentPage"));

int start; //�� �������� ���۹�ȣ
int perPage = 10; //�� �������� ������ �� ����
//������������ �ҷ��� ���۹�ȣ
start = (currentPage - 1) * perPage;

String val = request.getParameter("val");
String str = request.getParameter("str");

ProductDao dao = new ProductDao();
List<ProductDto> list = new Vector<>();

if (val.equals("pId"))
	list = dao.search_pId(str, start, perPage);
else if (val.equals("teamName"))
	list = dao.search_teamName(str, start, perPage);
else if (val.equals("pCategory"))
	list = dao.search_pCategory(str, start, perPage);

JSONArray arr = new JSONArray();
SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd HH:mm");
NumberFormat nf = NumberFormat.getCurrencyInstance();

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