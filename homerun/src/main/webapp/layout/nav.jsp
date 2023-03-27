<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="keywords"/>
    <meta content="" name="description"/>

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Poppins:wght@600;700&display=swap"
            rel="stylesheet"/>

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet"/>

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Template Stylesheet -->
    <link href="../assets/css/style_main.css" rel="stylesheet"/>
</head>

<body>
<% String root = request.getContextPath(); %>

<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg navbar-light sticky-top px-4 px-lg-5 py-lg-0">
    <a href="<%=root %>/index.jsp" class="navbar-brand d-flex align-items-center">
        Homerun </a>
    <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav ms-auto py-3 py-lg-0">
            <a href="<%=root %>/index.jsp" class="nav-item nav-link active">Home</a>
            <div class="nav-item dropdown">
                <a href="<%=root %>/game/game_gameListPage.jsp" class="nav-link">경기일정</a>
            </div>
            <div class="nav-item">
                <a href="<%=root %>/freeBoard/freeBoard_listPage.jsp" class="nav-link">자유게시판</a>
            </div>

            <div class="nav-item">
                <a href="<%=root %>/reviewBoard/reviewBoard_listPage.jsp" class="nav-link">후기게시판</a>
            </div>

            <div class="nav-item">
                <a href="<%=root%>/product/product_mainPage.jsp" class="nav-link">응원용품</a>

            </div>

            <%-- <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle"
                   data-bs-toggle="dropdown">관리자페이지</a>
                <div class="dropdown-menu bg-light m-0">
                    <a href="#" class="dropdown-item">회원관리</a> <a
                        href="<%=root%>/managementpage/management_stockListPage.jsp"
                        class="dropdown-item">재고관리</a> <a
                        href="<%=root%>/product/product_insertPage.jsp"
                        class="dropdown-item">재고입력</a> <a href="#" class="dropdown-item">게시글관리</a>
                </div>
            </div> --%>
        </div>
    </div>

</nav>


</body>

</html>