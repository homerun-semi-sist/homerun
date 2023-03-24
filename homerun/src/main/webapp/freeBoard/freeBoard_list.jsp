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

    <title>HOMERUN | FREEBOARD_LIST</title>

    <meta name="description" content="" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="../assets/board/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../assets/board/vendor/css/theme-default.css" class="template-customizer-theme-css" />
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
		
		#naavs-top-all, #naavs-top-doosan, #naavs-top-kiwoom, #naavs-top-samsung, #naavs-top-lg, 
		#naavs-top-kt, #naavs-top-ssg, #naavs-top-nc, #naavs-top-lotte, #naavs-top-kia, #naavs-top-hanhwa {
			opacity: 1;
		}
    </style>
    
    <script type="text/javascript">
    	$(function() {

    		/* var val = $("#search :selected").val();
    		alert(val); */
    		fList();
    		
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
									
								if(item.fbCategory == "공지") {
									s+="<tr style='background-color: #FFF2F2; color: red; font-size: bold;'>";
									s+="<td style='text-align: center; vertical-align:middle;'></td>";
									s+="<td style='text-align: center; vertical-align:middle;'>";
									s+="<b>공지</b>";
									s+="</td>";
								} else if(item.fbCategory == "전체") {  
									s+="<tr>";
									s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbNum + "</td>";
									s+="<td style='text-align: center; vertical-align:middle;'>";
									s+="<img src='https://cdn.icon-icons.com/icons2/2070/PNG/512/baseball_icon_126956.png' style='width: 30px;'>";
									   s+="</td>";
								} else if(item.fbCategory == "한화") {
									s+="<tr>";
									s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbNum + "</td>";
									s+="<td style='text-align: center; vertical-align:middle;'>";
									s+="<img src='" + item.teamLogoImg + "' style='width: 50px;'>";
									s+="</td>";
								} else {
									s+="<tr>";
									s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbNum + "</td>";
									s+="<td style='text-align: center; vertical-align:middle;'>";
									s+="<img src='" + item.teamLogoImg + "' style='width: 40px;'>";
									   s+="</td>";
								}
								
								if(item.fcCnt == 0) {
									if(item.fbCategory == "공지") 
										s+="<td style='vertical-align:middle;'><a href='freePost_detailPage.jsp?fbNum=" + item.fbNum + "&currentPage=" + currentPage + "' style=' text-decoration: none; color: red;'><b>" + item.fbSubject + "</b></a></td>";
									else 
										s+="<td style='vertical-align:middle;'><a href='freePost_detailPage.jsp?fbNum=" + item.fbNum + "&currentPage=" + currentPage + "' style=' text-decoration: none; color: black;'>" + item.fbSubject + "</a></td>";
								
								} else {
									if(item.fbCategory == "공지") 
										s+="<td style='vertical-align:middle;'><a href='freePost_detailPage.jsp?fbNum=" + item.fbNum + "&currentPage=" + currentPage + "' style=' text-decoration: none; color: red;'><b>" + item.fbSubject + "</a><span style='color: tomato;'>&nbsp;&nbsp;[" + item.fcCnt + "]</span></td>";
									else
										s+="<td style='vertical-align:middle;'><a href='freePost_detailPage.jsp?fbNum=" + item.fbNum + "&currentPage=" + currentPage + "' style=' text-decoration: none; color: black;'>" + item.fbSubject + "</a><span style='color: tomato;'>&nbsp;&nbsp;[" + item.fcCnt + "]</span></td>";
								}
								
								if(item.fbCategory == "공지") {
									s+="<td style='text-align: center; vertical-align:middle;'><b>" + item.nickname + "</b></td>";
									s+="<td style='text-align: center; vertical-align:middle;'><b>" + item.fbWriteday + "</b></td>";
									s+="<td style='text-align: center; vertical-align:middle;'><b>" + item.fbReadCnt + "</b></td>";
									s+="<td style='text-align: center; vertical-align:middle;'><b>" + item.fbLike + "</b></td>";
									s+="<td style='text-align: center; vertical-align:middle;'><b>" + item.fbDislike + "</b></td>";							
									s+="</tr>"	
								} else {
									s+="<td style='text-align: center; vertical-align:middle;'>" + item.nickname + "</td>";
									s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbWriteday + "</td>";
									s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbReadCnt + "</td>";
									s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbLike + "</td>";
									s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbDislike + "</td> ";							
									s+="</tr>"
								}
							});
						}
						
	    				s+="</tbody>";
	    				s+="</table>";
	    				s+="</div>";
	    				
	    				$("div.fList").html(s);
	    			}
	    		});
    		    
    		});
    		
    		$("button.naav-link").click(function() {
    			var category = $(this).attr("category");
				var currentPage = $("#currentPage").val();
				// alert(category + ", " + currentPage);
								
				$.ajax({
	    			
	    			type : "get",
	    			url : "freeBoard_getCategoryList.jsp",
	    			dataType : "json",
	    			data : {"category" : category, "currentPage" : currentPage}, 
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
								
								if(item.fbCategory == "공지") {
									s+="<tr style='background-color: #FFF2F2; color: red; font-size: bold;'>";
									s+="<td style='text-align: center;'></td>";
									s+="<td style='text-align: center; vertical-align:middle;'>";
									s+="<b>공지</b>";
									s+="</td>";
								} else if(item.fbCategory == "전체") {   
									s+="<tr>";
									s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbNum + "</td>";
									s+="<td style='text-align: center; vertical-align:middle;'>";
									s+="<img src='https://cdn.icon-icons.com/icons2/2070/PNG/512/baseball_icon_126956.png' style='width: 30px;'>";
									s+="</td>";
								} else if(item.fbCategory == "한화") {
									s+="<tr>";
									s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbNum + "</td>";
									s+="<td style='text-align: center; vertical-align:middle;'>";
									s+="<img src='" + item.teamLogoImg + "' style='width: 50px;'>";
									s+="</td>";
								} else {
									s+="<tr>";
									s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbNum + "</td>";
									s+="<td style='text-align: center; vertical-align:middle;'>";
									s+="<img src='" + item.teamLogoImg + "' style='width: 40px;'>";
									   s+="</td>";
								}
								
								if(item.fcCnt == 0) {
									if(item.fbCategory == "공지") 
										s+="<td style='vertical-align:middle;'><a href='freePost_detailPage.jsp?fbNum=" + item.fbNum + "&currentPage=" + currentPage + "' style=' text-decoration: none; color: red;'><b>" + item.fbSubject + "</b></a></td>";
									else 
										s+="<td style='vertical-align:middle;'><a href='freePost_detailPage.jsp?fbNum=" + item.fbNum + "&currentPage=" + currentPage + "' style=' text-decoration: none; color: black;'>" + item.fbSubject + "</a></td>";
								
								} else {
									if(item.fbCategory == "공지") 
										s+="<td style='vertical-align:middle;'><a href='freePost_detailPage.jsp?fbNum=" + item.fbNum + "&currentPage=" + currentPage + "' style=' text-decoration: none; color: red;'><b>" + item.fbSubject + "</a><span style='color: tomato;'>&nbsp;&nbsp;[" + item.fcCnt + "]</span></td>";
									else
										s+="<td style='vertical-align:middle;'><a href='freePost_detailPage.jsp?fbNum=" + item.fbNum + "&currentPage=" + currentPage + "' style=' text-decoration: none; color: black;'>" + item.fbSubject + "</a><span style='color: tomato;'>&nbsp;&nbsp;[" + item.fcCnt + "]</span></td>";
								}
								
								if(item.fbCategory == "공지") {
									s+="<td style='text-align: center; vertical-align:middle;'><b>" + item.nickname + "</b></td>";
									s+="<td style='text-align: center; vertical-align:middle;'><b>" + item.fbWriteday + "</b></td>";
									s+="<td style='text-align: center; vertical-align:middle;'><b>" + item.fbReadCnt + "</b></td>";
									s+="<td style='text-align: center; vertical-align:middle;'><b>" + item.fbLike + "</b></td>";
									s+="<td style='text-align: center; vertical-align:middle;'><b>" + item.fbDislike + "</b></td>";							
									s+="</tr>"	
								} else {
									s+="<td style='text-align: center; vertical-align:middle;'>" + item.nickname + "</td>";
									s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbWriteday + "</td>";
									s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbReadCnt + "</td>";
									s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbLike + "</td>";
									s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbDislike + "</td> ";							
									s+="</tr>"
								}
							});
						}
	    				s+="</tbody>";
	    				s+="</table>";
	    				s+="</div>";
	    				
	    				$("div.ffList").html(s);
	    				
	    				if(category == "All")
	    					category = "전체";
	    				$(".fbTitle").text("_ " + category);
	    
	    			}
				});
				
			}); 
		})
		
		function fList() {
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
    				
					var n = res.length;
    				
					if(n == 0) {
						s+="<tr>";
						s+="<td colspan='8' align='center' style='font-size: 18pt;'>아직 작성된 게시글이 없습니다</td>";
						s+="</tr>";
					} else {
						$.each(res, function(idx, item){
							
							if(item.fbCategory == "공지") {
								s+="<tr style='background-color: #FFF2F2; color: red; font-size: bold;'>";
								s+="<td style='text-align: center;'></td>";
								s+="<td style='text-align: center; vertical-align:middle;'>";
								s+="<b>공지</b>";
								s+="</td>";
							} else if(item.fbCategory == "전체") {   
								s+="<tr>";
								s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbNum + "</td>";
								s+="<td style='text-align: center; vertical-align:middle;'>";
								s+="<img src='https://cdn.icon-icons.com/icons2/2070/PNG/512/baseball_icon_126956.png' style='width: 30px;'>";
								s+="</td>";
							} else if(item.fbCategory == "한화") {
								s+="<tr>";
								s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbNum + "</td>";
								s+="<td style='text-align: center; vertical-align:middle;'>";
								s+="<img src='" + item.teamLogoImg + "' style='width: 50px;'>";
								s+="</td>";
							} else {
								s+="<tr>";
								s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbNum + "</td>";
								s+="<td style='text-align: center; vertical-align:middle;'>";
								s+="<img src='" + item.teamLogoImg + "' style='width: 40px;'>";
								   s+="</td>";
							}
							
							if(item.fcCnt == 0) {
								if(item.fbCategory == "공지") 
									s+="<td style='vertical-align:middle;'><a href='freePost_detailPage.jsp?fbNum=" + item.fbNum + "&currentPage=" + currentPage + "' style=' text-decoration: none; color: red;'><b>" + item.fbSubject + "</b></a></td>";
								else 
									s+="<td style='vertical-align:middle;'><a href='freePost_detailPage.jsp?fbNum=" + item.fbNum + "&currentPage=" + currentPage + "' style=' text-decoration: none; color: black;'>" + item.fbSubject + "</a></td>";
							
							} else {
								if(item.fbCategory == "공지") 
									s+="<td style='vertical-align:middle;'><a href='freePost_detailPage.jsp?fbNum=" + item.fbNum + "&currentPage=" + currentPage + "' style=' text-decoration: none; color: red;'><b>" + item.fbSubject + "</a><span style='color: tomato;'>&nbsp;&nbsp;[" + item.fcCnt + "]</span></td>";
								else
									s+="<td style='vertical-align:middle;'><a href='freePost_detailPage.jsp?fbNum=" + item.fbNum + "&currentPage=" + currentPage + "' style=' text-decoration: none; color: black;'>" + item.fbSubject + "</a><span style='color: tomato;'>&nbsp;&nbsp;[" + item.fcCnt + "]</span></td>";
							}
							
							if(item.fbCategory == "공지") {
								s+="<td style='text-align: center; vertical-align:middle;'><b>" + item.nickname + "</b></td>";
								s+="<td style='text-align: center; vertical-align:middle;'><b>" + item.fbWriteday + "</b></td>";
								s+="<td style='text-align: center; vertical-align:middle;'><b>" + item.fbReadCnt + "</b></td>";
								s+="<td style='text-align: center; vertical-align:middle;'><b>" + item.fbLike + "</b></td>";
								s+="<td style='text-align: center; vertical-align:middle;'><b>" + item.fbDislike + "</b></td>";							
								s+="</tr>"	
							} else {
								s+="<td style='text-align: center; vertical-align:middle;'>" + item.nickname + "</td>";
								s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbWriteday + "</td>";
								s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbReadCnt + "</td>";
								s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbLike + "</td>";
								s+="<td style='text-align: center; vertical-align:middle;'>" + item.fbDislike + "</td> ";							
								s+="</tr>"
							}
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
		String uId = (String)session.getAttribute("uid");
		FreeBoardDao fbDao = new FreeBoardDao();
		
		TeamDao tDao = new TeamDao();
		List<TeamDto> tList = tDao.getAllTeams();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd"); 
		
		FreeCommentDao fcDao = new FreeCommentDao();
		
		int currentPage; 
		
		if(request.getParameter("currentPage") == null)
			currentPage = 1;
		else
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		
		// 페이징 처리		
		int totalCount;
		int totalPage;      
		int startPage;      
		int endPage;        
		int start;         
		int perPage = 15;  
		int perBlock = 5;  
	%>
	<input type="hidden" id="currentPage" value="<%=currentPage %>">
	
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
							<a href='freeBoard_listPage.jsp' style="text-decoration: none;color: black;"><b>자&nbsp;유&nbsp;게&nbsp;시&nbsp;판&nbsp;<sapn class="fbTitle" style="font-size: 0.8em;">_&nbsp;전체</span></b></a>
						</h3>
						
						<div class="naav-align-top mb-4">
						    <ul class="naav naav-tabs naav-fill" role="tablist" style="width: 100%">
						        <li class="naav-item">
						            <button type="button" class="naav-link active" role="tab" data-bs-toggle="tab"
						                data-bs-target="#naavs-top-all" aria-controls="naavs-top-all" aria-selected="true" category="All">
						                전체
						            </button>
						        </li>
						        <li class="naav-item">
						            <button type="button" class="naav-link" role="tab" data-bs-toggle="tab" data-bs-target="#naavs-top-kia"
						                aria-controls="naavs-top-kia" aria-selected="false" category="KIA">
						                KIA
						            </button>
						        </li>
						        <li class="naav-item">
						            <button type="button" class="naav-link" role="tab" data-bs-toggle="tab" data-bs-target="#naavs-top-kt"
						                aria-controls="naavs-top-kt" aria-selected="false" category="KT">
						                KT
						            </button>
						        </li>
						        <li class="naav-item">
						            <button type="button" class="naav-link" role="tab" data-bs-toggle="tab" data-bs-target="#naavs-top-lg"
						                aria-controls="naavs-top-lg" aria-selected="false" category="LG">
						                LG
						            </button>
						        </li>
						        <li class="naav-item">
						            <button type="button" class="naav-link" role="tab" data-bs-toggle="tab" data-bs-target="#naavs-top-nc"
						                aria-controls="naavs-top-nc" aria-selected="false" category="NC">
						                NC
						            </button>
						        </li>
						        <li class="naav-item">
						            <button type="button" class="naav-link" role="tab" data-bs-toggle="tab" data-bs-target="#naavs-top-ssg"
						                aria-controls="naavs-top-ssg" aria-selected="false" category="SSG">
						                SSG
						            </button>
						        </li>
						        <li class="naav-item">
						            <button type="button" class="naav-link" role="tab" data-bs-toggle="tab" data-bs-target="#naavs-top-doosan"
						                aria-controls="naavs-top-doosan" aria-selected="false" category="두산">
						                두산
						            </button>
						        </li>
						        <li class="naav-item">
						            <button type="button" class="naav-link" role="tab" data-bs-toggle="tab" data-bs-target="#naavs-top-lotte"
						                aria-controls="naavs-top-lotte" aria-selected="false" category="롯데">
						                롯데
						            </button>
						        </li>
						        <li class="naav-item">
						            <button type="button" class="naav-link" role="tab" data-bs-toggle="tab" data-bs-target="#naavs-top-samsung"
						                aria-controls="naavs-top-samsung" aria-selected="false" category="삼성">
						                삼성
						            </button>
						        </li>
						        <li class="naav-item">
						            <button type="button" class="naav-link" role="tab" data-bs-toggle="tab" data-bs-target="#naavs-top-kiwoom"
						                aria-controls="naavs-top-kiwoom" aria-selected="false" category="키움">
						                키움
						            </button>
						        </li>
						        <li class="naav-item">
						            <button type="button" class="naav-link" role="tab" data-bs-toggle="tab" data-bs-target="#naavs-top-hanhwa"
						                aria-controls="naavs-top-hanhwa" aria-selected="false" category="한화">
						                한화
						            </button>
						        </li>
						    </ul>
						
						    <!-- tab별 내용 -->
						    <div class="tab-content">
						        <div class="tab-pane fade show active" id="naavs-top-all" role="tabpanel">
						           <div class="fList"></div>
						
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
												totalCount = fbDao.getFBTotalCount();
	
												totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
	
												startPage = (currentPage - 1) / perBlock * perBlock + 1;
												endPage = startPage + perBlock - 1;
	
												if(endPage > totalPage)
													endPage = totalPage;
	
												start = (currentPage - 1) * perPage;
											
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
						        <div class="tab-pane fade" id="naavs-top-kia" role="tabpanel">
						            <div class="ffList"></div>
						        	
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
												totalCount = fbDao.getFBcateTotalCount("KIA");
												
												totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
	
												startPage = (currentPage - 1) / perBlock * perBlock + 1;
												endPage = startPage + perBlock - 1;
	
												if(endPage > totalPage)
													endPage = totalPage;
	
												start = (currentPage - 1) * perPage;
											
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
						        <div class="tab-pane fade" id="naavs-top-kt" role="tabpanel">
						            <div class="ffList"></div>
						        	
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
												totalCount = fbDao.getFBcateTotalCount("KT");
												
												totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
	
												startPage = (currentPage - 1) / perBlock * perBlock + 1;
												endPage = startPage + perBlock - 1;
	
												if(endPage > totalPage)
													endPage = totalPage;
	
												start = (currentPage - 1) * perPage;
												
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
						        <div class="tab-pane fade" id="naavs-top-lg" role="tabpanel">
						            <div class="ffList"></div>
						        	
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
												totalCount = fbDao.getFBcateTotalCount("LG");
												
												totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
	
												startPage = (currentPage - 1) / perBlock * perBlock + 1;
												endPage = startPage + perBlock - 1;
	
												if(endPage > totalPage)
													endPage = totalPage;
	
												start = (currentPage - 1) * perPage;
											
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
						        <div class="tab-pane fade" id="naavs-top-nc" role="tabpanel">
						            <div class="ffList"></div>
						        	
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
												totalCount = fbDao.getFBcateTotalCount("NC");
												
												totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
	
												startPage = (currentPage - 1) / perBlock * perBlock + 1;
												endPage = startPage + perBlock - 1;
	
												if(endPage > totalPage)
													endPage = totalPage;
	
												start = (currentPage - 1) * perPage;
											
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
						        <div class="tab-pane fade" id="naavs-top-ssg" role="tabpanel">
						            <div class="ffList"></div>
						        	
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
												totalCount = fbDao.getFBcateTotalCount("SSG");
												
												totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
	
												startPage = (currentPage - 1) / perBlock * perBlock + 1;
												endPage = startPage + perBlock - 1;
	
												if(endPage > totalPage)
													endPage = totalPage;
	
												start = (currentPage - 1) * perPage;
												
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
						        <div class="tab-pane fade" id="naavs-top-doosan" role="tabpanel">
						            <div class="ffList"></div>
						        	
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
												totalCount = fbDao.getFBcateTotalCount("두산");
												
												totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
	
												startPage = (currentPage - 1) / perBlock * perBlock + 1;
												endPage = startPage + perBlock - 1;
	
												if(endPage > totalPage)
													endPage = totalPage;
	
												start = (currentPage - 1) * perPage;
												
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
						        <div class="tab-pane fade" id="naavs-top-lotte" role="tabpanel">
						            <div class="ffList"></div>
						        	
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
												totalCount = fbDao.getFBcateTotalCount("롯데");
												
												totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
	
												startPage = (currentPage - 1) / perBlock * perBlock + 1;
												endPage = startPage + perBlock - 1;
	
												if(endPage > totalPage)
													endPage = totalPage;
	
												start = (currentPage - 1) * perPage;
												
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
						        <div class="tab-pane fade" id="naavs-top-samsung" role="tabpanel">
						            <div class="ffList"></div>
						        	
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
												totalCount = fbDao.getFBcateTotalCount("삼성");
												
												totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
	
												startPage = (currentPage - 1) / perBlock * perBlock + 1;
												endPage = startPage + perBlock - 1;
	
												if(endPage > totalPage)
													endPage = totalPage;
	
												start = (currentPage - 1) * perPage;
											
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
						        <div class="tab-pane fade" id="naavs-top-kiwoom" role="tabpanel">
						            <div class="ffList"></div>
						        	
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
												totalCount = fbDao.getFBcateTotalCount("키움");
												
												totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
	
												startPage = (currentPage - 1) / perBlock * perBlock + 1;
												endPage = startPage + perBlock - 1;
	
												if(endPage > totalPage)
													endPage = totalPage;
	
												start = (currentPage - 1) * perPage;
											
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
						        <div class="tab-pane fade" id="naavs-top-hanhwa" role="tabpanel">
						            <div class="ffList"></div>
						        	
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
												totalCount = fbDao.getFBcateTotalCount("한화");
												
												totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
	
												startPage = (currentPage - 1) / perBlock * perBlock + 1;
												endPage = startPage + perBlock - 1;
	
												if(endPage > totalPage)
													endPage = totalPage;
	
												start = (currentPage - 1) * perPage;
												
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