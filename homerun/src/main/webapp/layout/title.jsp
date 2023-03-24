<%@page import="data.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>FarmFresh - Organic Farm Website Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="Free HTML Templates" name="keywords" />
<meta content="Free HTML Templates" name="description" />

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap"
	rel="stylesheet" />

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />

<!-- Template Stylesheet -->
<link href="assets/css/style_main.css" rel="stylesheet" />
</head>

<%
String root = request.getContextPath();
%>

<body>
	<!-- Topbar Start -->


	<div class="container-fluid px-5 d-none d-lg-block"
		style="background-color: #0b214e; height: 150px;">
		<div class=" gx-5 align-items-center">
			<div class="col-lg-3">
				<span></span>
			</div>
			<div class="col-lg-6">
				<div class="d-flex align-items-center justify-content-center">
					<a href="<%=root %>/index.jsp" class="navbar-brand"> <img
						src="<%=root%>/assets/img/로고.png" style="width: 150px;" />
					</a>
				</div>
			</div>		
<%
	// loginok 가져오기
	String loginok=(String)session.getAttribute("loginok");
	String uid=(String)session.getAttribute("uid");

	if(loginok==null)	//로그아웃
	{%>
				
	<%}else if(loginok!=null && uid.equals("admin")){%>
		
			<div class="col-lg-3" style="margin-top: 20px;">
				<div class="d-flex align-items-center justify-content-end">
					<span class="me-3">
					
						<span class="uname_title"><%=uid %></span>
						
						<span class="a_title">님</span>
						
					</span>
						
						 <a class="a_title" href="<%=root%>/admin/admin_adminform.jsp">
						 
						 <span>관리자페이지</span>
						 
						 </a>
						 
				</div>
			</div>
			
	<%}else{%>
		<div class="col-lg-3" style="margin-top: 20px;">
				<div class="d-flex align-items-center justify-content-end">
					<span class="me-3">
					
						<span class="uname_title"><%=uid %></span>
						
						<span class="a_title">님</span>
						
					</span>
						
						 <a class="a_title" href="<%=root%>/mypage/mypage_myinfo.jsp">
						 
						 <span>마이페이지</span>
						 
						 </a>
						 
						 <span class="a_title"> | </span> 
						 
						 <a style="color: white;" href="<%=root%>/product/product_cartlist.jsp">
						 
						 <span>장바구니</span>
				</div>
			</div>
		
	<%}
%>

			
		</div>
	</div>
	<!-- Topbar End -->
</body>
</html>