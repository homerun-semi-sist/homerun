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
		
			// num 읽기
			String rbNum = request.getParameter("rbNum");
			
			// dao
			ReviewBoardDao rbDao = new ReviewBoardDao();
			GameDao gDao = new GameDao();
			// 조회수 증가
			// dao.updateReadCount(num);
			
			// 데이터
			ReviewBoardDto rbDto = rbDao.getRB(rbNum);
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		%>

		<table class="table table-condensed" style="width: 650px;">
			<tr>
				<td style="width: 500px;">
				<%
					GameDto gDto = gDao.getGame(rbDto.getgId());
				%>
				
					<h2>[<%=gDto.getgDay()%> <%=gDto.getHome()%> vs <%=gDto.getAway()%>] <%=rbDto.getRbSubject() %></h2>
					<span style="font-size: 9pt;"><b><%=rbDto.getNickname() %></b></span>
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
			<button type="button" class="btn btn-default" onclick="location.href='reviewBoard_insert.jsp'">글쓰기</button>
			<button type="button" class="btn btn-default" onclick="location.href='reviewBoard_list.jsp'">목록</button>
			<button type="button" class="btn btn-default" onclick="location.href='reviewBoard_update.jsp?rbNum=<%=rbDto.getRbNum() %>'">수정</button>
			<button type="button" class="btn btn-default" onclick="location.href='reviewBoard_delete.jsp?rbNum=<%=rbDto.getRbNum() %>'">삭제</button>
		</div>
	</body>
</html>