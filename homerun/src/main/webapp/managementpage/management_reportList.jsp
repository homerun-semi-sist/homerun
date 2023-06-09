<%@page import="data.dao.ReviewCommentDao"%>
<%@page import="data.dao.FreeCommentDao"%>
<%@page import="data.dao.ReviewBoardDao"%>
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

<title>HOMERUN | MANAGEMENT_REPORTLIST</title>

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
	cursor: pointer;
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

#naavs-top-fb, #naavs-top-rb, #naavs-top-fc, #naavs-top-rc {
	opacity: 1;
}
</style>
</head>
<%
String mainPage = "../layout/main.jsp";

if (request.getParameter("main") != null) {
	mainPage = request.getParameter("main");
}

String root = request.getContextPath();

int totalCount;
int totalPage;
int startPage;
int endPage;
int start;
int perPage = 10;
int perBlock = 5;
int currentPage;

FreeBoardDao fbDao = new FreeBoardDao();
ReviewBoardDao rbDao = new ReviewBoardDao();
FreeCommentDao fcDao = new FreeCommentDao();
ReviewCommentDao rcDao = new ReviewCommentDao();

if (request.getParameter("currentPage") == null)
	currentPage = 1;
else
	currentPage = Integer.parseInt(request.getParameter("currentPage"));
%>
<script>
	$(function() {
		fbList();

		$("button.naav-link")
				.click(
						function() {
							var category = $(this).attr("category");
							var currentPage = $("#currentPage").val();
							// alert(category + ", " + currentPage);

							$
									.ajax({
										type : "get",
										dataType : "json",
										data : {
											"category" : category,
											"currentPage" : currentPage
										},
										url : "management_getReportList.jsp",
										success : function(res) {

											if (category == "fb")
												fbList();

											else if (category == "rb") {
												var s = "";

												s += "<div class='text-nowrap'>";
												s += "<table class='table'>";
												s += "<thead style='background-color: #F8F9FA'>";
												s += "<tr>";
												s += "<th style='text-align: center; width: 80px;'>NO.</th>";
												s += "<th style='text-align: center; width: 120px;'>경기팀</th>";
												s += "<th style='text-align: center;'>제목</th>";
												s += "<th style='text-align: center; width: 150px;'>작성자</th>";
												s += "<th style='text-align: center; width: 150px;'>작성일</th>";
												s += "<th style='text-align: center; width: 80px;'>조회수</th>";
												s += "<th style='text-align: center; width: 80px;'>누적 신고수</th>";
												s += "<th style='text-align: center; width: 150px;'>관리</th>";
												s += "</tr>";
												s += "</thead>";
												s += "<tbody class='table-border-bottom-0'>";

												if (res.length == 0) {
													s += "<tr>";
													s += "<td colspan='8' align='center' style='font-size: 18pt;'>아직 신고된 게시글이 없습니다</td>";
													s += "</tr>";
												} else {
													$
															.each(
																	res,
																	function(
																			idx,
																			item) {
																		s += "<tr>";
																		s += "<td style='text-align: center; vertical-align:middle;'>"
																				+ (res.length-idx)
																				+ "</td>";
																		s += "<td style='text-align: center; vertical-align:middle;'>"
																				+ item.home
																				+ " vs "
																				+ item.away
																				+ "</td>";
																		s += "<td style='vertical-align:middle;'><a href='../reviewBoard/reviewPost_detailPage.jsp?rbNum="
																				+ item.rbNum
																				+ "&currentPage="
																				+ currentPage
																				+ "' style=' text-decoration: none; color: black;'>"
																				+ item.rbSubject
																				+ "</a></td>";
																		s += "<td style='text-align: center; vertical-align:middle;'>"
																				+ item.nickname
																				+ "</td>";
																		s += "<td style='text-align: center; vertical-align:middle;'>"
																				+ item.rbWriteday
																				+ "</td>";
																		s += "<td style='text-align: center; vertical-align:middle;'>"
																				+ item.rbReadCnt
																				+ "</td>";
																		s += "<td style='text-align: center; vertical-align:middle;'>"
																				+ item.rbReport
																				+ "</td>";
																		s += "<td style='text-align: center;'><div class='dropdown'><button type='button' class='btn p-0 dropdown-toggle hide-arrow' data-bs-toggle='dropdown'><i class='bx bx-dots-vertical-rounded'></i></button>";
																		s += "<div class='dropdown-menu'>";
																		s += "<a class='dropdown-item delBtn' num='"+ item.rbNum + "' category='" + category + "'><i class='bx bx-trash me-1'></i> Delete</a>";
																		s += "<a class='dropdown-item delUserBtn' uId='"+item.rbUId+"' category='" + category + "'><i class='bx bx-user-minus me-1'></i> Withdrawal</a></button>";
																		s += "</div></div></td>"
																		s += "</tr>"
																	});
												}
												s += "</tbody>";
												s += "</table>";
												s += "</div>";

												$("div.rbList").html(s);
											}

											else {
												var s = "";

												s += "<div class='text-nowrap'>";
												s += "<table class='table'>";
												s += "<thead style='background-color: #F8F9FA'>";
												s += "<tr>";
												s += "<th style='text-align: center; width: 100px;'>NO.</th>";
												s += "<th style='text-align: center; width: 120px;'>게시글 제목</th>";
												s += "<th style='text-align: center; width: 200px;'>댓글 내용</th>";
												s += "<th style='text-align: center; width: 100px;'>작성자</th>";
												s += "<th style='text-align: center; width: 100px;'>작성일</th>";
												s += "<th style='text-align: center; width: 80px;'>누적 신고수</th>";
												s += "<th style='text-align: center; width: 150px;'>관리</th>";
												s += "</tr>";
												s += "</thead>";
												s += "<tbody class='table-border-bottom-0'>";

												if (res.length == 0) {
													s += "<tr>";
													s += "<td colspan='7' align='center' style='font-size: 18pt;'>아직 신고된 댓글이 없습니다</td>";
													s += "</tr>";
												} else {
													$
															.each(
																	res,
																	function(
																			idx,
																			item) {
																		s += "<tr>";
																		s += "<td style='text-align: center; vertical-align:middle;'>"
																				+ (item.totalCnt - idx)
																				+ "</td>";

																		if (category == "fc")
																			s += "<td style='vertical-align:middle;'><a href='../freeBoard/freePost_detailPage.jsp?fbNum="
																					+ item.num
																					+ "&currentPage="
																					+ currentPage
																					+ "' style=' text-decoration: none; color: black;'>"
																					+ item.subject
																					+ "</a></td>";
																		else
																			s += "<td style='vertical-align:middle;'><a href='../reviewBoard/reviewPost_detailPage.jsp?rbNum="
																					+ item.num
																					+ "&currentPage="
																					+ currentPage
																					+ "' style=' text-decoration: none; color: black;'>"
																					+ item.subject
																					+ "</a></td>";

																		s += "<td style='text-align: center; vertical-align:middle;'>"
																				+ item.content
																				+ "</td>";
																		s += "<td style='text-align: center; vertical-align:middle;'>"
																				+ item.nickname
																				+ "</td>";
																		s += "<td style='text-align: center; vertical-align:middle;'>"
																				+ item.writeday
																				+ "</td>";
																		s += "<td style='text-align: center; vertical-align:middle;'>"
																				+ item.report
																				+ "</td>";
																		s += "<td style='text-align: center;'><div class='dropdown'><button type='button' class='btn p-0 dropdown-toggle hide-arrow' data-bs-toggle='dropdown'><i class='bx bx-dots-vertical-rounded'></i></button>";
																		s += "<div class='dropdown-menu'>";
																		s += "<a class='dropdown-item delBtn' num='"+ item.cIdx + "' category='" + category + "'><i class='bx bx-trash me-1'></i> Delete</a>";
																		s += "<a class='dropdown-item delUserBtn' uId='"+item.uId+"' category='" + category + "'><i class='bx bx-user-minus me-1'></i> Withdrawal</a></button>";
																		s += "</div></div></td>"
																		s += "</tr>"
																	});
												}
												s += "</tbody>";
												s += "</table>";
												s += "</div>";

												$("div.cList").html(s);

											}

											if (category == "fb")
												category = "자유게시판 게시글";
											else if (category == "rb")
												category = "후기게시판 게시글";
											else if (category == "fc")
												category = "자유게시판 댓글";
											else if (category == "rc")
												category = "자유게시판 댓글";
											$(".rTitle").text("_ " + category);

										}
									});

						});

		$(document)
				.on(
						"click",
						".delBtn",
						function() {
							var num = $(this).attr("num");
							var category = $(this).attr("category");
							// alert(num + ", " + category);

							if (category == "fb" || category == "rb") {
								var a = confirm("해당 게시글을 정말로 강제 삭제하시겠습니까?");
								alert(num + ", " + category);
								if (a) {
									$.ajax({
										type : "get",
										dataType : "html",
										data : {
											"num" : num,
											"category" : category
										},
										url : "management_postDelete.jsp",
										success : function(res) {
											location.reload();
											alert("강제 삭제 완료하였습니다.");
										}
									});
								}
							} else {
								var a = confirm("해당 댓글을 정말로 강제 삭제하시겠습니까?");

								if (a) {
									if (category == "fc") {
										location.href = "../freeBoard/freeComment_delete.jsp?fcIdx="+ num;
										location.reload();
										alert("강제 삭제 완료하였습니다.");
									}
									else {
										location.href = "../reviewBoard/reviewComment_delete.jsp?rcIdx="+ num;
										location.reload();
										alert("강제 삭제 완료하였습니다.");
									}
								}
							}

						});

		$(document).on("click", ".delUserBtn", function() {
			var uId = $(this).attr("uId");

			var a = confirm("해당 회원을 정말로 강제 탈퇴하시겠습니까?");

			if (a) {
				$.ajax({
					type : "get",
					dataType : "html",
					data : {
						"uId" : uId
					},
					url : "management_userDelete.jsp",
					success : function(res) {
						location.reload();
						alert("강제 탈퇴 완료하였습니다.");
					}
				});
			}

		});
	})

	function fbList() {
		var currentPage = $("#currentPage").val();
		var category = "fb";

		$
				.ajax({
					type : "get",
					dataType : "json",
					data : {
						"category" : category,
						"currentPage" : currentPage
					},
					url : "management_getReportList.jsp",
					success : function(res) {

						var s = "";

						s += "<div class='text-nowrap'>";
						s += "<table class='table'>";
						s += "<thead style='background-color: #F8F9FA'>";
						s += "<tr>";
						s += "<th style='text-align: center; width: 80px;'>NO.</th>";
						s += "<th style='text-align: center; width: 100px;'>카테고리</th>";
						s += "<th style='text-align: center;'>제목</th>";
						s += "<th style='text-align: center; width: 150px;'>작성자</th>";
						s += "<th style='text-align: center; width: 150px;'>작성일</th>";
						s += "<th style='text-align: center; width: 80px;'>조회수</th>";
						s += "<th style='text-align: center; width: 80px;'>누적 신고수</th>";
						s += "<th style='text-align: center; width: 150px;'>관리</th>";
						s += "</tr>";
						s += "</thead>";
						s += "<tbody class='table-border-bottom-0'>";

						if (res.length == 0) {
							s += "<tr>";
							s += "<td colspan='8' align='center' style='font-size: 18pt;'>아직 신고된 게시글이 없습니다</td>";
							s += "</tr>";
						} else {
							$
									.each(
											res,
											function(idx, item) {
												s += "<tr>";
												s += "<td style='text-align: center;'>"
														+ (res.length-idx)
														+ "</td>";
												s += "<td style='text-align: center; vertical-align:middle;'><b>"
														+ item.fbCategory
														+ "</b></td>";
												s += "<td style='vertical-align:middle;'><a href='../freeBoard/freePost_detailPage.jsp?fbNum="
														+ item.fbNum
														+ "&currentPage="
														+ currentPage
														+ "' style=' text-decoration: none; color: black;'>"
														+ item.fbSubject
														+ "</a></td>";
												s += "<td style='text-align: center; vertical-align:middle;'>"
														+ item.nickname
														+ "</td>";
												s += "<td style='text-align: center; vertical-align:middle;'>"
														+ item.fbWriteday
														+ "</td>";
												s += "<td style='text-align: center; vertical-align:middle;'>"
														+ item.fbReadCnt
														+ "</td>";
												s += "<td style='text-align: center; vertical-align:middle;'>"
														+ item.fbReport
														+ "</td>";
												s += "<td style='text-align: center;'><div class='dropdown'><button type='button' class='btn p-0 dropdown-toggle hide-arrow' data-bs-toggle='dropdown'><i class='bx bx-dots-vertical-rounded'></i></button>";
												s += "<div class='dropdown-menu'>";
												s += "<a class='dropdown-item delBtn' num='"+ item.fbNum + "' category='" + category + "'><i class='bx bx-trash me-1'></i> Delete</a>";
												s += "<a class='dropdown-item delUserBtn' uId='"+item.fbUId+"' category='" + category + "'><i class='bx bx-user-minus me-1'></i> Withdrawal</a></button>";
												s += "</div></div></td>"
												s += "</tr>"
											});
						}
						s += "</tbody>";
						s += "</table>";
						s += "</div>";

						$("div.fbList").html(s);
					}

				});
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
					<div class="card" style="background-color: #fff">
						<h3 class="card-header">
							<a href='management_reportListPage.jsp'
								style="text-decoration: none; color: black;"><b>신&nbsp;고&nbsp;목&nbsp;록<sapn
										class="rTitle" style="font-size: 0.8em;">_&nbsp;자유게시판
									게시글</span></b></a>
						</h3>

						<div class="naav-align-top mb-4">
							<ul class="naav naav-tabs naav-fill" role="tablist"
								style="width: 100%">
								<li class="naav-item">
									<button type="button" class="naav-link active" role="tab"
										data-bs-toggle="tab" data-bs-target="#naavs-top-fb"
										aria-controls="naavs-top-fb" aria-selected="true"
										category="fb">자유 - 게시글</button>
								</li>
								<li class="naav-item">
									<button type="button" class="naav-link" role="tab"
										data-bs-toggle="tab" data-bs-target="#naavs-top-rb"
										aria-controls="naavs-top-rb" aria-selected="false"
										category="rb">후기 - 게시글</button>
								</li>
								<li class="naav-item">
									<button type="button" class="naav-link" role="tab"
										data-bs-toggle="tab" data-bs-target="#naavs-top-fc"
										aria-controls="naavs-top-fc" aria-selected="false"
										category="fc">자유 - 댓글</button>
								</li>
								<li class="naav-item">
									<button type="button" class="naav-link" role="tab"
										data-bs-toggle="tab" data-bs-target="#naavs-top-rc"
										aria-controls="naavs-top-rc" aria-selected="false"
										category="rc">후기 - 댓글</button>
								</li>
							</ul>

							<!-- tab별 내용 -->
							<div class="tab-content">
								<div class="tab-pane fade show active" id="naavs-top-fb"
									role="tabpanel">
									<div class="fbList"></div>

									<!-- 페이징 처리 -->
									<div style="width: 500px; text-align: center;"
										class="container">
										<ul class="pagination">
											<%
											totalCount = fbDao.getAllFBs_reportCount();
											totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
											startPage = (currentPage - 1) / perBlock * perBlock + 1;
											endPage = startPage + perBlock - 1;

											if (endPage > totalPage)
												endPage = totalPage;

											start = (currentPage - 1) * perPage;

											// 이전
											if (startPage > 1) {
											%>
											<li><a
												href="management_reportListPage.jsp?currentPage=<%=startPage - 1%>">이전</a>
											</li>
											<%
											}
											for (int pp = startPage; pp <= endPage; pp++) {
											if (pp == currentPage) {
											%>
											<li class="active"><a
												href="management_reportListPage.jsp?currentPage=<%=pp%>">
													<%=pp%>
											</a></li>
											<%
											} else {
											%>
											<li><a
												href="management_reportListPage.jsp?currentPage=<%=pp%>">
													<%=pp%>
											</a></li>
											<%
											}
											}

											// 다음 
											if (endPage < totalPage) {
											%>
											<li><a
												href="management_reportListPage.jsp?currentPage=<%=endPage + 1%>">다음</a>
											</li>
											<%
											}
											%>
										</ul>
									</div>
								</div>

								<div class="tab-pane fade" id="naavs-top-rb" role="tabpanel">
									<div class="rbList"></div>

									<!-- 페이징 처리 -->
									<div style="width: 500px; text-align: center;"
										class="container">
										<ul class="pagination">
											<%
											totalCount = rbDao.getAllRBs_reportCount();

											totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
											startPage = (currentPage - 1) / perBlock * perBlock + 1;
											endPage = startPage + perBlock - 1;

											if (endPage > totalPage)
												endPage = totalPage;

											start = (currentPage - 1) * perPage;

											// 이전
											if (startPage > 1) {
											%>
											<li><a
												href="management_reportListPage.jsp?currentPage=<%=startPage - 1%>">이전</a>
											</li>
											<%
											}
											for (int pp = startPage; pp <= endPage; pp++) {
											if (pp == currentPage) {
											%>
											<li class="active"><a
												href="management_reportListPage.jsp?currentPage=<%=pp%>">
													<%=pp%>
											</a></li>
											<%
											} else {
											%>
											<li><a
												href="management_reportListPage.jsp?currentPage=<%=pp%>">
													<%=pp%>
											</a></li>
											<%
											}
											}

											// 다음 
											if (endPage < totalPage) {
											%>
											<li><a
												href="management_reportListPage.jsp?currentPage=<%=endPage + 1%>">다음</a>
											</li>
											<%
											}
											%>
										</ul>
									</div>
								</div>

								<div class="tab-pane fade" id="naavs-top-fc" role="tabpanel">
									<div class="cList"></div>

									<!-- 페이징 처리 -->
									<div style="width: 500px; text-align: center;"
										class="container">
										<ul class="pagination">
											<%
											totalCount = fcDao.getAllFCs_reportCount();

											totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
											startPage = (currentPage - 1) / perBlock * perBlock + 1;
											endPage = startPage + perBlock - 1;

											if (endPage > totalPage)
												endPage = totalPage;

											start = (currentPage - 1) * perPage;

											// 이전
											if (startPage > 1) {
											%>
											<li><a
												href="management_reportListPage.jsp?currentPage=<%=startPage - 1%>">이전</a>
											</li>
											<%
											}
											for (int pp = startPage; pp <= endPage; pp++) {
											if (pp == currentPage) {
											%>
											<li class="active"><a
												href="management_reportListPage.jsp?currentPage=<%=pp%>">
													<%=pp%>
											</a></li>
											<%
											} else {
											%>
											<li><a
												href="management_reportListPage.jsp?currentPage=<%=pp%>">
													<%=pp%>
											</a></li>
											<%
											}
											}

											// 다음 
											if (endPage < totalPage) {
											%>
											<li><a
												href="management_reportListPage.jsp?currentPage=<%=endPage + 1%>">다음</a>
											</li>
											<%
											}
											%>
										</ul>
									</div>
								</div>

								<div class="tab-pane fade" id="naavs-top-rc" role="tabpanel">
									<div class="cList"></div>

									<!-- 페이징 처리 -->
									<div style="width: 500px; text-align: center;"
										class="container">
										<ul class="pagination">
											<%
											totalCount = rcDao.getAllRCs_reportCount();

											totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
											startPage = (currentPage - 1) / perBlock * perBlock + 1;
											endPage = startPage + perBlock - 1;

											if (endPage > totalPage)
												endPage = totalPage;

											start = (currentPage - 1) * perPage;

											// 이전
											if (startPage > 1) {
											%>
											<li><a
												href="management_reportListPage.jsp?currentPage=<%=startPage - 1%>">이전</a>
											</li>
											<%
											}
											for (int pp = startPage; pp <= endPage; pp++) {
											if (pp == currentPage) {
											%>
											<li class="active"><a
												href="management_reportListPage.jsp?currentPage=<%=pp%>">
													<%=pp%>
											</a></li>
											<%
											} else {
											%>
											<li><a
												href="management_reportListPage.jsp?currentPage=<%=pp%>">
													<%=pp%>
											</a></li>
											<%
											}
											}

											// 다음 
											if (endPage < totalPage) {
											%>
											<li><a
												href="management_reportListPage.jsp?currentPage=<%=endPage + 1%>">다음</a>
											</li>
											<%
											}
											%>
										</ul>
									</div>
								</div>

							</div>
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