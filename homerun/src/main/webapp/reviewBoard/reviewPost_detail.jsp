<%@page import="data.dto.UserDto"%>
<%@page import="data.dao.UserDao"%>
<%@page import="data.dto.GameDto"%>
<%@page import="data.dao.GameDao"%>
<%@page import="data.dto.ReviewBoardDto"%>
<%@page import="data.dao.ReviewBoardDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Hi+Melody&family=Jua&family=Nanum+Gothic&family=Noto+Serif+KR&family=Poor+Story&family=Stylish&family=Sunflower&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://code.jquery.com/jquery-3.6.3.js"></script>

		<title>Insert title here</title>
	</head>
	
	<body>
		<%
			request.setCharacterEncoding("UTF-8");
		
			String uId = (String)session.getAttribute("myid");
			String loginok = (String)session.getAttribute("loginok");
		
			// num 읽기
			String rbNum = request.getParameter("rbNum");
			
			// dao
			ReviewBoardDao rbDao = new ReviewBoardDao();
			GameDao gDao = new GameDao();
			
			// 조회수 증가
			rbDao.updateReadCount(rbNum);
			
			// 데이터
			ReviewBoardDto rbDto = rbDao.getRB(rbNum);
			
			SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd HH:mm");
		
			UserDao uDao = new UserDao();
			UserDto uDto = uDao.getUser(uId);	
		%>

		<table class="table table-condensed" style="width: 650px;">
			<tr>
				<td style="width: 500px;">
				<%
					GameDto gDto = gDao.getGame(rbDto.getgId());
				%>
				
					<h2>[<%=gDto.getgDay()%> <%=gDto.getHome()%> vs <%=gDto.getAway()%>] <%=rbDto.getRbSubject() %></h2>
					<span style="font-size: 9pt;"><b><%=uDto.getNickname() %></b></span>
					<span style="color: gray; font-size: 9pt;"><%=sdf.format(rbDto.getRbWriteday()) %></span>&nbsp;&nbsp;&nbsp;&nbsp;
					<span style="font-size: 9pt;">조회 : <%=rbDto.getRbReadCnt() %></span>
					<span style="font-size: 9pt;">추천 : <%=rbDto.getRbLike() %></span>
					<span style="font-size: 9pt;">비추천 : <%=rbDto.getRbDislike() %></span>
				</td>
			</tr>
			
			<tr>
				<td colspan="2">
					<%=rbDto.getRbContent().replace("\n", "<br>") %>
				</td>
			</tr>
		</table>
		
		<div style="margin-left: 400px;">
			<button type="button" class="btn btn-default" id="likeCnt" num="<%=rbNum %>">추천</button>
			<span class="like"><%=rbDto.getRbLike() %></span>
			
			<button type="button" class="btn btn-default" id="dislikeCnt" num="<%=rbNum %>">비추천</button>
			<span class="dislike"><%=rbDto.getRbDislike() %></span>
			
			<button type="button" class="btn btn-default" id="reportCnt" num="<%=rbNum %>">신고</button>
			<span class="report"><%=rbDto.getRbReport() %></span>
			
			<button type="button" class="btn btn-default" id="bookmark" num="<%=rbNum %>">찜</button>
			
			<br><br>
			<button type="button" class="btn btn-default" onclick="location.href='reviewBoard_listPage.jsp'">목록</button>
			<% 
				if(loginok != null && rbDto.getUId().equals(uId)) {
			%>
				<button type="button" class="btn btn-default" onclick="location.href='reviewPost_updatePage.jsp?fbNum=<%=rbDto.getRbNum() %>'">수정</button>
				<button type="button" class="btn btn-default" onclick="location.href='reviewPost_delete.jsp?fbNum=<%=rbDto.getRbNum() %>'">삭제</button>
			<%
				}
			%>
		</div>
		
		<script type="text/javascript">
			// 추천수 증가
			$("#likeCnt").click(function() {
				
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
						tag.next().text(res.like);
						tag.css("background-color", "pink");
						
					}
					
				}); 

			});

			// 비추천수 증가
			$("#dislikeCnt").click(function() {
				
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
						tag.next().text(res.dislike);
						tag.css("background-color", "pink");
						
					}
					
				});  
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
						url : "reviewPost_report.jsp",
						data : {"num" : num},
						success : function(res) {
							
							// alert(res.flag);
							
							if(res.flag == true)
								alert("게시글을 신고하였습니다")
							else 
								alert("이미 신고한 게시글입니다")
		
							tag.css("background-color", "pink");	
						}
					});
				} else
					alert("로그인 후 이용 가능합니다");
				
			});
			
			// 찜
			$("#bookmark").click(function() {
				
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
						
						if(res.flag == true)
							alert("찜한 게시글은 마이페이지에서 확인가능합니다")
						else 
							alert("이미 찜한 게시글입니다. 마이페이지에서 확인해주세요")

						tag.css("background-color", "pink");	
					}
				});
			});
			
		</script>
	</body>
</html>