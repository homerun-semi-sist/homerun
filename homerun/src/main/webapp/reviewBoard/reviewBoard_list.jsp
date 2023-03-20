<%@page import="data.dao.ReviewCommentDao"%>
<%@page import="data.dao.UserDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.TeamDto"%>
<%@page import="data.dao.TeamDao"%>
<%@page import="data.dto.ReviewBoardDto"%>
<%@page import="data.dao.ReviewBoardDao"%>
<%@page import="data.dto.GameDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.GameDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr" data-theme="theme-default" data-assets-path="../assets/"
    data-template="vertical-menu-template-free">

<head>
    <meta charset="utf-8" />
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>후기게시판 목록</title>

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
        
        #insertBtn {
        	border-radius: 4px;
			padding: 10px 20px;
			border: 1px solid #0b214e;
			background-color: #0b214e;
		  	color: #F8F9FA;
		  	width: 80px; 
		  	height: 40px; 
		  	line-height: 20px;
        }
        
        
        #insertBtn:hover {
		 	color: #0b214e;
		  	background-color: #f8f9fa;
		}
    </style>
</head>

<body>
<%	
	String loginok = (String)session.getAttribute("loginok");

	ReviewBoardDao rbDao = new ReviewBoardDao();
	
	TeamDao tDao = new TeamDao();
	
	SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd"); 
	
	ReviewCommentDao rcDao = new ReviewCommentDao();
	
	// 페이징 처리		
	int totalCount;
	int totalPage;      // 총 페이지 수 
	int startPage;      // 각 블럭의 시작 페이지
	int endPage;        // 각 블럭의 마지막 페이지
	int start;          // 각 페이지의 시작 번호 
	int perPage = 15;    // 한 페이지에 보여질 글의 개수
	int perBlock = 5;   // 한 블럭당 보여지는 페이지 개수
	int currentPage;    // 현재 페이지
	int no;
	
	// 총 개수 
	totalCount = rbDao.getRBTotalCount();

	// 현재 페이지 번호 읽기, null일 때는 1페이지로
	if(request.getParameter("currentPage") == null)
		currentPage = 1;
	else
		currentPage = Integer.parseInt(request.getParameter("currentPage"));

	// 총 페이지 개수
	totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
	  
	// 각 블럭의 시작 페이지 ex) 현재 페이지가 3일 때(start:1, end:5), 6일 때(start:6, end:10)
	startPage = (currentPage - 1) / perBlock * perBlock + 1;
	endPage = startPage + perBlock - 1;
	    
	// 총 페이지가 8일 때(6 ~ 10 -> endPage를 8로 수정해주어야 함)
	if(endPage > totalPage)
		endPage = totalPage;

	// 각 페이지에서 불러올 시작 번호
	start = (currentPage - 1) * perPage;

	// 각 페이지에서 필요한 게시글 가져오기
	List<ReviewBoardDto> rbList = rbDao.getRBList(start, perPage);
	
	no = totalCount - (currentPage - 1) * perPage;
%>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
        <div class="layout-container">

            <!-- Content wrapper -->
            <div class="content-wrapper">
                <!-- Content -->

                <div class="container-xxl flex-grow-1 container-p-y">
                <h3 style="margin-bottom: 30px;">후기게시판</h3>
                    <!-- Bootstrap Table with Header - Light -->
                    <div class="card" style="background-color: #fff">
                                      
                        <div class="table-responsive text-nowrap" style="width: 100%">
                            <table class="table">
                                <thead class="table">
                                <thead style="background-color: #F8F9FA">
                                    <tr>
                                        <th style="text-align: center; width: 40px;">No.</th>
                                        <th style="text-align: center; width: 100px;">경기일</th>
                                        <th style="text-align: center; width: 200px;">경기팀</th>
                                        <th style="text-align: center;">제목</th>
                                        <th style="text-align: center; width: 100px;">작성자</th>
                                        <th style="text-align: center; width: 100px;">날짜</th>
                                        <th style="text-align: center; width: 40px;">조회수</th>
                                        <th style="text-align: center; width: 40px;">추천</th>
                                        <th style="text-align: center; width: 40px;">비추천</th>
                                    </tr>
                                </thead>
                                <tbody class="table-border-bottom-0">
                                    
                                <%                                	
                                	for(ReviewBoardDto rbDto : rbList) {
                                		GameDao gDao = new GameDao();
                                		GameDto gDto = gDao.getGame(rbDto.getgId());
                                		
                                		UserDao uDao = new UserDao();
                                		String nickname = uDao.getUser(rbDto.getUId()).getNickname();
                                		
                                		String year = gDto.getgDay().substring(2, 4);
                                		String month = gDto.getgDay().substring(5, 7);
                                		String day = gDto.getgDay().substring(8, 10);
                                		
                                		int rcCnt = rcDao.getAllRCs(rbDto.getRbNum()).size();
                                %>
                   
                                     <tr>
                                        <td style="text-align: center; vertical-align:middle;"><%=rbDto.getRbNum() %></td>
                                        <td style="text-align: center; vertical-align:middle;"><%=year %>.<%=month %>.<%=day %></td>
                                        <td style="text-align: center; vertical-align:middle;">
                                        
                                        
                                        <%
                                        	if(gDto.getHome().equals("한화")) {	
                                        %>
                                        		<img src="<%=tDao.getTeam(gDto.getHome()).getTeamLogo() %>" style="width: 50px; vertical-align:middle;">
                                        		vs&nbsp;
                                            	<img src="<%=tDao.getTeam(gDto.getAway()).getTeamLogo() %>" style="width: 40px; vertical-align:middle;">      
                                        <%		
                                        	} else if(gDto.getAway().equals("한화")) {
                                        %>
                                        		<img src="<%=tDao.getTeam(gDto.getHome()).getTeamLogo() %>" style="width: 40px; vertical-align:middle;">
                                        		&nbsp;vs
                                            	<img src="<%=tDao.getTeam(gDto.getAway()).getTeamLogo() %>" style="width: 50px; vertical-align:middle;"> 
                                        <%			
                                        	} else {
                                        %>
                                        		<img src="<%=tDao.getTeam(gDto.getHome()).getTeamLogo() %>" style="width: 40px; vertical-align:middle;">
                                        		&nbsp;vs&nbsp;
                                            	<img src="<%=tDao.getTeam(gDto.getAway()).getTeamLogo() %>" style="width: 40px; vertical-align:middle;"> 
                                        <%
                                        	}
                                        %>                                      
                                        </td>
                                        <td style="vertical-align:middle;"><a href="reviewPost_detailPage.jsp?rbNum=<%=rbDto.getRbNum() %>&currentPage=<%=currentPage%>"><%=rbDto.getRbSubject() %></a><span style="color: tomato;">&nbsp;&nbsp;[<%=rcCnt %>]</span></td>
                                        <td style="text-align: center; vertical-align:middle;"><%=nickname %></td>
                                        <td style="text-align: center; vertical-align:middle;"><%=sdf.format(rbDto.getRbWriteday()) %></td>
                                        <td style="text-align: center; vertical-align:middle;"><%=rbDto.getRbReadCnt() %></td>
                                        <td style="text-align: center; vertical-align:middle;"><%=rbDto.getRbLike() %></td>
                                        <td style="text-align: center; vertical-align:middle;"><%=rbDto.getRbDislike() %></td>
                                    </tr>
                                <%
                                	}
                                %>
                                   
                                </tbody>
                            </table>
                        </div>
                        <div class="bBottom" style="margin-top: 30px;">
                            <div class="bsBox">
                                <div class="bSelect">select</div>
                                <div class="bSearch">검색창</div>
                            </div>
                            <div class="bInsert">
								<button type="button" class="btn btn-default" id="insertBtn">글쓰기</button>
							</div>
                        </div>
                        <!-- 페이징 처리 -->
							<div style="width: 500px; text-align: center;" class="container">
								<ul class="pagination">
									<% 
										// 이전
										if(startPage > 1) {
									%>
										<li>
											<a href="reviewBoard_listPage.jsp?currentPage=<%=startPage-1 %>">이전</a>
										</li>
									<%
										}
										
										for(int pp = startPage; pp <= endPage; pp++) {
											if(pp == currentPage) {
									%>
												<li class="active">
													<a href="reviewBoard_listPage.jsp?currentPage=<%=pp %>"><%=pp %></a>
												</li>
									<%
											} else {
									%>
												<li>
													<a href="reviewBoard_listPage.jsp?currentPage=<%=pp %>"><%=pp %></a>
												</li>
									<%
											}
										}
										
										// 다음
										if(endPage < totalPage) {
									%>
											<li>
												<a href="reviewBoard_listPage.jsp?currentPage=<%=endPage+1 %>">다음</a>
											</li>
									<%
										}
									%>
								</ul>
							</div>
                    </div>
                    <!-- Bootstrap Table with Header - Light -->

                </div>
                <!-- / Content -->
            </div>
            <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
    </div>

	<script type="text/javascript">
		
		$("#insertBtn").click(function() {
			var login = '<%=loginok %>';
			
			// alert(login);
			if(login == "yes") {
				location.href="reviewPost_insertPage.jsp"
			} else 
				alert("로그인 후 이용 가능합니다");
			
		});
		
	</script>

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