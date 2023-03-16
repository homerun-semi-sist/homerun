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

    <title>관리자 페이지 게시글 신고 목록</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../assets/board/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
        rel="stylesheet" />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="../assets/board/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="../assets/board/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../assets/board/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../assets/board/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../assets/board/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="../assets/board/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../assets/board/js/config.js"></script>


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
            width: 250px;
            text-align: center;
            margin-left: 10px;
        }

        .bSelect {
            border: 1px solid gray;
            width: 80px;
            margin-right: 5px;
        }

        .bSearch {
            border: 1px solid gray;
            width: 170px;
        }

        .bInsert {
            border: 1px solid gray;
            width: 100px;
            text-align: center;
            margin-left: auto;
        }

        .bPaging {
            border: 1px solid gray;
            width: 300px;
            height: 35px;
            margin: auto;
            margin-bottom: 10px;
            line-height: 35px;
            text-align: center;
        }

        a {
            text-decoration: none;
            color: black;
        }
    </style>
</head>

<body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
        <div class="layout-container">

            <!-- Content wrapper -->
            <div class="content-wrapper">
                <!-- Content -->

                <div class="container-xxl flex-grow-1 container-p-y">
                    <!-- Bootstrap Table with Header - Light -->
                    <div class="card">
                        <h5 class="card-header">관리자 페이지 게시글 신고 목록</h5>
                        <div class="table-responsive text-nowrap">
                            <table class="table">
                                <thead class="table-light">
                                    <tr>
                                        <th style="text-align: center; width: 80px;">No.</th>
                                        <th style="text-align: center; width: 120px;">게시판</th>
                                        <th style="text-align: center;">제목</th>
                                        <th style="text-align: center;  width: 200px;">작성자</th>
                                        <th style="text-align: center;  width: 200px;">날짜</th>
                                        <th style="text-align: center; width: 80px;">신고 누적수</th>
                                        <th style="text-align: center; width: 80px;">관리</th>
                                    </tr>
                                </thead>
                                <tbody class="table-border-bottom-0">
                                    <tr>
                                        <td style="text-align: center;">1</td>
                                        <td style="text-align: center;">자유</td>
                                        <td><a href="post_detail.html">제목1</a></td>
                                        <td style=" text-align: center;">작성자1</td>
                                        <td style="text-align: center;">2023-03-11 11:23</td>
                                        <td style="text-align: center;">5</td>
                                        <td style="text-align: center;">
                                            <div class=" dropdown">
                                                <button type="button" class="btn p-0 dropdown-toggle hide-arrow"
                                                    data-bs-toggle="dropdown">
                                                    <i class="bx bx-dots-vertical-rounded"></i>
                                                </button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="javascript:void(0);"><i
                                                            class="bx bx-edit-alt me-1"></i>Reupload</a>
                                                    <a class="dropdown-item" href="javascript:void(0);"><i
                                                            class="bx bx-trash me-1"></i> Delete</a>
                                                    <a class="dropdown-item" href="javascript:void(0);"><i
                                                            class="bx bx-bomb me-1"></i> Warning</a>
                                                    <a class="dropdown-item" href="javascript:void(0);"><i
                                                            class="bx bx-user-minus me-1"></i> Withdrawal</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">2</td>
                                        <td style="text-align: center;">후기</td>
                                        <td><a href="post_detail.html">제목2</a></td>
                                        <td style=" text-align: center;">작성자2</td>
                                        <td style="text-align: center;">2023-03-10 11:23</td>
                                        <td style="text-align: center;">10</td>
                                        <td style="text-align: center;">
                                            <div class="dropdown">
                                                <button type="button" class="btn p-0 dropdown-toggle hide-arrow"
                                                    data-bs-toggle="dropdown">
                                                    <i class="bx bx-dots-vertical-rounded"></i>
                                                </button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="javascript:void(0);"><i
                                                            class="bx bx-edit-alt me-1"></i>Reupload</a>
                                                    <a class="dropdown-item" href="javascript:void(0);"><i
                                                            class="bx bx-trash me-1"></i> Delete</a>
                                                    <a class="dropdown-item" href="javascript:void(0);"><i
                                                            class="bx bx-bomb me-1"></i> Warning</a>
                                                    <a class="dropdown-item" href="javascript:void(0);"><i
                                                            class="bx bx-user-minus me-1"></i> Withdrawal</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">3</td>
                                        <td style="text-align: center;">자유</td>
                                        <td><a href="post_detail.html">제목3</a></td>
                                        <td style=" text-align: center;">작성자3</td>
                                        <td style="text-align: center;">2023-03-09 11:23</td>
                                        <td style="text-align: center;">43</td>
                                        <td style="text-align: center;">
                                            <div class="dropdown">
                                                <button type="button" class="btn p-0 dropdown-toggle hide-arrow"
                                                    data-bs-toggle="dropdown">
                                                    <i class="bx bx-dots-vertical-rounded"></i>
                                                </button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="javascript:void(0);"><i
                                                            class="bx bx-edit-alt me-1"></i>Reupload</a>
                                                    <a class="dropdown-item" href="javascript:void(0);"><i
                                                            class="bx bx-trash me-1"></i> Delete</a>
                                                    <a class="dropdown-item" href="javascript:void(0);"><i
                                                            class="bx bx-bomb me-1"></i> Warning</a>
                                                    <a class="dropdown-item" href="javascript:void(0);"><i
                                                            class="bx bx-user-minus me-1"></i> Withdrawal</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="bBottom">
                            <div class="bsBox">
                                <div class="bSelect">select</div>
                                <div class="bSearch">검색창</div>
                            </div>
                        </div>
                        <div class="bPaging">페이징 처리</div>
                    </div>
                </div>
                <!-- Bootstrap Table with Header - Light -->
            </div>
            <!-- / Content -->
        </div>
        <!-- Content wrapper -->
    </div>
    <!-- / Layout page -->

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