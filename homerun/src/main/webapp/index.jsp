<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<<<<<<< HEAD
<title>Document</title>
<link href="../assets/css/style_index.css" rel="stylesheet">
=======
<<<<<<< HEAD
<title>HOMERUN | MAIN</title>
<link href="assets/css/style_index.css" rel="stylesheet">
=======
<title>Document</title>
<link href="../assets/css/style_index.css" rel="stylesheet">
>>>>>>> UngTest6
>>>>>>> origin/WooUng5
</head>
<body>
	<%
	String mainPage = "layout/index111111.jsp";

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
			<div class="row">
<<<<<<< HEAD
				<div class="col-sm-2" style="border: 0px solid red;"></div>
				<div class="col-sm-8" style="border: 0px solid pink;">
=======
				<div class="col-sm-2" style="border: 1px solid red;">left</div>
				<div class="col-sm-8" style="border: 1px solid pink;">
>>>>>>> origin/WooUng5
					<div id="content-wrap">
						<jsp:include page="<%=mainPage%>" />
					</div>
				</div>
			</div>
<<<<<<< HEAD
			<div class="col-sm-2" style="border: 0px solid blue;"></div>
=======
			<div class="col-sm-2" style="border: 1px solid blue;">right</div>
>>>>>>> origin/WooUng5
		</div>
	</div>
	</div>

	<div class="main_footer">
		<jsp:include page="layout/footer.jsp" />
	</div>
</body>
</html>