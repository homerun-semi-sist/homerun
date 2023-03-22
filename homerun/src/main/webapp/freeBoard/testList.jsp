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
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Vendor CSS Files -->
   <!--  <link href="../assets/detail/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
    <!-- <link href="../assets/detail/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"> -->
    
   <!--  <link href="../assets/detail/vendor/aos/aos.css" rel="stylesheet">
    <link href="../assets/detail/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="../assets/detail/vendor/swiper/swiper-bundle.min.css" rel="stylesheet"> -->

 	<!-- Core CSS -->
	<link rel="stylesheet" href="../assets/board/vendor/css/core_copy2.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../assets/board/vendor/css/theme-default_copy2.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../assets/board/css/demo.css" />

    <!-- Template Main CSS File -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
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
		
		#naavs-top-home, #naavs-top-profile, #naavs-top-messages {
			opacity: 1;
		}
    </style>
    
    <script type="text/javascript">
    	$(function() {

    		/* var val = $("#search :selected").val();
    		alert(val); */
    		//fList();
    		
    		$("#searchBtn").click(function(){
    			var val = $("#search :selected").val();
        		var currentPage = $("#currentPage").val();
        		var str = $("#search_str").val();
        		// alert(val + ", "+ currentPage + ", "+ str);
    		    
    		    $.ajax({
    			
	    			type : "get",
	    			url : "freeBoard_getSearchList.jsp",
	    			dataType : "json",
	    			data : {"val" : val, "str" : str, "currentPage" : currentPage},
	    			success:function(res) {
	    				// alert(val + ", "+ str +", " + res.length);
	    				
	    				var s="";
	    				
	    				s+="<div class='table-responsive text-nowrap'>";
	    				s+="<table class='table'>";
	    				s+="<thead style='background-color: #F8F9FA'>";
	    				s+="<tr>";
	    				s+="<th style='text-align: center; width: 80px;'>No.</th>";
	    				s+="<th style='text-align: center; width: 150px;'>카테고리</th>";
	    				s+="<th style='text-align: center;'>제목</th>";
	    				s+="<th style='text-align: center; width: 200px;'>작성자</th>";
	    				s+="<th style='text-align: center; width: 200px;'>날짜</th>";
	    				s+="<th style='text-align: center; width: 80px;'>조회수</th>";
	    				s+="<th style='text-align: center; width: 80px;'>추천</th>";
	    				s+="<th style='text-align: center; width: 80px;'>비추천</th>";
	    				s+="</tr>";
	    				s+="</thead>";
						s+="<tbody class='table-border-bottom-0'>";
	    				
						if(res.length == 0) {
							s+="<tr>";
							s+="<td colspan='8' align='center' style='font-size: 18pt;'>\"" + str + "\" 검색 결과가 없습니다</td>";
							s+="</tr>";
						} else {
							$.each(res, function(idx, item){
								s+="<tr>";
								s+="<td style='text-align: center;'>" + item.fbNum + "</td>";
								
								if(item.fbCategory == "전체") {   
									s+="<td style='text-align: center; vertical-align:middle;'>";
									s+="<img src='https://cdn.icon-icons.com/icons2/2070/PNG/512/baseball_icon_126956.png' style='width: 30px;'>";
									   s+="</td>";
								} else if(item.fbCategory == "한화") {
									s+="<td style='text-align: center; vertical-align:middle;'>";
									s+="<img src='" + item.teamLogoImg + "' style='width: 50px;'>";
									s+="</td>";
								} else {
									s+="<td style='text-align: center; vertical-align:middle;'>";
									s+="<img src='" + item.teamLogoImg + "' style='width: 40px;'>";
									   s+="</td>";
								}
								
								s+="<td style='vertical-align:middle;'><a href='freePost_detailPage.jsp?fbNum=" + item.fbNum + "&currentPage=" + currentPage + "'>" + item.fbSubject + "</a><span style='color: tomato;'>&nbsp;&nbsp;[" + item.fcCnt + "]</span></td>";
								s+="<td style='text-align: center; vertical-align:middle;'>" + item.nickname + "</td>";
								s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbWriteday + "</td>";
								s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbReadCnt + "</td>";
								s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbLike + "</td>";
								s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbDislike + "</td> ";							
								s+="</tr>"		
							});
						}
						
	    				s+="</tbody>";
	    				s+="</table>";
	    				s+="</div>";
	    				
	    				$("div.fList").html(s);
	    			}
	    		});
    		    
    		});
    		
		})
		
		function fList() {
    		var val = $("#search :selected").val();
    		var currentPage = $("#currentPage").val();
    		//alert(val + ", "+ currentPage);
			
    		$.ajax({
    			
    			type : "get",
    			url : "freeBoard_getList.jsp",
    			dataType : "json",
    			data : {"currentPage" : currentPage}, 
    			success:function(res) {

    				var s="";
    				
    				s+="<div class='table-responsive text-nowrap'>";
    				s+="<table class='table'>";
    				s+="<thead style='background-color: #F8F9FA'>";
    				s+="<tr>";
    				s+="<th style='text-align: center; width: 80px;'>No.</th>";
    				s+="<th style='text-align: center; width: 150px;'>카테고리</th>";
    				s+="<th style='text-align: center;'>제목</th>";
    				s+="<th style='text-align: center; width: 200px;'>작성자</th>";
    				s+="<th style='text-align: center; width: 200px;'>날짜</th>";
    				s+="<th style='text-align: center; width: 80px;'>조회수</th>";
    				s+="<th style='text-align: center; width: 80px;'>추천</th>";
    				s+="<th style='text-align: center; width: 80px;'>비추천</th>";
    				s+="</tr>";
    				s+="</thead>";
					s+="<tbody class='table-border-bottom-0'>";
    				
					if(res.length == 0) {
						s+="<tr>";
						s+="<td colspan='8' align='center' style='font-size: 18pt;'>아직 작성된 게시글이 없습니다</td>";
						s+="</tr>";
					} else {
						$.each(res, function(idx, item){
							s+="<tr>";
							s+="<td style='text-align: center;'>" + item.fbNum + "</td>";
							
							if(item.fbCategory == "전체") {   
								s+="<td style='text-align: center; vertical-align:middle;'>";
								s+="<img src='https://cdn.icon-icons.com/icons2/2070/PNG/512/baseball_icon_126956.png' style='width: 30px;'>";
								   s+="</td>";
							} else if(item.fbCategory == "한화") {
								s+="<td style='text-align: center; vertical-align:middle;'>";
								s+="<img src='" + item.teamLogoImg + "' style='width: 50px;'>";
								s+="</td>";
							} else {
								s+="<td style='text-align: center; vertical-align:middle;'>";
								s+="<img src='" + item.teamLogoImg + "' style='width: 40px;'>";
								   s+="</td>";
							}
							
							s+="<td style='vertical-align:middle;'><a href='freePost_detailPage.jsp?fbNum=" + item.fbNum + "&currentPage=" + currentPage + "'>" + item.fbSubject + "</a><span style='color: tomato;'>&nbsp;&nbsp;[" + item.fcCnt + "]</span></td>";
							s+="<td style='text-align: center; vertical-align:middle;'>" + item.nickname + "</td>";
							s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbWriteday + "</td>";
							s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbReadCnt + "</td>";
							s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbLike + "</td>";
							s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbDislike + "</td> ";							
							s+="</tr>"		
						});
					}
    				s+="</tbody>";
    				s+="</table>";
    				s+="</div>";
    				
    				$("div.fList").html(s);
    			}
    		});
    		
		}
    </script>
</head>

<body>	
	<%
		String loginok = (String)session.getAttribute("loginok");
	
		FreeBoardDao fbDao = new FreeBoardDao();
		
		TeamDao tDao = new TeamDao();
		List<TeamDto> tList = tDao.getAllTeams();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd"); 
		
		FreeCommentDao fcDao = new FreeCommentDao();
		
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
		totalCount = fbDao.getFBTotalCount();

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
		List<FreeBoardDto> fbList = fbDao.getFBList(start, perPage);
		
		no = totalCount - (currentPage - 1) * perPage;		
	%>
	<input type="hidden" id="currentPage" value="<%=currentPage %>">
	
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-naavvvbar">
        <div class="layout-container">

            <!-- Content wrapper -->
            <div class="content-wrapper">
                <!-- Content -->

                <div class="container-xxl flex-grow-1 container-p-y">
                <h3 style="margin-bottom: 30px;">자유게시판</h3>
	            
                <!-- Bootstrap Table with Header - Light -->
                    <div class="card" style="background-color: #fff">
	
					<ul class="naav naav-tabs" role="tablist">
                      <li class="naav-item">
                        <button
                          type="button"
                          class="naav-link active"
                          role="tab"
                          data-bs-toggle="tab"
                          data-bs-target="#naavs-top-home"
                          aria-controls="naavs-top-home"
                          aria-selected="true"
                        >
                          Home
                        </button>
                      </li>
                      <li class="naav-item">
                        <button
                          type="button"
                          class="naav-link"
                          role="tab"
                          data-bs-toggle="tab"
                          data-bs-target="#naavs-top-profile"
                          aria-controls="naavs-top-profile"
                          aria-selected="false"
                        >
                          Profile
                        </button>
                      </li>
                      <li class="naav-item">
                        <button
                          type="button"
                          class="naav-link"
                          role="tab"
                          data-bs-toggle="tab"
                          data-bs-target="#naavs-top-messages"
                          aria-controls="naavs-top-messages"
                          aria-selected="false"
                        >
                          Messages
                        </button>
                      </li>
                    </ul>
                    <div class="tab-content">
                      <div class="tab-pane fade show active" id="naavs-top-home" role="tabpanel">
                        <!-- <div class="fList"></div> -->
                      </div>
                      <div class="tab-pane fade" id="naavs-top-profile" role="tabpanel">
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
                      <div class="tab-pane fade" id="naavs-top-messages" role="tabpanel">
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
									
						
						
                        <div class="bBottom" style="margin-top: 30px;">
                            <div class="bsBox">
                                <div class="bSelect">
									<select id="search" class="form-control" style="width: 100px; height: 40px; text-align: center;">
										<option value="nickname" selected="selected">작성자</option>
										<option value="subject">제목</option>
										<option value="content">내용</option>
									</select>
								</div>
                                <div class="bSearch">
									<input type="text" id="search_str" class="form-control"
											required="required" style="width: 200px; height: 40px;">
								</div>
								<button type="button" class="btn btn-default" id="searchBtn" style="margin-left: 5px;">검색</button>
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
										<a href="freeBoard_listPage.jsp?currentPage=<%=startPage-1 %>">이전</a>
									</li>
								<%
									}
									
									for(int pp = startPage; pp <= endPage; pp++) {
										if(pp == currentPage) {
								%>
											<li class="active">
												<a href="freeBoard_listPage.jsp?currentPage=<%=pp %>"><%=pp %></a>
											</li>
								<%
										} else {
								%>
											<li>
												<a href="freeBoard_listPage.jsp?currentPage=<%=pp %>"><%=pp %></a>
											</li>
								<%
										}
									}
									
									// 다음
									if(endPage < totalPage) {
								%>
										<li>
											<a href="freeBoard_listPage.jsp?currentPage=<%=endPage+1 %>">다음</a>
										</li>
								<%
									}
								%>
							</ul>
						</div>
                       
                    </div>
                </div>
                <!-- Bootstrap Table with Header - Light -->
            </div>
            <!-- / Content -->
        </div>
        <!-- Content wrapper -->
    </div>
    <!-- / Layout page -->

	<script type="text/javascript">
			
		$("#insertBtn").click(function() {
			var login = '<%=loginok %>';
			
			// alert(login);
			if(login == "yes") {
				location.href="freePost_insertPage.jsp"
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