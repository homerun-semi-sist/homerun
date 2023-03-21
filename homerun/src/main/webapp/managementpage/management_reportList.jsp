<%@page import="java.text.NumberFormat"%>
<%@page import="data.dao.ProductDao"%>
<%@page import="data.dto.ProductDto"%>
<%@page import="data.dao.TeamDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="data.dto.FreeBoardDto"%>
<%@page import="data.dao.FreeBoardDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="../assets/"
	data-template="vertical-menu-template-free">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>관리자페이지_ 재고목록</title>

<meta name="description" content="" />

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="../assets/board/img/favicon/favicon.ico" />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />

<!-- Icons. Uncomment required icon fonts -->
<link rel="stylesheet" href="../assets/board/vendor/fonts/boxicons.css" />

<!-- Core CSS -->
<link rel="stylesheet" href="../assets/board/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet"
	href="../assets/board/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet" href="../assets/board/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="../assets/board/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

<!-- Page CSS -->

<!-- Helpers -->
<script src="../assets/board/vendor/js/helpers.js"></script>

<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="../assets/board/js/config.js"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>



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

a {
	text-decoration: none;
	color: black;
}
</style>
</head>
<script>
$(function(){
	fList();
})

function fList() {
    		//var val = $("#search :selected").val();
    		//var currentPage = $("#currentPage").val();
    		//alert(val + ", "+ currentPage);
			var list = $("#list").val();
    		$.ajax({
    			
    			type : "get",
    			url : "getListTest.jsp",
    			dataType : "json",
    			data : {"list" : list},
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
							
							s+="<td style='vertical-align:middle;'><a href='freePost_detailPage.jsp?fbNum=" + item.fbNum + "&currentPage='>" + item.fbSubject + "</a><span style='color: tomato;'>&nbsp;&nbsp;[" + item.fcCnt + "]</span></td>";
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
<body>

<%
int totalCount; //총 개수
int totalPage; //총 페이지수
int startPage; //각 블럭(1,2,3..)의 시작페이지
int endPage; //각 블럭의 마지막 페이지
int start; //각 페이지의 시작번호
int perPage = 10; //한 페이지당 보여질 글 개수
int perBlock = 5; //한 블럭당 보여지는 페이지 개수
int currentPage; //현재페이지

int no;

FreeBoardDao dao = new FreeBoardDao();

totalCount = dao.getFBTotalCount();

//현재 페이지 번호 읽기(null일때는 1페이지로 설정)
if (request.getParameter("currentPage") == null)
	currentPage = 1;
else
	currentPage = Integer.parseInt(request.getParameter("currentPage"));

//총 페이지 개수
totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);

//각 블럭의 시작페이지 -> 현재페이지가 3 -> s:1, e:5 / 6 -> s:6, e:10
startPage = (currentPage - 1) / perBlock * perBlock + 1;
endPage = startPage + perBlock - 1;

//총 페이지가 8이면 (6~10 -> end페이지를 8로 수정)
if (endPage > totalPage)
	endPage = totalPage;

//각페이지에서 불러올 시작번호
start = (currentPage - 1) * perPage;

//메서드 불러오기
List<FreeBoardDto> list = dao.getFBList(start, perPage);
%>

<input type="hidden" id="list" value="<%=list %>">
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">

			<!-- Content wrapper -->
			<div class="content-wrapper">
				<!-- Content -->

				<div class="flex-grow-1 container-p-y">
					<!-- Bootstrap Table with Header - Light -->
					<div class="card">
						<h3 class="card-header">
							<b>재고목록</b>
						</h3>
						<div class="fList"></div>

						<div class="bBottom">
							<div class="bsBox">
								<div class="bSelect">select</div>
								<div class="bSearch">검색창</div>
							</div>
						</div>
						<div style="width: 500px; text-align: center;" class="container">
							<ul class="pagination">
								<%
								//이전
								if (startPage > 1) {
								%>
								<li><a href="management_stockListPage.jsp?currentPage=<%=startPage - 1%>">이전</a></li>
								<%
								}
								for (int pp = startPage; pp <= endPage; pp++) {
								if (pp == currentPage) {
								%>
								<li class="active"><a
									href="management_stockListPage.jsp?currentPage=<%=pp%>"><%=pp%></a></li>
								<%
								} else {
								%>

								<li><a href="management_stockListPage.jsp?currentPage=<%=pp%>"><%=pp%></a></li>
								<%
								}
								}
								//다음
								if (endPage < totalPage) {
								%>
								<li><a href="management_stockListPage.jsp?currentPage=<%=endPage + 1%>">다음</a></li>
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

	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script src="../assets/board/vendor/libs/jquery/jquery.js"></script>
	<script src="../assets/board/vendor/libs/popper/popper.js"></script>
	<script src="../assets/board/vendor/js/bootstrap.js"></script>
	<script
		src="../assets/board/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

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