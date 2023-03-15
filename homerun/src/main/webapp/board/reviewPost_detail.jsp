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
			ReviewBoardDao dao = new ReviewBoardDao();
			
			// 조회수 증가
			// dao.updateReadCount(num);
			
			// 데이터
			ReviewBoardDto dto = dao.getRB(rbNum);
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		%>

		<table class="table table-condensed" style="width: 650px;">
			<tr>
				<td style="width: 500px;">
					<h2><%=dto.getRbNum() %></h2>
					<span style="font-size: 9pt;"><b><%=dto.getNickname() %></b></span>
					<span style="color: gray; font-size: 9pt;"><%=sdf.format(dto.getRbWriteday() %></span>&nbsp;&nbsp;&nbsp;&nbsp;
					<span style="font-size: 9pt;">조회 : <%=dto.getRbPhoto() %></span>
					<span style="font-size: 9pt;">추천 : <%=dto.getRbLike() %></span>
					<span style="font-size: 9pt;">비추천 : <%=dto.getRbDislike() %></span>
				</td>
			</tr>
			
			<tr>
				<td colspan="2">
					<%=dto.getFbContent().replace("\n", "<br>") %>
				</td>
			</tr>
		</table>
		
		<div style="margin-left: 400px;">
			<button type="button" class="btn btn-default" onclick="location.href='reviewBoard_insert.jsp'">글쓰기</button>
			<button type="button" class="btn btn-default" onclick="location.href='reviewBoard_list.jsp'">목록</button>
			<button type="button" class="btn btn-default" onclick="location.href='freeBoard_update.jsp?rbNum=<%=dto.getRbNum() %>'">수정</button>
			<button type="button" class="btn btn-default" onclick="location.href='freeBoard_delete.jsp?rbNum=<%=dto.getRbNum() %>'">삭제</button>
		</div>
	</body>
</html>