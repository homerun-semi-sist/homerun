<%@page import="data.dto.GameDto"%>
<%@page import="data.dao.GameDao"%>
<%@page import="data.dto.ReviewCommentDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.ReviewCommentDao"%>
<%@page import="data.dao.BookMarkDao"%>
<%@page import="data.dto.UserDto"%>
<%@page import="data.dao.UserDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.ReviewBoardDto"%>
<%@page import="data.dao.TeamDao"%>
<%@page import="data.dao.ReviewBoardDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>게시글 상세페이지</title>
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
    
    <!-- Template Main CSS File -->
    <link href="../assets/detail/css/main.css" rel="stylesheet">
    
    <script src="https://kit.fontawesome.com/8dcaa4675e.js" crossorigin="anonymous"></script>
    
    <style type="text/css">
    	.listBtn {
			border-radius: 4px;
			padding: 10px 20px;
			border: 1px solid #0b214e;
			background-color: #0b214e;
		  	color: #F8F9FA;
		  	width: 80px; 
		  	height: 40px; 
		  	line-height: 20px;
		}

		.listBtn:hover {
		 	color: #0b214e;
		  	background-color: #f8f9fa;
		}
		
		.cday {
			color: #6c757d;
			font-size: 0.7rem;
			margin-left: 30px;
		}
    </style>
    
    <script type="text/javascript">
		$(function() {
			
			// 댓글 관련 method
			
			// 처음 시작시 리스트 호출
			list();
			$("div.commentUpdateForm").hide();
			
			// 댓글 부분에 넣을 num 출력 호출
			var num = $("#rbNum").val();
			// alert(num);
			
			// 댓글 insert
			$("#rInsertBtn").click(function() {
				
				var uId = $("#uId").val();
				var content = $("#content").val();
				// alert(num + ", "+ uId + ", " + content);
				
				$.ajax({
					type : "get",
					dataType : "html",
					url : "reviewComment_insert.jsp",
					data : {"num" : num, "uId" : uId, "content" : content},
					success : function (res) {

						// 기존 입력값 지우기
						$("#content").val("");
						
						// 댓글 추가한 후 댓글 목록 다시 출력
						list();
					}
					
				})
			});
			
			// 댓글 delete
			$(document).on("click", ".rcDel", function() {
				var a = confirm("댓글을 삭제하려면 [확인]을 눌러주세요");
				
				var rcIdx = $(this).attr("rcIdx");
				// alert(rcIdx);
				
				if(a) {
					$.ajax({
						
						type : "get",
						url : "reviewComment_delete.jsp",
						dataType : "html",
						data : {"rcIdx" : rcIdx},
						success : function() {
							list();
						}
					});
				} 
			});
			
			// 댓글 update 버튼 클릭
			$(document).on("click", ".rcMod", function() {
							
				var rcIdx = $(this).attr("rcIdx");
				// alert(rcIdx);
				
				// 추가폼은 숨기고 수정폼은 나타냄
				$("div.commentForm").hide();
				$("div.commentUpdateForm").show();
				
				$.ajax({
					
					type : "get",
					url : "reviewComment_getComment.jsp",
					dataType : "json",
					data : {"rcIdx" : rcIdx},
					success : function(res) {	
						
						$("#ucontent").val(res.rcContent);
						$("#rUpdateBtn").attr("rcIdx", res.rcIdx);
					}
				});
 
			})
			
			// 댓글 update
			$("#rUpdateBtn").click(function() {
							
				var rcIdx = $(this).attr("rcIdx");
				var ucontent = $("#ucontent").val();
				// alert(rcIdx + ", " + ucontent);

				$.ajax({
				
					type : "post",
					url : "reviewComment_update.jsp",
					dataType : "html",
					data : {"rcIdx" : rcIdx, "ucontent" : ucontent},
					success : function () {
						
						list();
						
						// 수정폼은 숨기고 입력폼은 나타냄
						$("div.commentUpdateForm").hide();
						$("div.commentForm").show();
					}
						
				}); 
			});
			
			// 댓글 추천수 증가
			$(document).on("click", ".rcLike", function() {
				var loginok = $("#loginok").val();
				//alert(loginok);
				
				if(loginok == "yes") {
					
					var rcIdx = $(this).attr("rcIdx");
					// alert(rcIdx);
					
					$.ajax({
						
						type : "get",
						url : "reviewComment_like.jsp",
						dataType : "json",
						data : {"rcIdx" : rcIdx},
						success : function (res) {
	
							list();
						}
					})
					
				}
				else 
					alert("로그인 후 이용 가능합니다");
		
			});
			
			// 댓글 비추천수 증가
			$(document).on("click", ".rcDislike", function() {
				var loginok = $("#loginok").val();
				//alert(loginok);
				
				if(loginok == "yes") {
					
					var rcIdx = $(this).attr("rcIdx");
					// alert(rcIdx);
					
					$.ajax({
						
						type : "get",
						url : "reviewComment_dislike.jsp",
						dataType : "json",
						data : {"rcIdx" : rcIdx},
						success : function (res) {
	
							list();
						}
					})
					
				}
				else 
					alert("로그인 후 이용 가능합니다");
		
			});
			
			// 댓글 신고수 증가 
			$(document).on("click", ".rcReport", function() {
				var loginok = $("#loginok").val();
				//alert(loginok);
				
				if(loginok == "yes") {
					
					var rcIdx = $(this).attr("rcIdx");
					// alert(rcIdx);
					
					var a = confirm("신고하려면 [확인]을 눌러주세요\n한번 신고한 댓글은 취소가 불가능합니다");
					
					if(a) {
						$.ajax({
							
							type : "get",
							url : "reviewComment_report.jsp",
							dataType : "json",
							data : {"rcIdx" : rcIdx},
							success : function (res) {
			
								alert("댓글을 신고하였습니다");	
								list();
								
							}
						})
					}	
					
				}
				else 
					alert("로그인 후 이용 가능합니다");
		
			});
			
		});		
		
		// list 사용자 정의 함수
		function list() {
			
			var loginok = $("#loginok").val();
			var uId = $("#uId").val();
			var rbUId = $("#rbUId").val();
			
			//alert(rbUId);
			
			$.ajax({
				
				type : "get",
			    url : "reviewComment_list.jsp",
			    dataType : "json",
			    data : {"num" : $("#rbNum").val()},
			    success:function(res){
					// alert("성공");
					
					//댓글갯수출력
					$("b.rcCnt").text(res.length);
					
					var s="";
					
					if(res.length == 0) 
						s = "<div style='text-align: center; margin-top:50px; margin-bottom:30px;'><span>아직 작성된 댓글이 없습니다</span></div>";
						
					
					$.each(res, function(idx, item){

						// alert(rbUId + " : " + item.rcUId);
						
						s+="<div class='d-flex'>";
						s+="<div class='ms-3'>";					
							
						// 로그인 o && 댓글 작성자 == 로그인 한 아이디 -> 수정, 삭제 표시
						if(loginok != null && uId == item.rcUId) {
							if(item.rcUId == rbUId) 
								s+="<div class='fw-bold'><i class='fa-solid fa-user'></i>&nbsp;" + item.nickname + "<span style='color: red; border: 1px solid red; border-radius: 5px; font-size: 0.7rem; margin-left: 3px;'>작성자</span> <span class='cday'>" + item.rcWriteday + " | <span class='rcMod' rcIdx=" + item.rcIdx + " style='cursor: pointer'>수정</span> | <span class='rcDel' rcIdx=" + item.rcIdx + " style='cursor: pointer'> 삭제 </span></span></div>"; 
							
							// 댓글 작성자 == 글 작성자 -> 작성자 표시	1.로그인했을때->수정삭제
							else
								s+="<div class='fw-bold'><i class='fa-solid fa-user'></i>&nbsp;" + item.nickname + "<span class='cday'>" + item.rcWriteday + " | <span class='rcMod' rcIdx=" + item.rcIdx + " style='cursor: pointer'>수정</span> | <span class='rcDel' rcIdx=" + item.rcIdx + " style='cursor: pointer'> 삭제 </span></span></div>";
						}
						
						// 댓글 작성자 == 글 작성자 -> 작성자 표시	2.로그인안했을때 
						else if(item.rcUId == rbUId) 
							s+="<div class='fw-bold'><i class='fa-solid fa-user'></i>&nbsp;" + item.nickname + "<span style='color: red; border: 1px solid red; border-radius: 5px; font-size: 0.7rem; margin-left: 3px;'>작성자</span> <span class='cday'>" + item.rcWriteday + " | <span class='rcLike' rcIdx='" + item.rcIdx + "' style='cursor: pointer'>추천 <span class='rcLikeCnt' rcIdx='" + item.rcIdx + "'>" + item.rcLike + "</span></span> | <span class='rcDislike' rcIdx=" + item.rcIdx + " style='cursor: pointer'> 비추천 <span class='rcDislikeCnt' rcIdx='" + item.rcIdx + "'> " + item.rcDislike + "</span> </span> | <span class='rcReport' rcIdx=" + item.rcIdx + " style='cursor: pointer'> 신고 <span class='rcReportCnt' rcIdx='" + item.rcIdx + "'>" + item.rcReport + "</span></span></span></div>";
						
						// 로그인 x
						else
							s+="<div class='fw-bold'><i class='fa-solid fa-user'></i>&nbsp;" + item.nickname + "<span class='cday'>" + item.rcWriteday + " | <span class='rcLike' rcIdx='" + item.rcIdx + "' style='cursor: pointer'>추천 <span class='rcLikeCnt' rcIdx='" + item.rcIdx + "'>" + item.rcLike + "</span></span> | <span class='rcDislike' rcIdx=" + item.rcIdx + " style='cursor: pointer'> 비추천 <span class='rcDislikeCnt' rcIdx='" + item.rcIdx + "'> " + item.rcDislike + "</span> </span> | <span class='rcReport' rcIdx=" + item.rcIdx + " style='cursor: pointer'> 신고 <span class='rcReportCnt' rcIdx='" + item.rcIdx + "'>" + item.rcReport + "</span></span></span></div>"; 
									
						s+= "<div id='rcContent' rcContent='"+ item.rcContent +"'>" + item.rcContent + "</div>";
						s+="</div>";
						s+="</div><br>";

					});
					
					$("div.rcList").html(s);
				}
			   
			});
		}
		
	</script>
</head>

<body>
<%
	request.setCharacterEncoding("UTF-8");

	String rbNum = request.getParameter("rbNum");
	String currentPage = request.getParameter("currentPage");

	// dao
	ReviewBoardDao rbDao = new ReviewBoardDao();
	TeamDao tDao = new TeamDao();
	
	// 조회수 증가
	rbDao.updateReadCount(rbNum);

	// 데이터
	ReviewBoardDto rbDto = rbDao.getRB(rbNum);

	SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd HH:mm");

	String uId = (String) session.getAttribute("uid");
	String loginok = (String) session.getAttribute("loginok");

	UserDao uDao = new UserDao();
	UserDto uDto = uDao.getUser(rbDto.getUId());
	
	GameDao gDao = new GameDao();
	
	BookMarkDao bDao = new BookMarkDao();
	int bookmark = bDao.getRBBMcnt(uId, rbNum);
	
	ReviewCommentDao rcDao = new ReviewCommentDao();
	List<ReviewCommentDto> rcList = rcDao.getAllRCs(rbNum);
%>
	<input type="hidden" id="loginok" name="loginok" value="<%=loginok %>">
	<input type="hidden" id="rbNum" name="rbNum" value="<%=rbNum %>">
	<input type="hidden" id="uId" name="uId" value="<%=uId %>">
	<input type="hidden" id="rbUId" name="rbUId" value="<%=rbDto.getUId() %>">
	
<!-- Layout wrapper -->
    <div class="layout-wrapper">
        <div class="layout-container">

            <!-- Content wrapper -->
            <div class="content-wrapper"">
                <!-- Content -->

                <div class="container-xxl flex-grow-1 container-p-y">
<!--  <main id="main"> -->
        <!-- ======= Blog Details Section ======= -->
        <div id="blog" class="blog col" >
            <div class="" data-aos="fade-up" data-aos-delay="100">
                <div class="row">


					<div style="margin-bottom: 30px;">
				   		<button type="button" class="listBtn" onclick="location.href='reviewBoard_listPage.jsp?currentPage=<%=currentPage%>'">목록</button> 
				    </div>
				    
                    <div class="col">

                        <article class="blog-details" style="background-color: #fff;">
                            <span class="title" style="vertical-align:middle; color:#0b214e;">
                            
                            <% 
                            	GameDto gDto = gDao.getGame(rbDto.getgId()); 
                            	
	                            String year = gDto.getgDay().substring(2, 4);
	                    		String month = gDto.getgDay().substring(5, 7);
	                    		String day = gDto.getgDay().substring(8, 10);
                           %>
                           		<span style="font-size: 0.8em;">[ 
                           <%
                               	if(gDto.getHome().equals("한화")) {	
                           %>
                               		<img src="<%=tDao.getTeam(gDto.getHome()).getTeamLogo() %>" style="width: 60px; vertical-align:middle;">
                               		vs&nbsp;
                                   	<img src="<%=tDao.getTeam(gDto.getAway()).getTeamLogo() %>" style="width: 50px; vertical-align:middle;">
                           <%		
                            	} else if(gDto.getAway().equals("한화")) {
                           %>
                               		<img src="<%=tDao.getTeam(gDto.getHome()).getTeamLogo() %>" style="width: 50px; vertical-align:middle;">
                               		&nbsp;vs
                                   	<img src="<%=tDao.getTeam(gDto.getAway()).getTeamLogo() %>" style="width: 60px; vertical-align:middle;">
                           <%			
                            	} else {
                           %>
                               		<img src="<%=tDao.getTeam(gDto.getHome()).getTeamLogo() %>" style="width: 50px; vertical-align:middle;">
                               		vs
                                   	<img src="<%=tDao.getTeam(gDto.getAway()).getTeamLogo() %>" style="width: 50px; vertical-align:middle;"> 
                           <%
                                 }     
                           %>
                           		&nbsp;<%=year %>.<%=month %>.<%=day %> ]</span> <%=rbDto.getRbSubject() %></span> 
                           <%
                        	
                            	if(loginok != null && rbDto.getUId().equals(uId)) {
                           %>
                            		<span style="float: right; margin-top: 20px; cursor: pointer;" onclick="funDel(<%=rbNum%>, <%=currentPage%>)">삭제</span>
                            		<span style="float: right; margin-top: 20px;">&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                            		<span style="float: right; margin-top: 20px; cursor: pointer;" onclick="location.href='reviewPost_updatePage.jsp?rbNum=<%=rbDto.getRbNum() %>&currentPage=<%=currentPage%>'">수정</span>                            		
                           <%	
                            	} else {
                           %>
                            		<span id="report" style="float: right; margin-top: 20px; color:red; cursor: pointer;">신고&nbsp;<i class="fa-solid fa-bullhorn"></i></span>
                           <%
                            	}
                           %>
                                                 
                            <div class="meta-top">
                                <span style="font-size: 17px;"><i class="fa-regular fa-user"></i><%=uDto.getNickname()%></span>                   
                                <span style="float: right;"><i class="fa-regular fa-thumbs-down"></i><span id="dlcnt"><%=rbDto.getRbDislike()%></span></span>
                                <span style="float: right;">&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                                <span style="float: right;"><i class="fa-regular fa-thumbs-up"></i><span id="lcnt"><%=rbDto.getRbLike()%></span></span>
                                <span style="float: right;">&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                                <span style="float: right;"><i class="fa-regular fa-eye"></i><%=rbDto.getRbReadCnt()%></span>
                                <span style="float: right;">&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                                <span style="float: right;"><i class="fa-regular fa-calendar"></i><%=sdf.format(rbDto.getRbWriteday())%></span>
                            </div><!-- End meta top -->
							<hr>
                            <div class="content" style="min-height: 500px;">
                                <%=rbDto.getRbContent().replace("\n", "<br>")%>

                            </div><!-- End post content -->

                            <div class="meta-bottom" style="text-align: center; height: 100px;">                        
								<span class="fa-regular fa-thumbs-up" style="font-size: 30px; margin: 20px; cursor: pointer;color: blue;" id="likeCnt"
					num="<%=rbNum%>"></span>
                                <span class="fa-regular fa-thumbs-down" style="font-size: 30px; margin: 20px; cursor: pointer; color: red;" id="dislikeCnt"
					num="<%=rbNum%>"></span>
								
								<%
									if(bookmark != 0) {
								%>
									<span class="fa-solid fa-heart" style="font-size: 30px; margin: 20px; cursor: pointer; color: pink;" id="bookmark"
					num="<%=rbNum%>"></span>
								<%
									} else {
								%>
										<span class="fa-regular fa-heart" style="font-size: 30px; margin: 20px; cursor: pointer; color: pink;" id="bookmark"
					num="<%=rbNum%>"></span>
								<%
									}
								%>
					
                                
             
                            </div><!-- End meta bottom -->

                        </article><!-- End blog post -->
               
                        <div class="comments">
                            <div class="card" style="border: 0px solid gray;">
                                <div class="card-body" style="background-color: #fff;">
                                
                                	<div class="d-flex">
                                        <div class="ms-3">
                                            <span><i class="fa-regular fa-comment-dots"></i>&nbsp;댓글&nbsp;<b class="rcCnt">0</b>개</a></span>
                                        </div>
                                    </div><hr>
         				
	                   				<div class="rcList"></div>
                                    
                                </div>
                            </div>

                        </div>
                        
                        <%
                        	if(loginok == null) {
                        %>
	                        	<div class="commentForm">
	                        		<div class="comments">
			                        	<div class="reply-form" style="background-color: #F8F9FA;">	                           
				                            <div class="row">
				                            	<span>&nbsp;<i class="fa-solid fa-user-pen"></i>&nbsp;비회원</span>
				                            </div>
				                            <div class="row" style="margin-top: 20px;">
			                    				<div class="col-11 form-group">
			                      					<textarea name="content" id="content" class="form-control" placeholder="비회원은 로그인 후 이용 가능합니다" readonly="readonly"></textarea>
							                    </div>
							                    <div class="col-1">
							                      <button type="button" id="loginNoBtn" class="btn btn-primary" style="width: 80px; height: 40px; line-height: 20px;">입력</button>
							                    </div>
			                 				 </div>	                          
			                        	</div>
									</div>     
								</div> 
                        <%
                        	} else {
                        %>
	                       		<div class="commentForm">
	                        		<div class="comments">
			                        	<div class="reply-form" style="background-color: #F8F9FA;">	                           
				                            <div class="row">
				                            	<span>&nbsp;&nbsp;<i class="fa-solid fa-user-pen"></i>&nbsp;&nbsp;<b><%=uDao.getUser(uId).getNickname() %></b></span>
				                            </div>
				                            <div class="row" style="margin-top: 20px;">
			                    				<div class="col-11 form-group">
			                      					<textarea name="content" id="content" class="form-control" placeholder="댓글 입력"></textarea>
							                    </div>
							                    <div class="col-1">
							                      <button type="button" id="rInsertBtn" class="btn btn-primary" style="width: 80px; height: 40px; line-height: 20px;">입력</button>
							                    </div>
			                 				 </div>	                          
			                        	</div>
									</div>  
								</div>           
                        <%		
                        	}
                        %>
                            	<div class="commentUpdateForm">
	                        		<div class="comments">
			                        	<div class="reply-form" style="background-color: #F8F9FA;">	                           
				                            <div class="row">
				                            	<span>&nbsp;&nbsp;<i class="fa-solid fa-user-pen"></i>&nbsp;&nbsp;<b><%=uDao.getUser(uId).getNickname() %></b></span>
				                            </div>
				                            <div class="row" style="margin-top: 20px;">
			                    				<div class="col-11 form-group">
			                      					<textarea name="ucontent" id="ucontent" class="form-control"></textarea>
							                    </div>
							                    <div class="col-1">
							                      <button type="button" id="rUpdateBtn" class="btn btn-primary" style="width: 80px; height: 40px; line-height: 20px;">수정</button>
							                    </div>
			                 				 </div>	                          
			                        	</div>
									</div>  
								</div>                        
                    </div>
                </div>
            </div>
        </div><!-- End Blog Details Section -->

   <!--  </main> --><!-- End #main -->
    
    </div>
    </div>
</div>
    </div>
	<script type="text/javascript">
		
		// 게시글 method
		
		// 추천수 증가
		$("#likeCnt").click(function() {
			var login = '<%=loginok%>';
			
			// alert(login);
			if(login == "yes") {
			
				var num = $(this).attr("num");
				var tag = $(this);
				
				// alert(num);
			 	
				$.ajax({
					
					type : "get",
					dataType : "json",
					url : "reviewPost_like.jsp",
					data : {"num" : num},
					success : function(res) {
					
						// alert(res.like);
						
						tag.addClass("fa-solid").animate({"color" : "blue"}, 1000, function() {
							tag.removeClass("fa-solid");
							tag.addClass("fa-regular").css("font-size", "30px");
						
							alert("해당 게시글을 추천하였습니다");
						});
						
						$("#lcnt").text(res.like);
					}
					
				});
			}
			else 
				alert("로그인 후 이용 가능합니다");
	
		});

		// 비추천수 증가
		$("#dislikeCnt").click(function() {
			var login = '<%=loginok%>';
			
			if(login == "yes") {
				
				var num = $(this).attr("num");
				var tag = $(this);	
				
				 // alert(num);
				
				$.ajax({
					
					type : "get",
					dataType : "json",
					url : "reviewPost_dislike.jsp",
					data : {"num" : num},
					success : function(res) {
					
					 // alert(res.dislike);
				
						tag.addClass("fa-solid").animate({"color" : "red"}, 1000, function() {
							tag.removeClass("fa-solid");
							tag.addClass("fa-regular").css("font-size", "30px");
						
							alert("해당 게시글을 비추천하였습니다");
						});
						
						$("#dlcnt").text(res.dislike);
					}
					
				});
			} else 
				alert("로그인 후 이용 가능합니다");
		});
		
		// 신고수 증가
		$("#report").click(function() {
		var login = '<%=loginok%>';
			
			if(login == "yes")  {
				
				var num = $("#rbNum").val();
				
				// alert(num);
				var a = confirm("신고하려면 [확인]을 눌러주세요\n한번 신고한 글은 취소가 불가능합니다");
				
				if(a) {
					$.ajax({
					
						type : "get",
						dataType : "json",
						url : "reviewPost_report.jsp",
						data : {"num" : num},
						success : function(res) {
							
							// alert(res.report);
	
							if(res.flag == true)
									alert("게시글을 신고하였습니다");
							
							else 
								alert("이미 신고한 게시글입니다");
		
						}
					}); 
				}
			} else
				alert("로그인 후 이용 가능합니다");
				
		});
		
		// 찜
		$("#bookmark").click(function() {
			var login = '<%=loginok%>';
			
			if(login == "yes")  {
				
				var num = $(this).attr("num");
				var tag = $(this);	
				
				// alert(num);
				
				$.ajax({
					
					type : "get",
					dataType : "json",
					url : "reviewPost_bookmark.jsp",
					data : {"num" : num},
					success : function(res) {
						
						// alert(res.flag);
						
						if(res.flag == true) {
							tag.addClass("fa-solid").css("color", "pink");
							
							alert("찜한 게시글은 마이페이지에서 확인가능합니다");
						}
						else  
							alert("이미 찜한 게시글입니다. 마이페이지에서 확인해주세요")

					}
				}); 
			} else
				alert("로그인 후 이용 가능합니다");
			
		});
		

		function funDel(num, currentPage) {
			
			var a = confirm("삭제하려면 [확인]을 눌러주세요");
			
			if(a) {
				location.href="reviewPost_delete.jsp?rbNum=<%=rbDto.getRbNum()%>";
			}
		}
	</script>
		

    <!-- Vendor JS Files -->
    <script src="../assets/detail/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../assets/detail/vendor/aos/aos.js"></script>
    <script src="../assets/detail/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="../assets/detail/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="../assets/detail/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="../assets/detail/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="../assets/detail/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="../assets/detail/js/main.js"></script>

</body>

</html>