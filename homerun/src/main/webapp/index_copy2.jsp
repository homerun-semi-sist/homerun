<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<style>
html, body {
	height: 100%;
	padding: 0px;
	margin: 0px;
}

div.layout {
	border: 0px solid gray;
	position: absolute;
}

.main_nav {
	height: 80px;
	top: 250px;
}

#wrap {
	min-height: calc(100% - 310px);
}

.mainbox {
	height: 1000px;
	font-size: 13pt;
	/* top: 250px; */
	margin-bottom: 20px;
}

footer {
	height: 60px;
	background-color: #e9eaed;
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

	<header class="main_title">
		<jsp:include page="layout/title_u.jsp" />
	</header>

	<div class="main_nav">
		<jsp:include page="layout/nav2.jsp" />
	</div>

	<div id="wrap">
		<div id="content-wrap">
			<jsp:include page="<%=mainPage%>" />
		</div>
	</div>
	<div>
		<jsp:include page="layout/footer_u.jsp" />
	</div>
</body>
</html>