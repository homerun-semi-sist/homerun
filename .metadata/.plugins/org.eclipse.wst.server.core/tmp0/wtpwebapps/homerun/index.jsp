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

<style>
.layout {
	border: 0px solid gray;
	position: absolute;
}

html, body {
	height: 100%;
	padding: 0px;
	margin: 0px;
}

header {
	width: 100%;
	height: 80px;
}

.main_nav {
	width: 100%;
	height: 80px;
	top: 150px;
}

#wrap {
	min-height: calc(100% - 120px);
}

.mainbox {
	height: 1000px;
	font-size: 13pt;
	top: 250px;
	margin-bottom: 20px;
}

.main_footer {
	width: 100%;
	height: 80px;
	margin-bottom: 0px;
}
</style>
</head>
<body>
	<%
	String mainPage = "layout/main.jsp";

	//url을 통해서 main값을 읽어서 메인페이지에 출력을한다
	if (request.getParameter("main") != null) {
		mainPage = request.getParameter("main");
	}

	String root = request.getContextPath();
	%>
	<header class="layout"><jsp:include page="layout/title_u.jsp" /></header>
	<div class="layout main_nav"><jsp:include page="layout/nav2.jsp" /></div>
	<div id="wrap" class="mainbox">
		<div id="content-wrap">
			<div><jsp:include page="<%=mainPage%>" /></div>
		</div>
	</div>
	<div class="layout main_footer"><jsp:include
			page="layout/footer_u.jsp" /></div>
</body>
</html>