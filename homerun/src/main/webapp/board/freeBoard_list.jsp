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

    <meta name="description" content="" />

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
            border: 0px solid gray;
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
	<%
		FreeBoardDao fbDao = new FreeBoardDao();
		List<FreeBoardDto> list = fbDao.getAllFBs();
		
		TeamDao tDao = new TeamDao();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd"); 
	%>

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
                                
                                <%                                	
                                	for(FreeBoardDto fbDto : list) {
                                %>
                                
                                <!-- 
                                	카테고리 : 전체 -> 야구공 png
                                	야구공 png -> https://cdn.icon-icons.com/icons2/2070/PNG/512/baseball_icon_126956.png
                                	야구공 크기만 25px
                                 -->
                                
                                	<tr>
                                        <td style="text-align: center;"><%=fbDto.getFbNum() %></td>
                                        <!-- 
                                        카테고리 전체
                                        <td style="text-align: center;"><img
                                                src="https://cdn.icon-icons.com/icons2/2070/PNG/512/baseball_icon_126956.png"
                                                style="width: 25px;">
                                        </td>
                                        -->
                                        
                                        <%
                                        	// 카테고리 : 전체 -> 야구공 png
                                        	if(fbDto.getFbCategory().equals("전체")) {                                       		
                                        %>
                                        		<td style="text-align: center;"><img
	                                                src="https://cdn.icon-icons.com/icons2/2070/PNG/512/baseball_icon_126956.png"
	                                                style="width: 30px;">
                                        		</td>
                                        	
                                        <%
                                        	} else if(fbDto.getFbCategory().equals("한화")) {
                                        %>
                                        		<td style="text-align: center;">
                                        		<img
	                                                src="<%=tDao.getTeam(fbDto.getFbCategory()).getTeamLogo() %>"
	                                                    style="width: 50px;">
                                        		</td>
                                        <%		
                                        	}
                                        	
                                        	else {
                                        %>
                                        		<td style="text-align: center;">
	                                        		<img
	                                                	src="<%=tDao.getTeam(fbDto.getFbCategory()).getTeamLogo() %>"
	                                                    style="width: 40px;">
                                        		</td>
                                        <%
                                        	}
                                     
                                        %>
                                    	<td><a href="freePost_detail.jsp?fbNum=<%=fbDto.getFbNum() %>"><%=fbDto.getFbSubject() %></a></td>
                                        <td style="text-align: center;"><%=fbDto.getNickname() %></td>
                                        <td style="text-align: center;"><%=sdf.format(fbDto.getFbWriteday()) %></td>
                                        <td style="text-align: center;"><%=fbDto.getFbReadCnt() %></td>
                                        <td style="text-align: center;"><%=fbDto.getFbLike() %></td>
                                        <td style="text-align: center;"><%=fbDto.getFbDislike() %></td>
                                    </tr>
                         
                                <%
                                	}
                                %>
                              
                                </tbody>
                            </table>
                        </div>

                        <div class="bBottom">
                            <div class="bsBox">
                                <div class="bSelect">select</div>
                                <div class="bSearch">검색창</div>
                            </div>
                            <div class="bInsert">
								<button type="button" class="btn btn-default" style="border: 1px solid gray;" onclick="location.href='freeBoard_insert.jsp'">글쓰기</button>
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