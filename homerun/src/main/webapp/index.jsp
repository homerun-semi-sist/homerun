<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link href="assets/css/index.css" rel="stylesheet">
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
		<jsp:include page="layout/title.jsp" />
	</header>

	<div class="main_nav">
		<jsp:include page="layout/nav.jsp" />
	</div>

	<div id="wrap">
		<div id="content-wrap">
			<jsp:include page="<%=mainPage%>" />
		</div>
	</div>
	<div class="main_footer">
		<jsp:include page="layout/footer.jsp" />
	</div>
</body>
</html>