<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="../assets/css/styles_detail.css" rel="stylesheet" />
<title>Insert title here</title>
</head>
<%
//프로젝트 경로구하기
String root = request.getContextPath();
%>
<body>

	<a href="<%=root%>"><img width="150" height="150"
		src="assets/img/로고.png"></a>
	<div style="float: right";>
		<span style="color: white; font-size: 15px;">OOO님 환영합니다</span><br>
		<button type="button" class="btn btn-light" id="myshop"
			style="font-size: 15px;">장바구니</button>
		<button type="button" class="btn btn-light" id="mypage"
			style="font-size: 15px;">마이페이지</button>
	</div>

</body>
</html>