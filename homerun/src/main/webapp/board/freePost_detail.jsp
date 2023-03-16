<%@page import="data.dto.UserDto"%>
<%@page import="data.dao.UserDao"%>
<%@page import="data.dto.FreeBoardDto"%>
<%@page import="data.dao.FreeBoardDao"%>
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
		
			// num 읽기
			String fbNum = request.getParameter("fbNum");
			
			// dao
			FreeBoardDao fbDao = new FreeBoardDao();
			
			// 조회수 증가
			fbDao.updateReadCount(fbNum);
			
			// 데이터
			FreeBoardDto fbDto = fbDao.getFB(fbNum);
			
			SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd HH:mm");
			
			String uId = (String)session.getAttribute("myid");
						
			UserDao uDao = new UserDao();
			UserDto uDto = uDao.getUser(uId);	
			
			boolean likeCK = false;
			boolean dislikeCK = false;
		%>

		<table class="table table-condensed" style="width: 650px;">
			<tr>
				<td style="width: 500px;">
					<h2>[<%=fbDto.getFbCategory() %>] <%=fbDto.getFbSubject() %></h2>
					<span style="font-size: 9pt;"><b><%=uDto.getNickname() %></b></span>
					<span style="color: gray; font-size: 9pt;"><%=sdf.format(fbDto.getFbWriteday()) %></span>&nbsp;&nbsp;&nbsp;&nbsp;
					<span style="font-size: 9pt;">조회 : <%=fbDto.getFbReadCnt() %></span>
					<span style="font-size: 9pt;">추천 : <%=fbDto.getFbLike() %></span>
					<span style="font-size: 9pt;">비추천 : <%=fbDto.getFbDislike() %></span>
				</td>
			</tr>
			
			<tr>
				<td colspan="2">
					<%=fbDto.getFbContent().replace("\n", "<br>") %>
				</td>
			</tr>
		</table>
		
		<div style="margin-left: 400px;">
			<button type="button" class="btn btn-default" id="likeCnt" num="<%=fbNum %>">추천</button>
			<span class="like"><%=fbDto.getFbLike() %></span>
			
			<button type="button" class="btn btn-default" id="dislikeCnt" num="<%=fbNum %>">비추천</button>
			<span class="dislike"><%=fbDto.getFbDislike() %></span>
			
			<button type="button" class="btn btn-default" id="reportCnt" num="<%=fbNum %>">신고</button>
			<span class="report"><%=fbDto.getFbReport() %></span>
			
			<button type="button" class="btn btn-default" id="bookmark" num="<%=fbNum %>">찜</button>
			
			<br><br>
			<button type="button" class="btn btn-default" onclick="location.href='freeBoard_insert.jsp'">글쓰기</button>
			<button type="button" class="btn btn-default" onclick="location.href='freeBoard_list.jsp'">목록</button>
			<button type="button" class="btn btn-default" onclick="location.href='freeBoard_update.jsp?fbNum=<%=fbDto.getFbNum() %>'">수정</button>
			<button type="button" class="btn btn-default" onclick="location.href='freeBoard_delete.jsp?fbNum=<%=fbDto.getFbNum() %>'">삭제</button>
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
					url : "freePost_like.jsp",
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
					url : "freePost_dislike.jsp",
					data : {"num" : num},
					success : function(res) {
					
						// alert(res.dislike);
						tag.next().text(res.dislike);
						tag.css("background-color", "pink");
						
					}
					
				});  
			});
			
			// 신고수 증가
			$("#reportCnt").click(function() {
				
				var num = $(this).attr("num");
				var tag = $(this);	
				
				alert(num);
				<%
				//fbDao.updateReport(fbNum);			
				%>
				
				$(this).css("background-color", "pink");
			});
			
			// 찜
			$("#bookmark").click(function() {
				
				var num = $(this).attr("num");
				var tag = $(this);	
				
				alert(num);
				
				$.ajax({
					
					type : "get",
					dataType : "json",
					url : "freePost_bookmark.jsp",
					data : {"num" : num},
					success : function(res) {
						
						alert(res.flag);
						
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