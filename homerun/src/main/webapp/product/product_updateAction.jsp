<%@page import="data.dao.ProductDao"%>
<%@page import="data.dto.ProductDto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Document</title>
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
	dao.updateProduct(dto);

	response.sendRedirect("../managementpage/management_stockListPage.jsp");
	%>

</body>
</html>