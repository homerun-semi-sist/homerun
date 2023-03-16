<%@page import="data.dto.ProductDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link href="../assets/css/style_index.css" rel="stylesheet">
<link href="../assets/css/styles_productinsert.css" rel="stylesheet">
<%
String mainPage = "../layout/main.jsp";

if (request.getParameter("main") != null) {
	mainPage = request.getParameter("main");
}
String root = request.getContextPath();

ProductDao dao = new ProductDao();
List<ProductDto> list = dao.selectAllProduct();
%>
</head>
<body>

	<%
	for (ProductDto dto : list) {
	%>
	<%=dto.getpId()%>
	<%=dto.getpName()%>
	<%=dto.getTeamName()%>
	<%=dto.getpCategory()%>
	<%=dto.getpOption()%>
	<%=dto.getpStock()%>
	<%=dto.getPrice()%>
	<%=dto.getpDetail()%>
	<%=dto.getpImage()%>
	<br>
	<button type="button" class="pinsertbtn"
		onclick="location.href='../product/product_updatePage.jsp?pId=<%=dto.getpId()%>'">수정</button>
		<button type="button" class="pinsertbtn"
		onclick="location.href='../product/product_delete.jsp?pId=<%=dto.getpId()%>'">삭제</button>
	<br>
	<%
	}
	%>


</body>
</html>