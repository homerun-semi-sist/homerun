<%@page import="data.dto.TeamDto"%>
<%@page import="data.dto.FreeCommentDto"%>
<%@page import="data.dao.FreeCommentDao"%>
<%@page import="data.dto.UserDto"%>
<%@page import="data.dao.UserDao"%>
<%@page import="data.dao.TeamDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="data.dto.FreeBoardDto"%>
<%@page import="data.dao.FreeBoardDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr" data-theme="theme-default" data-assets-path="../assets/"
    data-template="vertical-menu-template-free">

<head>
    <meta charset="utf-8" />
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>자유게시판 목록</title>
	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Vendor CSS Files -->
    <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- <link href="../assets/detail/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"> -->
    
    <link href="../assets/detail/vendor/aos/aos.css" rel="stylesheet">
    <link href="../assets/detail/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="../assets/detail/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

 	<!-- Core CSS -->
	<link rel="stylesheet" href="../assets/board/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../assets/board/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../assets/board/css/demo.css" />
    
    <script src="https://kit.fontawesome.com/8dcaa4675e.js" crossorigin="anonymous"></script>
    <style>
        .bBottom {
            border: 0px solid gray;
            height: 35px;
            display: flex;
            margin: 10px;
            line-height: 35px;
        }

        .bsBox {
            border: 0px solid gray;
            display: flex;
            width: 500px;
            text-align: center;
            margin-left: 10px;
        }

        .bSelect {
            border: 0px solid gray;
            margin-right: 5px;
        }

        .bSearch {
            border: 0px solid gray;
            
        }

        .bInsert {
            border: 0px solid gray;
            width: 100px;
            text-align: center;
            margin-left: auto;
        }

        a {
            text-decoration: none;
            color: black;
        }
        
        #insertBtn, #searchBtn {
        	border-radius: 4px;
			padding: 10px 20px;
			border: 1px solid #0b214e;
			background-color: #0b214e;
		  	color: #F8F9FA;
		  	width: 80px; 
		  	height: 40px; 
		  	line-height: 20px;
        }
        
        
        #insertBtn:hover, #searchBtn:hover {
		 	color: #0b214e;
		  	background-color: #f8f9fa;
		}
    </style>
    
</head>

<body>	
	
	<div class="nav-align-top mb-4">
        <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
                <button type="button" class="nav-link active" role="tab" data-bs-toggle="tab"
                    data-bs-target="#navs-top-home" aria-controls="navs-top-home" aria-selected="true">
                    Home
                </button>
            </li>
            <li class="nav-item">
                <button type="button" class="nav-link" role="tab" data-bs-toggle="tab"
                    data-bs-target="#navs-top-profile" aria-controls="navs-top-profile" aria-selected="false">
                    Profile
                </button>
            </li>
            <li class="nav-item">
                <button type="button" class="nav-link" role="tab" data-bs-toggle="tab"
                    data-bs-target="#navs-top-messages" aria-controls="navs-top-messages" aria-selected="false">
                    Messages
                </button>
            </li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane fade show active" id="navs-top-home" role="tabpanel">
                <p>
                    Icing pastry pudding oat cake. Lemon drops cotton candy caramels cake caramels sesame snaps
                    powder. Bear claw candy topping.
                </p>
                <p class="mb-0">
                    Tootsie roll fruitcake cookie. Dessert topping pie. Jujubes wafer carrot cake jelly. Bonbon
                    jelly-o jelly-o ice cream jelly beans candy canes cake bonbon. Cookie jelly beans marshmallow
                    jujubes sweet.
                </p>
            </div>
            <div class="tab-pane fade" id="navs-top-profile" role="tabpanel">
                <p>
                    Donut dragée jelly pie halvah. Danish gingerbread bonbon cookie wafer candy oat cake ice
                    cream. Gummies halvah tootsie roll muffin biscuit icing dessert gingerbread. Pastry ice cream
                    cheesecake fruitcake.
                </p>
                <p class="mb-0">
                    Jelly-o jelly beans icing pastry cake cake lemon drops. Muffin muffin pie tiramisu halvah
                    cotton candy liquorice caramels.
                </p>
            </div>
            <div class="tab-pane fade" id="navs-top-messages" role="tabpanel">
                <p>
                    Oat cake chupa chups dragée donut toffee. Sweet cotton candy jelly beans macaroon gummies
                    cupcake gummi bears cake chocolate.
                </p>
                <p class="mb-0">
                    Cake chocolate bar cotton candy apple pie tootsie roll ice cream apple pie brownie cake. Sweet
                    roll icing sesame snaps caramels danish toffee. Brownie biscuit dessert dessert. Pudding jelly
                    jelly-o tart brownie jelly.
                </p>
            </div>
        </div>
    </div>


	<!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="../assets/board/vendor/libs/jquery/jquery.js"></script>
    <script src="../assets/board/vendor/libs/popper/popper.js"></script>
    <script src="../assets/board/vendor/js/bootstrap.js"></script>
    <script src="../assets/board/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="../assets/board/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="../assets/board/js/main.js"></script>

    <!-- Page JS -->

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
</body>

</html>