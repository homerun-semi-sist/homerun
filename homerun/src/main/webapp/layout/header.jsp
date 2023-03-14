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
<link href="assets/css/style.css" rel="stylesheet" />
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
					<a href="../index.jsp" class="navbar-brand"> <img
						src="<%=root%>/assets/img/로고.png" style="width: 150px;" />
					</a>
				</div>
			</div>
			<div class="col-lg-3" style="margin-top: 20px;">
				<div class="d-flex align-items-center justify-content-end">
					<span class="me-3"><span class="uname_title">박예은</span><span
						class="a_title">님</span></span> <a class="a_title" href="#"><span>마이페이지</span></a><span
						class="a_title">&nbsp;|&nbsp;</span> <a style="color: white;"
						href="#"><span>장바구니</span></a>
				</div>
			</div>
		</div>
	</div>
	<!-- Topbar End -->
	
	 <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg navbar-light sticky-top px-4 px-lg-5 py-lg-0">
        <a href="index.jsp" class="navbar-brand d-flex align-items-center">
            Homerun
        </a>
        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-3 py-lg-0">
                <a href="index.jsp" class="nav-item nav-link active">Home</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">경기일정</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="#" class="dropdown-item">Page 1-1</a>
                        <a href="#" class="dropdown-item">Page 1-2</a>
                        <a href="#" class="dropdown-item">Page 1-3</a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">게시판</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="#" class="dropdown-item">Page 1-1</a>
                        <a href="#" class="dropdown-item">Page 1-2</a>
                        <a href="#" class="dropdown-item">Page 1-3</a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">응원용품</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="#" class="dropdown-item">Page 1-1</a>
                        <a href="#" class="dropdown-item">Page 1-2</a>
                        <a href="#" class="dropdown-item">Page 1-3</a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">예약</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="#" class="dropdown-item">Page 1-1</a>
                        <a href="#" class="dropdown-item">Page 1-2</a>
                        <a href="#" class="dropdown-item">Page 1-3</a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">관리자페이지</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="#" class="dropdown-item">회원관리</a>
                        <a href="#" class="dropdown-item">재고관리</a>
                        <a href="#" class="dropdown-item">게시글관리</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->
</body>
</html>