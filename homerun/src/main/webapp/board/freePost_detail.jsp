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
			FreeBoardDao dao = new FreeBoardDao();
			
			// 조회수 증가
			// dao.updateReadCount(num);
			
			// 데이터
			FreeBoardDto dto = dao.getFB(fbNum);
			
			SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd HH:mm");
		%>

		<table class="table table-condensed" style="width: 650px;">
			<tr>
				<td style="width: 500px;">
					<h2>[<%=dto.getFbCategory() %>] <%=dto.getFbSubject() %></h2>
					<span style="font-size: 9pt;"><b><%=dto.getNickname() %></b></span>
					<span style="color: gray; font-size: 9pt;"><%=sdf.format(dto.getFbWriteday()) %></span>&nbsp;&nbsp;&nbsp;&nbsp;
					<span style="font-size: 9pt;">조회 : <%=dto.getFbReadCnt() %></span>
					<span style="font-size: 9pt;">추천 : <%=dto.getFbLike() %></span>
					<span style="font-size: 9pt;">비추천 : <%=dto.getFbDislike() %></span>
				</td>
			</tr>
			
			<tr>
				<td colspan="2">
					<%=dto.getFbContent().replace("\n", "<br>") %>
				</td>
			</tr>
		</table>
		
		<div style="margin-left: 400px;">
			<button type="button" class="btn btn-default" onclick="location.href='freeBoard_insert.jsp'">글쓰기</button>
			<button type="button" class="btn btn-default" onclick="location.href='freeBoard_list.jsp'">목록</button>
			<button type="button" class="btn btn-default" onclick="location.href='freeBoard_update.jsp?fbNum=<%=dto.getFbNum() %>'">수정</button>
			<button type="button" class="btn btn-default" onclick="location.href='freeBoard_delete.jsp?fbNum=<%=dto.getFbNum() %>'">삭제</button>
		</div>
	</body>
</html>