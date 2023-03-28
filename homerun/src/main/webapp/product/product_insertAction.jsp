<%@page import="java.text.NumberFormat"%>
<%@page import="data.dao.ProductDao"%>
<%@page import="data.dto.ProductDto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");

	String pId = request.getParameter("pId");
	String pName = request.getParameter("pName");
	String teamName = request.getParameter("teamName");
	String pCategory = request.getParameter("pCategory");
	if (pCategory.equals("없음"))
		pCategory = null;
	int pStock = Integer.parseInt(request.getParameter("pStock"));
	int price = Integer.parseInt(request.getParameter("price"));
	String pDetail = request.getParameter("pDetail");
	String pImage = request.getParameter("pImage");

	ProductDto dto = new ProductDto();
	dto.setpId(pId);
	dto.setpName(pName);
	dto.setTeamName(teamName);
	dto.setpCategory(pCategory);
	dto.setpStock(pStock);
	dto.setPrice(price);
	dto.setpDetail(pDetail);
	dto.setpImage(pImage);

	ProductDao dao = new ProductDao();
	dao.insertProduct(dto);

	response.sendRedirect("../managementpage/management_stockListPage.jsp");
	%>

</body>
</html>