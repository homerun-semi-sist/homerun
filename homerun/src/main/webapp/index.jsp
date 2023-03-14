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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style type="text/css">

</style>
</head>
<%
	String mainPage="layout/main.jsp";
	
	if(request.getParameter("main")!=null)
	{
		mainPage=request.getParameter("main");
	}
	String root=request.getContextPath();
%>
<body>
<div class="layout title">
	<jsp:include page="layout/title.jsp"/>
</div>

<div class="layout nav">
	<jsp:include page="layout/nav.jsp"/>
</div>

<div class="layout footer">
	<jsp:include page="layout/footer.jsp"/>
</div>

<div class="layout main">
	<jsp:include page="<%=mainPage %>"/>
</div>
</body>
</html>