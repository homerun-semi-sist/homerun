<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.3.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%
		String loginok=(String)session.getAttribute("loginok");
	
	if(loginok==null)	
	{%>
	
		<jsp:include page="loginform.jsp"/>
		
	<%}else{%>
	
		<jsp:include page="logoutform.jsp"/>
		
	<%}
	%>
</body>
</html>