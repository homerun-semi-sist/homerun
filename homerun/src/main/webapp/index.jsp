<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>

<style type="text/css">
	div.layout {
		border: 0px solid gray;
		position: absolute;
	}
	.main_title{	
		width:100%;
		height: 80px;
	}
	
	.main_nav{
		width: 100%;
		height: 80px;
		top: 250px;
	}
	
	.mainbox{		
		width: 80%;
		height: 1000px;
		font-size: 13pt;
		top: 250px;
		margin-left:200px;
		margin-bottom: 20px;
	}
	.main_footer {
		width:100%;
		height: 80px;
		top: 1300px;
		margin-bottom: 0px;
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
	<div class="layout main_title">
		<jsp:include page="layout/title_u.jsp" />
	</div>
	
	<div class="layout main_nav">
		<jsp:include page="layout/nav2.jsp" />
	</div>

	<div class="layout mainbox"  style="border: 1px solid gray;">
		<jsp:include page="<%=mainPage%>" />
	</div>

	<div class="layout main_footer">
		<jsp:include page="layout/footer_u.jsp" />
	</div>
</body>
</html>
