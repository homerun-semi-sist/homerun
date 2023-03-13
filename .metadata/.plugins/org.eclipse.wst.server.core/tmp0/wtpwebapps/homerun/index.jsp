<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>

<style type="text/css">
div.layout {
	border: 0px solid gray;
	position: absolute;
}

div.title {
	width: 100%;
	height: 170px;
	line-height: 80px;
	font-size: 75px;
	text-align: center;
	background: #0b214e;
	font-wight: bold;
}

div.main {
	width: 1200px;
	height: 800px;
	font-size: 15pt;
	top: 280px;
	left: 350px;
	padding-left: 100px;
}

div.nav {
	width: 100%;
	height: 80px;
	font-size: 25pt;
	top: 25px;
	text-align: center;
}

div.footer {
	width: 100%;
	position: fixed;
	bottom: 0;
}
</style>
</head>
<%
String mainPage = "layout/main.jsp";

//url을 통해서 main값을 읽어서 메인페이지에 출력을한다
if (request.getParameter("main") != null) {
	mainPage = request.getParameter("main");
}

String root = request.getContextPath();
%>
<body>
	<div class="layout title" style="border: 5px solid tomato">
		<jsp:include page="layout/title.jsp" />
	</div>

<%-- 	<div class="layout nav">
		<jsp:include page="layout/nav.jsp" />
	</div> --%>

	<div class="layout main">
		<jsp:include page="<%=mainPage%>" />
	</div>

	<div class="layout footer">
		<jsp:include page="layout/footer.jsp" />
	</div>
</body>
</html>