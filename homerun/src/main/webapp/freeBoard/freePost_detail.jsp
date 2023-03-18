<%@page import="data.dto.FreeCommentDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.FreeCommentDao"%>
<%@page import="data.dto.BookMarkDto"%>
<%@page import="data.dao.BookMarkDao"%>
<%@page import="data.dto.UserDto"%>
<%@page import="data.dao.UserDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.FreeBoardDto"%>
<%@page import="data.dao.FreeBoardDao"%>
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
		  	margin-left: 1065px;
		}

		.listBtn:hover {
		 	color: #0b214e;
		  	background-color: #f8f9fa;
		}
		
		.cday {
			color: #6c757d;
			font-size: 0.7rem;
		}
    </style>
    
    <script type="text/javascript">
		$(function() {
			
			// 댓글 부분에 넣을 num 출력 호출
			var num = $("#fbNum").val();
			// alert(num);
			
			// 댓글 insert
			$("#cInsertBtn").click(function() {
				
				var uId = $("#uId").val();
				var content = $("#content").val();
				// alert("클릭");
				// alert(num + ", "+ uId + ", " + content);
				
				$.ajax({
					type : "get",
					dataType : "html",
					url : "freeComment_insert.jsp",
					data : {"num" : num, "uId" : uId, "content" : content},
					success : function (res) {

						// 기존 입력값 지우기
						$("#content").val("");
						
						// 댓글 추가한 후 댓글 목록 다시 출력
						list();
					}
					
				})
			});
			
		});		
		
	</script>
</head>

<body>
<%
	request.setCharacterEncoding("UTF-8");

	String fbNum = request.getParameter("fbNum");
	String currentPage = request.getParameter("currentPage");

	// dao
	FreeBoardDao fbDao = new FreeBoardDao();

	// 조회수 증가
	fbDao.updateReadCount(fbNum);

	// 데이터
	FreeBoardDto fbDto = fbDao.getFB(fbNum);

	SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd HH:mm");

	String uId = (String) session.getAttribute("myid");
	String loginok = (String) session.getAttribute("loginok");

	UserDao uDao = new UserDao();
	UserDto uDto = uDao.getUser(fbDto.getUId());
	
	BookMarkDao bDao = new BookMarkDao();
	int bookmark = bDao.getFBBMcnt(uId, fbNum);
	
	FreeCommentDao fcDao = new FreeCommentDao();
	List<FreeCommentDto> fcList = fcDao.getAllFCs(fbNum);
%>
	<input type="hidden" id="fbNum" name="fbNum" value="<%=fbNum %>">
	<input type="hidden" id="uId" name="uId" value="<%=uId %>">
	
<!-- Layout wrapper -->
    <div class="layout-wrapper">
        <div class="layout-container">

            <!-- Content wrapper -->
            <div class="content-wrapper"">
                <!-- Content -->

                <div class="container-xxl flex-grow-1 container-p-y">
<!--  <main id="main"> -->
        <!-- ======= Blog Details Section ======= -->
        <div id="blog" class="blog col">
            <div class="container" data-aos="fade-up" data-aos-delay="100">
                <div class="row">

                    <div class="col">

                        <article class="blog-details">
                            <span class="title">[<%=fbDto.getFbCategory()%>] <%=fbDto.getFbSubject()%></span>
                            
                            <% 
                            	if(loginok != null && fbDto.getUId().equals(uId)) {
                            %>
                            		<span style="float: right; margin-top: 20px;" onclick="funDel(<%=fbNum%>, <%=currentPage%>)">삭제</span>
                            		<span style="float: right; margin-top: 20px;">&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                            		<span style="float: right; margin-top: 20px;" onclick="location.href='freePost_updatePage.jsp?fbNum=<%=fbDto.getFbNum()%>'">수정</span>                            		
                            <%	
                            	} else {
                            %>
                            		<span style="float: right; margin-top: 20px; color:red;">신고&nbsp;<i class="fa-solid fa-bullhorn"></i><!-- <i class="fa-solid fa-bell-concierge"></i> --></span>
                            <%
                            	}
                            %>
                           
                            
                            <div class="meta-top">
                                <span style="font-size: 17px;"><i class="fa-regular fa-user"></i><%=uDto.getNickname()%></span>                   
                                <span id="dlcnt" style="float: right;"><i class="fa-regular fa-thumbs-down"></i><%=fbDto.getFbDislike()%></span>
                                <span style="float: right;">&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                                <span id="lcnt" style="float: right;"><i class="fa-regular fa-thumbs-up"></i><%=fbDto.getFbLike()%></span>
                                <span style="float: right;">&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                                <span style="float: right;"><i class="fa-regular fa-eye"></i><%=fbDto.getFbReadCnt()%></span>
                                <span style="float: right;">&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                                <span style="float: right;"><i class="fa-regular fa-calendar"></i><%=sdf.format(fbDto.getFbWriteday())%></span>
                            </div><!-- End meta top -->
							<hr>
                            <div class="content" style="min-height: 500px;">
                                <%=fbDto.getFbContent().replace("\n", "<br>")%>

                            </div><!-- End post content -->

                            <div class="meta-bottom" style="text-align: center; height: 100px;">
                                <%-- <span style="font-size: 30px; margin: 20px; cursor: pointer;" id="likeCnt"
					num="<%=fbNum%>"><i class="fa-regular fa-thumbs-up"  style="color: blue;"></i></span> --%>
								<span class="fa-regular fa-thumbs-up" style="font-size: 30px; margin: 20px; cursor: pointer;color: blue;" id="likeCnt"
					num="<%=fbNum%>"></span>
                                <span class="fa-regular fa-thumbs-down" style="font-size: 30px; margin: 20px; cursor: pointer; color: red;" id="dislikeCnt"
					num="<%=fbNum%>"></span>
								
								<%
									if(bookmark != 0) {
								%>
									<span class="fa-solid fa-heart" style="font-size: 30px; margin: 20px; cursor: pointer; color: pink;" id="bookmark"
					num="<%=fbNum%>"></span>
								<%
									} else {
								%>
										<span class="fa-regular fa-heart" style="font-size: 30px; margin: 20px; cursor: pointer; color: pink;" id="bookmark"
					num="<%=fbNum%>"></span>
								<%
									}
								%>
					
                                
             
                            </div><!-- End meta bottom -->

                        </article><!-- End blog post -->

   
					    <div style="margin-top: 30px;">
					   		<button type="button" class="listBtn" onclick="location.href='freeBoard_listPage.jsp?currentPage=<%=currentPage%>'">목록</button> 
					    </div>
						
                        
                        <div class="comments">
                            <div class="card" style="border: 0px solid gray;">
                                <div class="card-body">
                                
                                	<div class="d-flex">
                                        <div class="ms-3">
                                            <span><i class="fa-regular fa-comment-dots"></i>&nbsp;댓글&nbsp;<b><%=fcList.size() %></b>개</a></span>
                                        </div>
                                    </div><hr>
         				
	                   				<%
	                   					for(FreeCommentDto fcDto : fcList) {
	                   						int i = 1;
	                   						
	                   						String fcNick = uDao.getUser(fcDto.getUId()).getNickname();
	                   						
	                   						// 로그인 한 사용자 = 댓글 작성자
	                   						if(loginok != null && fcNick.equals(uDao.getUser(uId).getNickname())) {
	                   				%>
	                   							<div class="d-flex">
			                                        <div class="ms-3">
			                                            <div class="fw-bold"><i class="fa-solid fa-user"></i>&nbsp;<%=i %>. <%=fcNick %> <span class="cday"><%=sdf.format(fcDto.getFcWriteday()) %> | <span>수정</span> | <span> 삭제 </span></span></div>
			                                            <%=fcDto.getFcContent() %>
			                                        </div>
			                                    </div><br>
	                   				<%		
	                   						// 글 작성자 = 댓글 작성자			
	                   						} else if(fcNick.equals(uDao.getUser((fbDao.getFB(fbNum).getUId())).getNickname())) {
	                   				%>
	                   							<div class="d-flex">
			                                        <div class="ms-3">
			                                            <div class="fw-bold"><i class="fa-solid fa-user"></i>&nbsp;<%=i %>. <%=fcNick %> <span style="color: red; border: 1px solid red; border-radius: 5px;">작성자</span> <span class="cday"><%=sdf.format(fcDto.getFcWriteday()) %> | <span>수정</span> | <span> 삭제 </span></span></div>
			                                            <%=fcDto.getFcContent() %>
			                                        </div>
			                                    </div><br>
	                   				<%		
	                   						// 일반 회원
	                   						} else {
	                   				%>
		                   						<div class="d-flex">
			                                        <div class="ms-3">
			                                            <div class="fw-bold"><i class="fa-solid fa-user"></i>&nbsp;<%=i %>. <%=fcNick %> <span class="cday"><%=sdf.format(fcDto.getFcWriteday()) %> | <span>추천</span> | <span> 비추천 </span> | <span> 신고 </span></span></div>
			                                            <%=fcDto.getFcContent() %>
			                                        </div>
			                                    </div><br>
	                   				<%				
	                   						}
	                   						
	                   					i++; 
										} 
									%>
									<!--
                                    <div class="d-flex">                                   
                                        <div class="ms-3">
                                            <div class="fw-bold"><i class="fa-solid fa-user"></i>&nbsp;1. 닉네임 <span class="cday">날짜 | <span>수정</span> | <span> 삭제 </span></span></div>
                                            댓글 내용1
                                        </div>
                                    </div><br>
									
                                    <div class="d-flex">
                                        <div class="flex-shrink-0"><img class="rounded-circle"
                                                src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                        <div class="ms-3">
                                            <div class="fw-bold">2. 닉네임</div>
                                            댓글 내용2
                                        </div>
                                    </div>  -->
                                    
                                </div>
                            </div>

                        </div>
                        
                        <%
                        	if(loginok == null) {
                        %>
                        		<div class="comments">
		                        	<div class="reply-form">	                           
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
                        <%
                        	} else {
                        %>
                        		<div class="comments">
		                        	<div class="reply-form">	                           
			                            <div class="row">
			                            	<span>&nbsp;&nbsp;<i class="fa-solid fa-user-pen"></i>&nbsp;&nbsp;<b><%=uDao.getUser(uId).getNickname() %></b></span>
			                            </div>
			                            <div class="row" style="margin-top: 20px;">
		                    				<div class="col-11 form-group">
		                      					<textarea name="content" id="content" class="form-control" placeholder="댓글 입력"></textarea>
						                    </div>
						                    <div class="col-1">
						                      <button type="button" id="cInsertBtn" class="btn btn-primary" style="width: 80px; height: 40px; line-height: 20px;">입력</button>
						                    </div>
		                 				 </div>	                          
		                        	</div>
								</div>             
                        <%		
                        	}
                        %>
                                             
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
	
		// 추천수 증가
		$("#likeCnt").click(function() {
			var login = '<%=loginok%>';
			
			/* $(this).removeClass("fa-regular");
			$(this).addClass("fa-solid").css("color", "blue").animate({"font-size" : "40px"}, 1000, function() {
				$(this).removeClass("fa-solid");
				$(this).addClass("fa-regular").css("font-size", "30px");
			}); */
			
			
			// alert(login);
			if(login == "yes") {
			
				var num = $(this).attr("num");
				var tag = $(this);
				
				// alert(num);
			 	
				$.ajax({
					
					type : "get",
					dataType : "json",
					url : "freePost_like.jsp",
					data : {"num" : num},
					success : function(res) {
					
						// alert(res.like);
						
						tag.addClass("fa-solid").animate({"color" : "blue"}, 1000, function() {
							tag.removeClass("fa-solid");
							tag.addClass("fa-regular").css("font-size", "30px");
						});
						
					}
					
				});
			}
			//else 
				//alert("로그인 후 이용 가능합니다");
			
			//tag.innerHTML = "<i class="fa-solid fa-thumbs-up"></i>"
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
					url : "freePost_dislike.jsp",
					data : {"num" : num},
					success : function(res) {
					
						// alert(res.dislike);
				
						tag.addClass("fa-solid").animate({"color" : "red"}, 1000, function() {
							tag.removeClass("fa-solid");
							tag.addClass("fa-regular").css("font-size", "30px");
						});
						
					}
					
				});
			} else 
				alert("로그인 후 이용 가능합니다");
		});
		
		// 신고수 증가
		$("#report").click(function() {
		var login = '<%=loginok%>';
			
			if(login == "yes")  {
				
				var num = $(this).attr("num");
				var tag = $(this);	
				
				// alert(num);
				
				$.ajax({
					
					type : "get",
					dataType : "json",
					url : "freePost_report.jsp",
					data : {"num" : num},
					success : function(res) {
						
						// alert(res.flag);
						
						if(res.flag == true) {
							var a = confirm("신고하려면 [확인]을 눌러주세요\n한번 신고한 글을 취소가 불가능합니다");
							
							if(a)
								alert("게시글을 신고하였습니다");
						}
						else 
							alert("이미 신고한 게시글입니다");
	
					}
				}); 
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
					url : "freePost_bookmark.jsp",
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
				location.href="freePost_delete.jsp?fbNum=<%=fbDto.getFbNum()%>";
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