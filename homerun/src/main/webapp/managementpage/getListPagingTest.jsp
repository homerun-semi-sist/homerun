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
String mainPage = "../layout/main.jsp";

if (request.getParameter("main") != null) {
	mainPage = request.getParameter("main");
}
String root = request.getContextPath();

NumberFormat nf = NumberFormat.getCurrencyInstance();

/* int totalCount; //총 개수
int totalPage; //총 페이지수
int startPage; //각 블럭(1,2,3..)의 시작페이지
int endPage; //각 블럭의 마지막 페이지
int start; //각 페이지의 시작번호
int perPage = 10; //한 페이지당 보여질 글 개수
int perBlock = 5; //한 블럭당 보여지는 페이지 개수
int currentPage; //현재페이지

int no;

ProductDao dao = new ProductDao();

totalCount = dao.getTotalCount();

//현재 페이지 번호 읽기(null일때는 1페이지로 설정)
if (request.getParameter("currentPage") == null)
	currentPage = 1;
else
	currentPage = Integer.parseInt(request.getParameter("currentPage"));

//총 페이지 개수
totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);

//각 블럭의 시작페이지 -> 현재페이지가 3 -> s:1, e:5 / 6 -> s:6, e:10
startPage = (currentPage - 1) / perBlock * perBlock + 1;
endPage = startPage + perBlock - 1;

//총 페이지가 8이면 (6~10 -> end페이지를 8로 수정)
if (endPage > totalPage)
	endPage = totalPage;

//각페이지에서 불러올 시작번호
start = (currentPage - 1) * perPage;

//메서드 불러오기
List<ProductDto> list = dao.getList_pDay(start, perPage);
*/
ProductDao dao = new ProductDao();
List<ProductDto> list = dao.selectAllProduct_pDay();

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