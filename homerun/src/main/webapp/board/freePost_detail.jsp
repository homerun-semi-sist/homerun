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
		%>

		<table class="table table-condensed" style="width: 650px;">
			<tr>
				<td style="width: 500px;">
					<h2>[<%=fbDto.getFbCategory() %>] <%=fbDto.getFbSubject() %></h2>
					<span style="font-size: 9pt;"><b><%=uDto.getUid() %></b></span>
					<span style="color: gray; font-size: 9pt;"><%=sdf.format(dto.getFbWriteday()) %></span>&nbsp;&nbsp;&nbsp;&nbsp;
					<span style="font-size: 9pt;">조회 : <%=fbDto.getFbReadCnt() %></span>
					<span style="font-size: 9pt;">추천 : <%=fbDto.getFbLike() %></span>
					<span style="font-size: 9pt;">비추천 : <%=fbDto.getFbDislike() %></span>
				</td>
			</tr>
			
			<tr>
				<td colspan="2">
					<%=dto.getFbContent().replace("\n", "<br>") %>
				</td>
			</tr>
		</table>
		
		<div style="margin-left: 400px;">
			<button type="button" class="btn btn-default" id="likeCnt" style="background-color: pink;">추천</button>
			<button type="button" class="btn btn-default" onclick="dislikeCnt" style="background-color: pink;">비추천</button>
			<button type="button" class="btn btn-default" onclick="reportCnt" style="background-color: pink;">신고</button>
			<br><br>
			<button type="button" class="btn btn-default" onclick="location.href='freeBoard_insert.jsp'">글쓰기</button>
			<button type="button" class="btn btn-default" onclick="location.href='freeBoard_list.jsp'">목록</button>
			<button type="button" class="btn btn-default" onclick="location.href='freeBoard_update.jsp?fbNum=<%=fbDto.getFbNum() %>'">수정</button>
			<button type="button" class="btn btn-default" onclick="location.href='freeBoard_delete.jsp?fbNum=<%=fbDto.getFbNum() %>'">삭제</button>
		</div>
		
		<script type="text/javascript">
			// 추천수 증가
			$("#likeCnt").click(function() {
				console.log('<%=fbNum %>');		
				
				<%
				fbDao.updateLike(fbNum);			
				%>
				
				$(this).css("background-color", "red");
			});

			// 비추천수 증가
			$("#dislikeCnt").click(function() {
				console.log('<%=fbNum %>');		
				
				<%
				fbDao.updateDislike(fbNum);			
				%>
				
				$(this).css("background-color", "red");
			});
			
			// 비추천수 증가
			$("#reportCnt").click(function() {
				console.log('<%=fbNum %>');		
				
				<%
				fbDao.updateReport(fbNum);			
				%>
				
				$(this).css("background-color", "red");
			});ㄴ
		</script>
	</body>
</html>