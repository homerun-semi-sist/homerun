
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

    <meta name="description" content="" />
<!-- 
    Google Web Fonts
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Poppins:wght@600;700&display=swap"
        rel="stylesheet" /> -->
<!-- 
    Icons. Uncomment required icon fonts
    <link rel="stylesheet" href="../assets/board/vendor/fonts/boxicons.css" />
 -->
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
                        <h5 class="card-header">자유게시판 목록</h5>
                        <div class="table-responsive text-nowrap">
                            <table class="table">
                                <thead class="table-light">
                                    <tr>
                                        <th style="text-align: center; width: 80px;">No.</th>
                                        <th style="text-align: center; width: 150px;">카테고리</th>
                                        <th style="text-align: center;">제목</th>
                                        <th style="text-align: center;  width: 200px;">작성자</th>
                                        <th style="text-align: center;  width: 200px;">날짜</th>
                                        <th style="text-align: center; width: 80px;">조회수</th>
                                        <th style="text-align: center; width: 80px;">추천</th>
                                        <th style="text-align: center; width: 80px;">비추천</th>
                                    </tr>
                                </thead>
                                <tbody class="table-border-bottom-0">
                                    <tr>
                                        <td style="text-align: center;">1</td>
                                        <td style="text-align: center;">전체</td>
                                        <td><a href="post_detail.html">제목1</a></td>
                                        <td style=" text-align: center;">작성자1</td>
                                        <td style="text-align: center;">2023-03-11 11:23</td>
                                        <td style="text-align: center;">0</td>
                                        <td style="text-align: center;">0</td>
                                        <td style="text-align: center;">0</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">2</td>
                                        <td style="text-align: center; color: #570514;">키움</td>
                                        <td><a href="post_detail.html">제목2</a></td>
                                        <td style=" text-align: center;">작성자2</td>
                                        <td style="text-align: center;">2023-03-10 11:23</td>
                                        <td style="text-align: center;">10</td>
                                        <td style="text-align: center;">3</td>
                                        <td style="text-align: center;">0</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">3</td>
                                        <td style="text-align: center; color: #EA0029;">기아</td>
                                        <td><a href="post_detail.html">제목3</a></td>
                                        <td style=" text-align: center;">작성자3</td>
                                        <td style="text-align: center;">2023-03-09 11:23</td>
                                        <td style="text-align: center;">43</td>
                                        <td style="text-align: center;">20</td>
                                        <td style="text-align: center;">7</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">3</td>
                                        <td style="text-align: center;"><img
                                                src="https://upload.wikimedia.org/wikipedia/ko/7/7b/Kt_%EC%9C%84%EC%A6%88_%EB%A1%9C%EA%B3%A0.png"
                                                style="width: 30px;">
                                        </td>
                                        <td><a href="post_detail.html">제목3</a></td>
                                        <td style=" text-align: center;">작성자3</td>
                                        <td style="text-align: center;">2023-03-09 11:23</td>
                                        <td style="text-align: center;">43</td>
                                        <td style="text-align: center;">20</td>
                                        <td style="text-align: center;">7</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">3</td>
                                        <td style="text-align: center;"><img
                                                src="https://upload.wikimedia.org/wikipedia/ko/7/7b/Kt_%EC%9C%84%EC%A6%88_%EB%A1%9C%EA%B3%A0.png"
                                                style="width: 30px;">
                                        </td>
                                        <td><a href="post_detail.html">제목3</a></td>
                                        <td style=" text-align: center;">작성자3</td>
                                        <td style="text-align: center;">2023-03-09 11:23</td>
                                        <td style="text-align: center;">43</td>
                                        <td style="text-align: center;">20</td>
                                        <td style="text-align: center;">7</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="bBottom">
                            <div class="bsBox">
                                <div class="bSelect">select</div>
                                <div class="bSearch">검색창</div>
                            </div>
                            <div class="bInsert">글쓰기</div>
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
    <script src="../assets/vendor/libs/jquery/jquery.js"></script>
    <script src="../assets/vendor/libs/popper/popper.js"></script>
    <script src="../assets/vendor/js/bootstrap.js"></script>
    <script src="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="../assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="../assets/js/main.js"></script>

    <!-- Page JS -->

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
</body>

</html>