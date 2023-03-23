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
<%
String mainPage = "../layout/main.jsp";

if (request.getParameter("main") != null) {
	mainPage = request.getParameter("main");
}
String root = request.getContextPath();

int totalCount; //총 개수
int totalPage; //총 페이지수
int startPage; //각 블럭(1,2,3..)의 시작페이지
int endPage; //각 블럭의 마지막 페이지
int start; //각 페이지의 시작번호
int perPage = 10; //한 페이지당 보여질 글 개수
int perBlock = 5; //한 블럭당 보여지는 페이지 개수
int currentPage; //현재페이지

int no;

ProductDao dao = new ProductDao();

totalCount = dao.getTotalCount();

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


%>
<script>
$(function(){
	list();
	
	$("#searchBtn").click(function(){
		var val = $("#search :selected").val();
		var currentPage=$("#currentPage").val();
		var str = $("#search_str").val();
		
		//alert(val+" "+currentPage+" "+str);
		
	    $.ajax({
		
			type : "get",
			url : "management_getSearchStockList.jsp",
			dataType : "json",
			data : {"val" : val, "str" : str,"currentPage":currentPage},
			success:function(res) {
				//alert(val + ", "+ str +", " + res.length);
				
				var s="";
				
				s+="<div class='text-nowrap'>";
				s+="<table class='table'>";
				s+="<thead style='background-color: #F8F9FA'>";
				s+="<tr>";
				s+="<th style='text-align: center; width: 70px;'>상품ID</th>";
				s+="<th style='text-align: center; width: 150px;'>상품명</th>";
				s+="<th style='text-align: center; width: 120px;'>팀</th>";
				s+="<th style='text-align: center; width: 80px;'>카테고리</th>";
				s+="<th style='text-align: center; width: 100px;'>재고수(SKU)</th>";
				s+="<th style='text-align: center; width: 120px;'>가격</th>";
				s+="<th style='text-align: center; width: 150px;'>관리</th>";
				s+="</tr>";
				s+="</thead>";
				s+="<tbody class='table-border-bottom-0'>";
				
				if(res.length == 0) {
					s+="<tr>";
					s+="<td colspan='7' align='center' style='font-size: 18pt;'>\"" + str + "\" 검색 결과가 없습니다</td>";
					s+="</tr>";
				} else {
					$.each(res, function(idx, item){
						s+="<tr>";
						s+="<td style='text-align: center;'>" + item.pId + "</td>";
						s+="<td style='text-align: center;'><a href='../product/product_detailPage.jsp?pId="+item.pId+"' style='text-decoration: none;color: black;'><b>"+item.pName+"</b></a></td>";
						s+="<td style='text-align: center;'>" + item.teamName + "</td>";
						s+="<td style='text-align: center;'>" + item.pCategory + "</td>";
						s+="<td style='text-align: center;'>" + item.pStock + "</td>";
						s+="<td style='text-align: center;'>" + item.price + "</td>";
						s+="<td style='text-align: center;'><div class='dropdown'><button type='button' class='btn p-0 dropdown-toggle hide-arrow' data-bs-toggle='dropdown'><i class='bx bx-dots-vertical-rounded'></i></button>";
						s+="<div class='dropdown-menu'><a class='dropdown-item' href='../product/product_updatePage.jsp?pId="+item.pId+"'><i class='bx bx-edit-alt me-1'></i>Update</a>";
						s+="<a class='dropdown-item' href='../product/product_delete.jsp?pId="+item.pId+"'><i class='bx bx-trash me-1'></i> Delete</a>";
						s+="</div></div></td>"
						s+="</tr>"		
					});
				}
				
				s+="</tbody>";
				s+="</table>";
				s+="</div>";
				
				$("div.sList").html(s);
			}
		});
	    
	});
})

function list(){
	var currentPage=$("#currentPage").val();
	
	$.ajax({
		type:"get",
		dataType:"json",
		data:{"currentPage":currentPage},
		url:"management_getStockList.jsp",
		success:function(res){
			var s="";
			
			s+="<div class='text-nowrap'>";
			s+="<table class='table'>";
			s+="<thead style='background-color: #F8F9FA'>";
			s+="<tr>";
			s+="<th style='text-align: center; width: 70px;'>상품ID</th>";
			s+="<th style='text-align: center; width: 150px;'>상품명</th>";
			s+="<th style='text-align: center; width: 120px;'>팀</th>";
			s+="<th style='text-align: center; width: 80px;'>카테고리</th>";
			s+="<th style='text-align: center; width: 100px;'>재고수(SKU)</th>";
			s+="<th style='text-align: center; width: 120px;'>가격</th>";
			s+="<th style='text-align: center; width: 150px;'>관리</th>";
			s+="</tr>";
			s+="</thead>";
			s+="<tbody class='table-border-bottom-0'>";
			
			if(res.length == 0) {
				s+="<tr>";
				s+="<td colspan='7' align='center' style='font-size: 18pt;'>아직 입력된 상품이 없습니다</td>";
				s+="</tr>";
			} else {
				$.each(res, function(idx, item){
					s+="<tr>";
					s+="<td style='text-align: center;'>" + item.pId + "</td>";
					s+="<td style='text-align: center;'><a href='../product/product_detailPage.jsp?pId="+item.pId+"' style='text-decoration: none;color: black;'><b>"+item.pName+"</b></a></td>";
					s+="<td style='text-align: center;'>" + item.teamName + "</td>";
					s+="<td style='text-align: center;'>" + item.pCategory + "</td>";
					s+="<td style='text-align: center;'>" + item.pStock + "</td>";
					s+="<td style='text-align: center;'>" + item.price + "</td>";
					s+="<td style='text-align: center;'><div class='dropdown'><button type='button' class='btn p-0 dropdown-toggle hide-arrow' data-bs-toggle='dropdown'><i class='bx bx-dots-vertical-rounded'></i></button>";
					s+="<div class='dropdown-menu'><a class='dropdown-item' href='../product/product_updatePage.jsp?pId="+item.pId+"'><i class='bx bx-edit-alt me-1'></i>Update</a>";
					s+="<a class='dropdown-item' href='../product/product_delete.jsp?pId="+item.pId+"'><i class='bx bx-trash me-1'></i> Delete</a>";
					s+="</div></div></td>"
					s+="</tr>"		
				});
			}
			s+="</tbody>";
			s+="</table>";
			s+="</div>";
			
			$("div.sList").html(s);
		}
		
	})
}

</script>
<body>
<input type="hidden" id="currentPage" value="<%=currentPage%>">
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
							<a href='management_stockListPage.jsp' style="text-decoration: none;color: black;"><b>재&nbsp;고&nbsp;목&nbsp;록</b></a>
						</h3>
						
						<div class="sList"></div>

						<div class="bBottom" style="margin-top: 30px;">
							<div class="bsBox">
								<div class="bSelect">
									<select id="search" class="form-control" style="width: 100px; height: 40px; text-align: center;">
										<option value="pId" selected="selected">상품ID</option>
										<option value="teamName">팀</option>
										<option value="pCategory">카테고리</option>
									</select>
								</div>
                                <div class="bSearch">
									<input type="text" id="search_str" class="form-control"
											required="required" style="width: 200px; height: 40px;">
								</div>
								<button type="button" class="btn btn-default" id="searchBtn" style="margin-left: 5px;">검색</button>
                            </div>
                            <div class="bInsert">
								<button type="button" class="btn btn-default" id="insertBtn" onclick="location.href='../product/product_insertPage.jsp'">재고입력</button>
							</div>
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