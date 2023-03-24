<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<link href="assets/css/style_main.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<%
String loginok = (String)session.getAttribute("loginok");
String uid = (String) session.getAttribute("uid");
String root = request.getContextPath();
%>
<body>
	<div id="layoutSidenav_content">
		<footer class="py-4 mt-auto"
			style="background-color: #0b214e; color: white; height: 70px; font-size: 13pt; line-height: 45px;">
			<div class="px-4">
				<div class="d-flex justify-content-between small">
					<div class="text-muted">Copyright &copy; HOMERUN sist1226
						semi_2</div>
					<div class="text-muted">
						<%
						if (loginok=="yes") {
						%>
						<a style="color: white" class="text-muted"
							href="<%=root%>/user/user_logoutaction.jsp">LogOut</a>
						<%
						} else {
						%>
						<a style="color: white" class="text-muted"
							href="<%=root%>/regist/regist_registform.jsp">Register</a>
						&middot; <a style="color: white" class="text-muted"
							href="<%=root%>/user/user_loginform.jsp">LogIn</a>
						<%
						}
						%>
						&middot; <a style="color: white" class="text-muted"
							href="https://github.com/semi-project-SIST/semi-project-SIST">semi-project-SIST</a>
					</div>
				</div>
			</div>
		</footer>
	</div>

</body>
</html>