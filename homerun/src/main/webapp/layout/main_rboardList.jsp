<%@page import="data.dto.ReviewBoardDto"%>
<%@page import="data.dao.ReviewBoardDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <title>HOMERUN | MAIN_RBLIST</title>
	    <script src="https://code.jquery.com/jquery-3.6.3.js"></script>
	    
	    <link href="../assets/css/style_index.css" rel="stylesheet">
	    
	    <script src="https://kit.fontawesome.com/8dcaa4675e.js" crossorigin="anonymous"></script>
    
    	<style type="text/css">
    		a {
    			text-decoration: none;
    			color: black;
    		}
    		
    		a:hover {
    			color : black;
    		}
    	</style>
	</head>
	
	<body>
	<%
	String root = request.getContextPath();
	
	%>
	
	<div class="fbList" style="width: 100%; height: 100%; border: 0px solid gray;">
		<div class="title" >
			<div style="float: left;">
				<b style="font-size: 1.4em;">후기게시판 최근게시글</b>
			</div>
			<div class="go" style="float: right;">			
				<a href="<%=root %>/reviewBoard/reviewBoard_listPage.jsp" style="text-decoration: none; color: black;">더보기&nbsp;<i class="fa-solid fa-angle-right"></i></a>
			</div>
		</div>
		
		<br><hr style="height: 5px;">
		
		<ul style="font-size: 1.2em;">
			<%				
				ReviewBoardDao rbDao = new ReviewBoardDao();
				List<ReviewBoardDto> list = rbDao.getAllRBs();
			
				int admin = rbDao.getAllmyRBs("admin");
				
				for(int i = admin; i < 5 + admin; i++) {
					ReviewBoardDto dto = list.get(i);				
			%>
					<li style="margin-bottom: 8px;"><a href="<%=root %>/reviewBoard/reviewPost_detailPage.jsp?rbNum=<%=dto.getRbNum() %>&currentPage=1" style="text-decoration: none; color: black;"><%=dto.getRbSubject() %></a></li>
			<%
				}
			%>
		</ul>
		
	</div>
	
	
	</body>
</html>